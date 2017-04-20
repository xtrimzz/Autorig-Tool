import maya.cmds as cmds
import System.utils as utils
reload(utils)

from functools import partial

class ModuleMaintenance:
	def __init__(self, shelfTool_inst):
		self.shelfTool_instance = shelfTool_inst
		self.UIElements = {}
		
	def setModuleMaintenanceVisibility(self, vis=True):
		characters = utils.findInstalledCharacters()
		
		for c in characters:
			characterContainer = c+":character_container"
			cmds.lockNode(characterContainer, lock=False, lockUnpublished=False)
			
			characterGroup = c+":character_grp"
			cmds.setAttr(characterGroup+".moduleMaintenanceVisibility", vis)
			
			cmds.lockNode(characterContainer, l=True, lu=True)
			
	def objectSelected(self):
		objects = cmds.ls(selection=True)
		
		cmds.select(clear=True)
		
		if cmds.window("modMaintain_UI_window", exists=True):
			cmds.deleteUI("modMaintain_UI_window")
			
		characters = utils.findInstalledCharacters()
		
		for character in characters:
			characterContainer = character + ":character_container"
			cmds.lockNode(characterContainer, lock=False, lockUnpublished=False)
			
			blueprintInstances = utils.findInstalledBlueprintInstances(character)
			
			for blueprintInstance in blueprintInstances:
				moduleContainer = character+":"+blueprintInstance+":module_container"
				cmds.lockNode(moduleContainer, lock=False, lockUnpublished=False)
				
				blueprintJointsGrp = character+":"+blueprintInstance+":blueprint_joints_grp"
				
				if cmds.getAttr(blueprintJointsGrp+".controlModulesInstalled"):
					#blue
					cmds.setAttr(blueprintJointsGrp+".overrideColor", 6)
				else:
					cmds.setAttr(blueprintJointsGrp+".overrideColor", 2)
				
				cmds.lockNode(moduleContainer, lock=True, lockUnpublished=True)
				
			cmds.lockNode(characterContainer, lock=True, lockUnpublished=True)
			
		
		if len(objects) > 0:
			lastSelected = objects[len(objects)-1]
			
			lastSelected_scripNamespaces = utils.stripAllNamespaces(lastSelected)
			
			if lastSelected_scripNamespaces != None:
				lastSelected_withoutNamespaces = lastSelected_scripNamespaces[1]
				
				if lastSelected_withoutNamespaces.find("blueprint_") == 0:
					blueprintModuleNamespace_incCharNamespace = lastSelected_scripNamespaces[0]
					moduleContainer = blueprintModuleNamespace_incCharNamespace + ":module_container"
					cmds.select(moduleContainer, replace=True)
					
					characterNamespace = utils.stripLeadingNamespace(lastSelected)[0]
					
					characterContainer = characterNamespace + ":character_container"
					
					containers = [characterContainer, moduleContainer]
					for container in containers:
						cmds.lockNode(container, lock=False, lockUnpublished=False)
						
					blueprintJointsGrp = blueprintModuleNamespace_incCharNamespace+":blueprint_joints_grp"
					cmds.setAttr(blueprintJointsGrp+".overrideColor", 13)
					
					self.createUserInterface(blueprintModuleNamespace_incCharNamespace)
					
					for container in containers:
						cmds.lockNode(container, lock=True, lockUnpublished=True)
						
		self.setupSelectionScriptJob()
		
	def setupSelectionScriptJob(self):
		scriptJobNum = cmds.scriptJob(event=["SelectionChanged", self.objectSelected], runOnce=True, killWithScene=True)
		self.shelfTool_instance.setScriptJobNum(scriptJobNum)
		
	def disableSelectionScriptJob(self):
		scriptJobNum = self.shelfTool_instance.getScriptJobNum()
		self.shelfTool_instance.setScriptJobNum(None)
		if cmds.scriptJob(exists=scriptJobNum):
			cmds.scriptJob(kill=scriptJobNum)
			
	def createUserInterface(self, blueprintModule):
		self.currentBlueprintModule = blueprintModule
		characterNamespaceInfo = utils.stripLeadingNamespace(blueprintModule)
		characterNamespace = characterNamespaceInfo[0]
		blueprintModuleNamespace = characterNamespaceInfo[1]
		
		characterName = characterNamespace.partition("__")[2]
		
		blueprintModuleInfo = blueprintModuleNamespace.partition("__")
		
		blueprintModuleName = blueprintModuleInfo[0]
		blueprintModuleUserSpecifiedName = blueprintModuleInfo[2]
		
		windowWidth=600
		windowHeight=200
		self.UIElements["window"] = cmds.window("modMaintain_UI_window", width=windowWidth, height=windowHeight, title="Module maintenance for "+characterName+":"+blueprintModuleUserSpecifiedName,sizeable=False)
		self.UIElements["topRowLayout"] = cmds.rowLayout(nc=2, columnWidth2=(296,296), columnAttach2=("both","both"), columnOffset2=(10, 10), rowAttach=([1,"both", 5],[2, "both", 5]))
		self.UIElements["controlModule_textScrollList"] = cmds.textScrollList()
		self.UIElements["right_columnLayout"] = cmds.columnLayout(adj=True, rs=3)
		self.UIElements["nameText"] = cmds.text(label="")
		self.UIElements["descriptionScrollField"] = cmds.scrollField(wordWrap=True, height=110, editable=False, text="")
		
		cmds.separator()
		self.UIElements["installBtn"] = cmds.button(enable=False, label="Install")
		
		if cmds.textScrollList(self.UIElements["controlModule_textScrollList"], q=True, numberOfItems=True) != 0:
			cmds.textScrollList(self.UIElements["controlModule_textScrollList"], edit=True, selectIndexedItem=1)
		
		
		
		cmds.showWindow(self.UIElements["window"])