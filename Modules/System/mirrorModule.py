import maya.cmds as cmds

import System.utils as utils
reload(utils)

class MirrorModule:
	def __init__(self):
		selection = cmds.ls(selection=True, transforms=True)
		if len(selection) == 0:
			return
			
		firstSelected = selection[0]
		
		self.modules = []
		self.group = None
		if firstSelected.find("Group__") == 0:
			self.group = firstSelected
			self.modules = self.findSubModules(firstSelected)
		else:
			moduleNamespaceInfo = utils.stripLeadingNamespace(firstSelected)
			if moduleNamespaceInfo != None:
				self.modules.append(moduleNamespaceInfo[0])
				
		tempModuleList = []
		for module in self.modules:
			if self.isModuleMirror(module):
				cmds.confirmDialog(title="Mirror Module(s)", message="cannot mirror a previously mirrored module, aborting mirror.", button=["Accept"], defaultButton="Accept")
				return
			
			if not self.canModuleBeMirrored(module):
				print "Module \""+ module + "\" is of a module type that cannot be mirrored.. skipping module."
			else:
				tempModuleList.append(module)
				
		self.modules = tempModuleList
		
		if len(self.modules) > 0:
			self.mirrorModule_UI()
				
			
	def findSubModules(self, group):
		returnModules = []
		
		children = cmds.listRelatives(group, children=True)
		children = cmds.ls(children, transforms=True)
		
		for child in children:
			if child.find("Group__") == 0:
				returnModules.extend(self.findSubModules(child))
			else:
				namespaceInfo = utils.stripAllNamespaces(child)
				if namespaceInfo != None and namespaceInfo[1] == "module_transform":
					module = namespaceInfo[0]
					returnModules.append(module)
					
		return returnModules
		
	
	def isModuleMirror(self, module):
		moduleGrp = module+":module_grp"
		return cmds.attributeQuery("mirrorLinks", node=moduleGrp, exists=True)
		
	def canModuleBeMirrored(self, module):
		moduleNameInfo = utils.findAllModuleNames("/Modules/Blueprint")
		validModules = moduleNameInfo[0]
		validModuleNames = moduleNameInfo[1]
		
		moduleName = module.partition("__")[0]
		
		if not moduleName in validModuleNames:
			return False
			
		index = validModuleNames.index(moduleName)
		mod = __import__("Blueprint."+validModules[index],{},{},validModules[index])
		reload(mod)
		
		moduleClass = getattr(mod, mod.CLASS_NAME)
		moduleInst = moduleClass("null", None)
		
		return moduleInst.canModuleBeMirrored()
		
	def mirrorModule_UI(self):
		self.moduleNames = []
		for module in self.modules:
			self.moduleNames.append(module.partition("__")[2])
			
		self.sameMirrorSettingsForAll = False
		if len(self.modules) > 1:
			result = cmds.confirmDialog(title="Mirror Multiple Modules", message=str(len(self.modules)) + " modules selected for mirror. \nHow would you like to apply mirror settings?", button=["Same for All", "Individually","cancel"], defaultButton="Same for All", cancelButton="Cancel", dismissString="Cancel")
			
			if result == "Cancel":
				return
			
			if result == "Same for All":
				self.sameMirrorSettingsForAll = True
				
		self.UIElements = {}
		
		if cmds.window("mirrorModule_UI_window", exists=True):
			cmds.deleteUI("mirrorModule_UI_window")
			
		windowWidth = 300
		windowHeight = 400
		self.UIElements["window"] = cmds.window("mirrorModule_UI_window", width=windowWidth, height=windowHeight, title="Mirror Modules(s)", sizeable=False)
		
		self.UIElements["scrollLayout"] = cmds.scrollLayout(hst=0)
		self.UIElements["topColumnLayout"] = cmds.columnLayout(adj=True, rs=3)
		
		scrollWidth = windowWidth 
    
		mirrorPlane_textWidth = 160
		mirrorPlane_columnWidth = (scrollWidth - mirrorPlane_textWidth)/3
		self.UIElements["mirrorPlane_rowColumn"] = cmds.rowColumnLayout(nc=4,columnAttach=(1,"right",0), columnWidth=[(1,mirrorPlane_textWidth), (2, mirrorPlane_columnWidth),(3, mirrorPlane_columnWidth),(4 , mirrorPlane_columnWidth)])
		
		cmds.text(label="Mirror Plane:")
		self.UIElements["mirrorPlane_radioCollection"] = cmds.radioCollection()
		cmds.radioButton("XY", label="XY", select=False)
		cmds.radioButton("YZ", label="YZ", select=True)
		cmds.radioButton("XZ", label="XZ", select=False)
		
		cmds.setParent(self.UIElements["topColumnLayout"])
		cmds.separator()
		
		cmds.text(label="Mirrored Name(s):")
		
		columnWidth = scrollWidth/2
		self.UIElements["moduleName_rowColumn"] = cmds.rowColumnLayout(nc=2, columnAttach=(1, "right", 0),columnWidth=[(1, columnWidth),(2, columnWidth)])
		for module in self.moduleNames:
			cmds.text(label = module + " >> ")
			self.UIElements["moduleName_"+module] = cmds.textField(enable=True, text= module + "_mirror")
				
		cmds.showWindow(self.UIElements["window"])
		
			
			
			