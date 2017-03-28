import os
import maya.cmds as cmds
import System.blueprint as blueprintMod
#reload(blueprintMod)

import Blueprint.singleOrientableJoint as singleOrientableJoint
reload(singleOrientableJoint)

import System.utils as utils
reload(utils)


CLASS_NAME = "RootTransform"
TITLE = "Root Transform"
DESCRIPTION = "Creates a single joint with control for position and orientation. Once created (locked) the joint can rotate, translate and scale. Ideal use: global/master control"
ICON = os.environ["RIGGING_TOOL_ROOT"] + "/Icons/_rootTxfrm.xpm"

class RootTransform(singleOrientableJoint.SingleOrientableJoint):

	def __init__ (self, userSpecifiedName, hookObject):
		jointInfo = [["joint", [0.0,0.0,0.0]]] 
		
		blueprintMod.Blueprint.__init__(self, CLASS_NAME, userSpecifiedName, jointInfo, hookObject)
		
		
	def lock_phase1(self):
		moduleInfo = list(singleOrientableJoint.SingleOrientableJoint.lock_phase1(self))
		moduleInfo[5] = True
		return moduleInfo
		