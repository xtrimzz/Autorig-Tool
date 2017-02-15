import os
import maya.cmds as cmds
#Each module must have a unique class name
CLASS_NAME = "ModuleA"

TITLE = "Module A"
DESCRIPTION = "Test description for module A"
ICON = os.environ["RIGGING_TOOL_ROOT"] + "/Icons/_hand.xpm" #calling from os path

class ModuleA():
	def __init__(self, userSpecifiedName):
		self.moduleName = CLASS_NAME
		self.userSpecifiedName = userSpecifiedName
		
		self.moduleNamespace = self.moduleName + "__" + self.userSpecifiedName
		print self.moduleNamespace
		
	def install(self):
		cmds.namespace(setNamespace=":")
		cmds.namespace(add=self.moduleNamespace)