import os
import maya.cmds as cmds
import System.blueprint as blueprintMod
reload(blueprintMod)

#Each module must have a unique class name
CLASS_NAME = "SingleJointSegment"

TITLE = "Single Joint Segment"
DESCRIPTION = "Create 2 joints, with control for ls joint's orientation and rotation order. Ideal us: clavicle bone/Shoulder "
ICON = os.environ["RIGGING_TOOL_ROOT"] + "/Icons/_singleJointSeg.xpm" #calling from os path

class SingleJointSegment(blueprintMod.Blueprint):
	def __init__(self, userSpecificName):
		print "Derived class constructor"
		jointInfo = [["root_joint", [0.0, 0.0, 0.0]], ["end_joint",[4.0, 0.0,0.0]]]
		
		blueprintMod.Blueprint.__init__(self, CLASS_NAME, userSpecificName, jointInfo)
		
	def install_custom(self, joints):
		self.createOrientationControl(joints[0], joints[1])