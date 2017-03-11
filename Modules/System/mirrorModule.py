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
		print self.modules