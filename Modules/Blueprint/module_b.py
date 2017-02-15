import os

CLASS_NAME = "ModuleB"

TITLE = "Module B"
DESCRIPTION = "Test description for module B"
ICON = os.environ["RIGGING_TOOL_ROOT"] + "/Icons/_hinge.xpm" #calling from os path

class ModuleB():
	def __init__(self):
		print "We 're the second constructor"
		
	def install(self):
		print "install" + CLASS_NAME