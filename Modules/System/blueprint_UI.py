import maya.cmds as cmds

from functools import partial

import System.utils as utils
reload(utils)

class Blueprint_UI:
	def __init__(self):
		#Store UI elements in a dictionary
		self.UIElements = {}
		
		#check if a window exits before delete and recreate
		if cmds.window("givas_UI_window", exists = True):
			cmds.deleteUI("givas_UI_window")
			
		#create the window
		windowWidth = 400
		windowHeight = 500
		
		self.UIElements["window"] = cmds.window("givas_UI_window",width = windowWidth, height = windowHeight, title="Blueprint Module UI", sizeable = False)
		
		#create layout
		self.UIElements["topLevelColumn"] = cmds.columnLayout( adjustableColumn = True, columnAlign ="center")
		
		#Setup tabs
		tabHeight = 500
		self.UIElements["tabs"] = cmds.tabLayout(height = tabHeight, innerMarginWidth = 5,innerMarginHeight = 5)
		
		tabWidth = cmds.tabLayout(self.UIElements["tabs"], q=True, width = True)
		self.scrollWidth = tabWidth - 40
		
		self.initializeModuleTab(tabHeight, tabWidth)
		
		cmds.tabLayout(self.UIElements["tabs"], edit = True, tabLabelIndex=([1, "Modules"]))
		
		#display window
		cmds.showWindow( self.UIElements["window"] )
		
		
	def initializeModuleTab(self, tabHeight, tabWidth):
		scrollHeight = tabHeight #temp values
		
		#will contain all the controls and buttons
		self.UIElements["moduleColumn"] = cmds.columnLayout(adj=True, rs=3)
		
		self.UIElements["moduleFrameLayout"] = cmds.frameLayout(height=scrollHeight, collapsable=False, borderVisible=False)
		
		self.UIElements["moduleList_Scroll"] = cmds.scrollLayout(hst=0)
		
		self.UIElements["moduleList_column"] = cmds.columnLayout(columnWidth = self.scrollWidth, adj=True, rs=2)
		
		# First separator
		cmds.separator()
		
		#search for all modules and list the names
		
		for module in utils.findAllModules("Modules/Blueprint"):
			self.createModuleInstallButton(module)
			cmds.setParent(self.UIElements["moduleList_column"])
			cmds.separator()
		#create a separator	
		cmds.setParent(self.UIElements["moduleColumn"])
		cmds.separator()
		
		 
	def createModuleInstallButton(self, module):
		mod = __import__("Blueprint."+module, {}, {}, [module])
		reload(mod)
		
		title = mod.TITLE
		description = mod.DESCRIPTION
		icon = mod.ICON
		
		#Create UI
		buttonSize = 50
		row = cmds.rowLayout(numberOfColumns=2, columnWidth=([1,buttonSize]), adjustableColumn=2, columnAttach=([1, "both", 0],[2, "both", 5]) )
		
		self.UIElements["module_button_"+module] = cmds.symbolButton(width=buttonSize, height=buttonSize, image=icon, command=partial(self.installModule, module))
		
		textColumn = cmds.columnLayout(columnAlign="center")
		cmds.text(align="center", width=300, label=title)
		
		cmds.scrollField(text=description, editable=False, width=300, height=70, wordWrap=True)
	
	
	def installModule(self, module, *args):
		basename = "instance_"
		
		#set namespace equals to root
		cmds.namespace(setNamespace=":") 
		namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		
		# if any contains "__" we want to delete
		for i in range(len(namespaces)):
			#if found
			if namespaces[i].find("__") != -1:
				namespaces[i] = namespaces[i].partition("__")[2]
				
		newSuffix = utils.findHighestTrailingNumber(namespaces,basename) + 1
		
		userSpecName = basename + str(newSuffix)
		
		#print userSpecName 
	
		mod =__import__("Blueprint."+module,{},{}, [module])
		reload(mod)
		
		moduleClass = getattr(mod, mod.CLASS_NAME)
		moduleInstance = moduleClass(userSpecName)
		moduleInstance.install()
		
		#Select the module outline and Make move Tool ACTIVE
		moduleTransform = mod.CLASS_NAME + "__" + userSpecName + ":module_transform"
		cmds.select(moduleTransform, replace=True)
		cmds.setToolTo("moveSuperContext")
		