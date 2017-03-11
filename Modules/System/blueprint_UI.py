import maya.cmds as cmds

from functools import partial

import System.utils as utils
reload(utils)

class Blueprint_UI:
	def __init__(self):
		
		self.moduleInstance = None
		
		#Store UI elements in a dictionary
		self.UIElements = {}
		
		#check if a window exits before delete and recreate
		if cmds.window("blueprint_UI_window", exists = True):
			cmds.deleteUI("blueprint_UI_window")
			
		#create the window
		windowWidth = 400
		windowHeight = 500
		
		self.UIElements["window"] = cmds.window("blueprint_UI_window",width = windowWidth, height = windowHeight, title="Blueprint Module UI", sizeable = True)
		
		#create layout
		self.UIElements["topLevelColumn"] = cmds.columnLayout( adjustableColumn = True, columnAlign ="center")
		
		#Setup tabs
		tabHeight = 500
		self.UIElements["tabs"] = cmds.tabLayout(height = tabHeight, innerMarginWidth = 5,innerMarginHeight = 5)
		
		tabWidth = cmds.tabLayout(self.UIElements["tabs"], q=True, width = True)
		self.scrollWidth = tabWidth - 50
		
		self.initializeModuleTab(tabHeight, tabWidth)
		
		cmds.tabLayout(self.UIElements["tabs"], edit = True, tabLabelIndex=([1, "Modules"]))
		
		
		cmds.setParent(self.UIElements["topLevelColumn"])
		self.UIElements["lockPulishColumn"] = cmds.columnLayout(adj=True, columnAlign="center", rs=3)
		
		cmds.separator()
		self.UIElements["lockBtn"] = cmds.button(label="Lock", c=self.lock)
		cmds.separator()
		self.UIElements["publishBtn"] = cmds.button(label="Publish")
		cmds.separator()
		
		
		#display window
		cmds.showWindow( self.UIElements["window"] )
		
		self.createScriptJob()
		
	def createScriptJob (self):
		self.jobNum = cmds.scriptJob(event=["SelectionChanged", self.modifySelected], runOnce=True,  parent=self.UIElements["window"])
		
	def deleteScriptJob(self):
		cmds.scriptJob(kill=self.jobNum)
		
	def initializeModuleTab(self, tabHeight, tabWidth):
		moduleSpecific_scrollHeight = 160
		#scrollHeight = tabHeight - moduleSpecific_scrollHeight -160
		scrollHeight = 150 #tabHeight temp value
		
		#will contain all the controls and buttons
		self.UIElements["moduleColumn"] = cmds.columnLayout(adj=True, rs=3)
		
		self.UIElements["moduleFrameLayout"] = cmds.frameLayout(height=scrollHeight, collapsable=False, borderVisible=False, label="Framer_v0.1")
		
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
		
		self.UIElements["moduleName_row"] = cmds.rowLayout(nc=2, columnAttach=(1, "right", 0), columnWidth=[(1, 80)], adjustableColumn=2)
		cmds.text(label="Module Name :")
		self.UIElements["moduleName"] = cmds.textField(enable=False, alwaysInvokeEnterCommandOnReturn=True, enterCommand=self.renameModule)
		
		cmds.setParent(self.UIElements["moduleColumn"])
		
		#Make the width of the buttons to fit into 3 columnAlign
		columnWidth = tabWidth + 20 #(tabWidth - 20) / 3
		self.UIElements["moduleButtons_rowColumn"] = cmds.rowColumnLayout(numberOfColumns=3, ro=[(1, "both", 2),(2, "both", 2), (3, "both", 2)], columnAttach=[ (1, "both", 3),(2,"both", 3),(3,"both",3)], columnWidth=[(1,columnWidth),(2, columnWidth),(3, columnWidth)] )
		
		self.UIElements["rehookBtn"] = cmds.button(enable=False, label="Re-hook", c=self.rehookModule_setup )
		self.UIElements["snapRootBtn"] = cmds.button(enable=False, label="Snap Root > Hook", c=self.snapRootToHook)
		self.UIElements["constrainRootBtn"] = cmds.button(enable=False, label="Constrain Root > Hook", c=self.constrainRootToHook)
		
		self.UIElements["groupSelectedBtn"] = cmds.button(label="Group Selected", c=self.groupSelected)
		self.UIElements["ungroupBtn"] = cmds.button(enable=False, label="Ungroup", c=self.ungroupSelected)
		self.UIElements["mirrorModuleBtn"] = cmds.button(enable=False, label="Mirror Module",  c=self.mirrorSelection)
		
		cmds.text(label="")
		self.UIElements["deleteModuleBtn"] = cmds.button(enable=False, label="Delete")
		self.UIElements["symmetryMoveCheckBox"] = cmds.checkBox(enable=True, label="Symmetry Move")
		
		cmds.setParent(self.UIElements["moduleColumn"])
		cmds.separator()
		
		self.UIElements["moduleSpecificRowColumnLayout"] = cmds.rowColumnLayout(nr=1, rowAttach=[1, "both", 0], rowHeight=[1,moduleSpecific_scrollHeight], )
		self.UIElements["moduleSpecific_Scroll"] = cmds.scrollLayout(hst=0)
		self.UIElements["moduleSpecific_column"] = cmds.columnLayout(columnWidth=400, columnAttach=["both", 5], rs=2)
		cmds.setParent(self.UIElements["moduleColumn"])
		cmds.separator()
		
		 
	def createModuleInstallButton(self, module):
		mod = __import__("Blueprint."+module, {}, {}, [module])
		reload(mod)
		
		title = mod.TITLE
		description = mod.DESCRIPTION
		icon = mod.ICON
		
		#Create UI
		buttonSize = 64
		row = cmds.rowLayout(numberOfColumns=2, columnWidth=([1,buttonSize]), adjustableColumn=2, columnAttach=([1, "both", 0],[2, "both", 5]) )
		
		self.UIElements["module_button_"+module] = cmds.symbolButton(width=buttonSize, height=buttonSize, image=icon, command=partial(self.installModule, module))
		
		textColumn = cmds.columnLayout(columnAlign="center")
		cmds.text(align="center", width=300, label=title)
		
		cmds.scrollField(text=description, editable=False, width=300, height=50, wordWrap=True)
	
	
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
		
		hookObj = self.findHookObjectFromSelection()
	
		mod =__import__("Blueprint."+module,{},{}, [module])
		reload(mod)
		
		moduleClass = getattr(mod, mod.CLASS_NAME)
		moduleInstance = moduleClass(userSpecName, hookObj)
		moduleInstance.install()
		
		#Select the module outline and Make move Tool ACTIVE
		moduleTransform = mod.CLASS_NAME + "__" + userSpecName + ":module_transform"
		cmds.select(moduleTransform, replace=True)
		cmds.setToolTo("moveSuperContext")
	
	def lock(self, *args):
		result = cmds.confirmDialog(messageAlign="center", title="Lock Blueprints", message="The action of locking a character will convert the current blueprint modules to joints. \nThis action cannot be undone. \nModifications to the blueprint system cannot be made after this point. \n Do you want to continue?", button=["Accept", "Cancel"], defaultButton="Accept", cancelButton="Cancel", dismissString="Cancel")
		
		if result != "Accept":
			return
			
		moduleInfo = [] #store [module, userSpecifiedName] pairs
		
		cmds.namespace(setNamespace=":")
		namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		
		moduleNameInfo = utils.findAllModuleNames("/Modules/Blueprint")
		validModules = moduleNameInfo[0]
		validModuleNames = moduleNameInfo[1]
		
		for n in namespaces:
			splitString = n.partition("__")
			
			if splitString[1] != "":
				module = splitString[0]
				userSpecifiedName = splitString[2]
			
				if module in validModuleNames:
					index = validModuleNames.index(module)
					moduleInfo.append([validModules[index], userSpecifiedName])
				
		if len(moduleInfo) ==  0:
			cmds.confirmDialog(messageAlign="center", title="Lock Blueprints", message="There appear to be no blueprint module \ninstances in the current scene. \nAborting lock", button=["Accept"], defaultButton="Accept")
			return
		
		moduleInstances = []
		for module in moduleInfo:
			mod = __import__("Blueprint."+module[0], {},{},module[0])
			reload(mod)
			
			moduleClass = getattr(mod, mod.CLASS_NAME)
			moduleInst = moduleClass(module[1], None)
			
			moduleInfo = moduleInst.lock_phase1()
			
			moduleInstances.append((moduleInst, moduleInfo))
			
		for module in moduleInstances:
			module[0].lock_phase2(module[1])
			
			
		groupContainer = "Group_container"
		if cmds.objExists(groupContainer):
			cmds.lockNode(groupContainer, lock=False, lockUnpublished=False)
			cmds.delete(groupContainer)
			
			
		for module in moduleInstances:
			hookObject = module[1][4]
			module[0].lock_phase3(hookObject)
			
	def modifySelected(self, *args):
			
			
			selectedNodes = cmds.ls(selection=True)
 			
			if len(selectedNodes) <= 1:
				self.moduleInstance = None
				selectedModuleNamespace = None
				currentModuleFile = None
				
				cmds.button(self.UIElements["ungroupBtn"], edit=True, enable=False)
				cmds.button(self.UIElements["mirrorModuleBtn"], edit=True, enable=False)
 				
				if len(selectedNodes) == 1:
					lastSelected = selectedNodes[0]
					
					if lastSelected.find("Group__") == 0:
						cmds.button(self.UIElements["ungroupBtn"], edit=True, enable=True)
						cmds.button(self.UIElements["mirrorModuleBtn"], edit=True, enable=True, label="Mirror Group")
 					
					namespaceAndNode = utils.stripLeadingNamespace(lastSelected)
					if namespaceAndNode != None:
						namespace = namespaceAndNode[0]
 						
						moduleNameInfo = utils.findAllModuleNames("/Modules/Blueprint")
						validModules = moduleNameInfo[0]
						validModuleNames = moduleNameInfo[1]
 						
						index = 0
						for moduleName in validModuleNames:
							moduleNameIncSuffix = moduleName + "__"
							if namespace.find(moduleNameIncSuffix) == 0:
								currentModuleFile = validModules[index]
								selectedModuleNamespace = namespace
								break
 							
							index += 1
 							 
				controlEnable = False
				userSpecifiedName = ""
				constrainCommand = self.constrainRootToHook 
				constrainLabel = "Constrain Root > Hook"
 				
				if selectedModuleNamespace != None:
					controlEnable = True
					userSpecifiedName = selectedModuleNamespace.partition("__")[2]
 					
					mod = __import__("Blueprint."+currentModuleFile, {},{}, [currentModuleFile])
					reload(mod)
					
					moduleClass = getattr(mod, mod.CLASS_NAME)
					self.moduleInstance = moduleClass(userSpecifiedName, None)
					
					cmds.button(self.UIElements["mirrorModuleBtn"], edit=True, enable=True, label="Mirror Module")
					
					
					if self.moduleInstance.isRootConstrained():
						constrainCommand = self.unconstrainRootFromHook
						constrainLabel = "Unconstrain Root"
					
				#cmds.button(self.UIElements["mirrorModuleBtn"], edit=True, enable=controlEnable)
				cmds.button(self.UIElements["rehookBtn"], edit=True, enable=controlEnable)
				cmds.button(self.UIElements["snapRootBtn"], edit=True, enable=controlEnable)
				cmds.button(self.UIElements["constrainRootBtn"], edit=True, enable=controlEnable, label=constrainLabel, c=constrainCommand )
				
				cmds.button(self.UIElements["deleteModuleBtn"], edit=True, enable=controlEnable, c=self.deleteModule)
				
				cmds.textField(self.UIElements["moduleName"], edit=True, enable=controlEnable, text=userSpecifiedName)
				
				self.createModuleSpecificControls()
			
			self.createScriptJob()
			
	def createModuleSpecificControls(self):
			existingControls = cmds.columnLayout(self.UIElements["moduleSpecific_column"], q=True, childArray=True)
			if existingControls != None:
				cmds.deleteUI(existingControls)
				
			cmds.setParent(self.UIElements["moduleSpecific_column"])
			
			if self.moduleInstance != None:
				self.moduleInstance.UI(self, self.UIElements["moduleSpecific_column"])
				
				
	def deleteModule(self, *args):
		self.moduleInstance.delete()
		cmds.select(clear=True)
	
	def renameModule(self, *args):
		newName = cmds.textField(self.UIElements["moduleName"], q=True, text=True)
		
		self.moduleInstance.renameModuleInstance(newName)
		
		previousSelection = cmds.ls(selection=True)
		
		if len(previousSelection) > 0:
			cmds.select(previousSelection, replace=True)
		else:
			cmds.select(clear=True)
		
	def findHookObjectFromSelection(self, *args):
		selectedObjects = cmds.ls(selection=True, transforms=True)
		
		numberOfObjects = len(selectedObjects)
		
		hookObj = None
		
		if numberOfObjects != 0:
			hookObj = selectedObjects[numberOfObjects - 1]
			
		return hookObj   
		
	def rehookModule_setup(self, *args):
		selectedNodes = cmds.ls(selection=True, transforms=True)
		if len(selectedNodes) == 2:
			newHook = self.findHookObjectFromSelection()
			self.moduleInstance.rehook(newHook)
		else:
			self.deleteScriptJob()
			
			currentSelection = cmds.ls(selection=True)
			
			cmds.headsUpMessage("Please select the joint you wish to rehook to. Clear selection to un-hook")
			
			cmds.scriptJob(event=["SelectionChanged", partial(self.rehookModule_callback, currentSelection)], runOnce=True )
			
	def rehookModule_callback(self, currentSelection):
		newHook = self.findHookObjectFromSelection()
		
		self.moduleInstance.rehook(newHook)
		
		if len(currentSelection) > 0:
			cmds.select(currentSelection, replace=True)
		else:
			cmds.select(clear=True)
			
		self.createScriptJob()
		
	def snapRootToHook(self, *args):
		self.moduleInstance.snapRootToHook()
		
	def constrainRootToHook(self, *args):
		self.moduleInstance.constrainRootToHook()
		
		cmds.button(self.UIElements["constrainRootBtn"], edit=True, label="Unconstrain Root", c=self.unconstrainRootFromHook)
		
	def unconstrainRootFromHook(self, *args):
		self.moduleInstance.unconstrainRootFromHook()
		
		cmds.button(self.UIElements["constrainRootBtn"], edit=True, label="Constrain Root > Hook", c=self.constrainRootToHook)
	
	def groupSelected(self, *args):
		import System.groupSelected as groupSelected
		reload(groupSelected)
		
		groupSelected.GroupSelected().show_UI()
		
		
	def ungroupSelected(self, *args):
		import System.groupSelected as groupSelected
		reload(groupSelected)
		
		groupSelected.UngroupSelected()
		
	def mirrorSelection(self, *args):
		import System.mirrorModule as mirrorModule
		reload(mirrorModule)
		mirrorModule.MirrorModule()
		