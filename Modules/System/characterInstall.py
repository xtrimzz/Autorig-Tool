import maya.cmds as cmds
import os
import System.utils as utils
reload(utils)

class InstallCharacter_UI:
	def __init__(self):
		characters = utils.findAllMayaFiles("/Characters")
		
		if len(characters) == 0:
			cmds.confirmDialog(title="Character Install", message="No published characters found, abort character Install", button=["Accept"], defaultButton="Accept")
			return
			
		self.UIElements = {}
		
		if cmds.window("installCharacter_UI_window", exists=True):
			cmds.deleteUI("installCharacter_UI_window")
		
		windowWidth = 320
		windowHeight = 190
		self.UIElements["window"] = cmds.window("installCharacter_UI_window", width=windowWidth, height=windowWidth, title="Install Character", sizeable=False)
		self.UIElements["topColumn"] = cmds.columnLayout(adj=True, columnOffset=["both", 5], rs=5)
		self.UIElements["characterList"] = cmds.textScrollList(nr=9, allowMultiSelection=False, append=characters, selectIndexedItem=1)
		cmds.separator()
		self.UIElements["newCharacterButton"] = cmds.button(label="Create New Character", command=self.installCharacter)
		cmds.separator()
		
		cmds.showWindow(self.UIElements["window"])
		
		
	def installCharacter(self, *args):
		characterName = cmds.textScrollList(self.UIElements["characterList"], q=True, selectItem=True)[0]
		characterFilename = os.environ["RIGGING_TOOL_ROOT"]+"/Characters/"+characterName + ".ma"
		baseNamespace = "Character__"+ characterName + "_"
		
		cmds.namespace(setNamespace=":")
		namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		highestSuffix = utils.findHighestTrailingNumber(namespaces, baseNamespace)
		highestSuffix+= 1
		
		characterNamespace = baseNamespace + str(highestSuffix)
		cmds.file(characterFilename, i=True, namespace=characterNamespace)
		
		cmds.deleteUI(self.UIElements["window"])
		
		