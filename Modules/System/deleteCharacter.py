import maya.cmds as cmds

import System.utils as utils
reload(utils)

class DeleteCharacter_ShelfTool:
	def __init__(self):
		character = self.findSelectedCharacter()
		
		if character == None:
			return
		
		niceName = character.partition("__")[2]
		result = cmds.confirmDialog(title="Delete Character", message="Are you sure you want to delete the character\""+niceName+"\"?\nCharacter deletion cannot be undone ", button=["Yes", "Cancel"], defaultButton="Yes", cancelButton="Cancel", dismissString="Cancel")
		
		if result == "Cancel":
			return
		
		characterContainer = character+":character_container"
		
		cmds.lockNode(characterContainer, lock=False, lockUnpublished=False)
		
		cmds.delete(characterContainer)
		
		cmds.namespace(setNamespace=character)
		blueprintNamespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		
		for blueprintNamespace in blueprintNamespaces:
			cmds.namespace(setNamespace=":")
			cmds.namespace(setNamespace=blueprintNamespace)
			
			moduleNamespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
			cmds.namespace(setNamespace=":")
			if moduleNamespaces != None:
				for moduleNamespace in moduleNamespaces:
					cmds.namespace(removeNamespace=moduleNamespace)
			
			cmds.namespace(removeNamespace=blueprintNamespace)
			
		cmds.namespace(removeNamespace=character)
		
		
	def findSelectedCharacter(self):
		selection = cmds.ls(selection=True, transforms=True)
		character = None
		
		if len(selection) > 0:
			selected = selection[0]
			
			selectedNamespaceInfo = utils.stripLeadingNamespace(selected)
			if selectedNamespaceInfo != None:
				selectedNamespace = selectedNamespaceInfo[0]
				if selectedNamespace.find("Character__") == 0:
					character = selectedNamespace
		
		return character
		
	