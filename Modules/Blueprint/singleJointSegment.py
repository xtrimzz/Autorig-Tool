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
	def __init__(self, userSpecifiedName):
		print "Derived class constructor"
		jointInfo = [["root_joint", [0.0, 0.0, 0.0]], ["end_joint",[4.0, 0.0,0.0]]]
		
		
		blueprintMod.Blueprint.__init__(self, CLASS_NAME, userSpecifiedName, jointInfo)
		
	def install_custom(self, joints):
		self.createOrientationControl(joints[0], joints[1])
		
	def lock_phase1(self):
		#Gather and return all required information from this module's control object
		
		#jointPositions = list of joint positions, from root down the hierarchy
		
		#jointOrientations = a list of orientations, or a list of axis information (orientJoint and secondaryAxisOrient for the joint cmd)
		#					#These are passed in the followint tuple: (orientations, None) or (None, axisInfo)
		#jointRotationOrders = a list of joint rotation orders (integers values gathered with getAttr)
		#jointPreferredAngles = a list of joint prefered angles, optional (can pass None)
		#hookObject = self.findHookObjectForLock()
		#rootTransform = a bool, either True or False. True =R, T and S on root joint. False = R only.
		#
		#moduleInfo = (jointPositions, jointOrientations, jointRotationOrders, jointPreferredAngles, hookObject, rootTransform)
		#return moduleInfo
		
		jointPositions = []
		jointOrientationValues = []
		jointRotationOrders = []
		
		joints = self.getJoints()
		
		for joint in joints:
			jointPositions.append(cmds.xform(joint,q=True, worldSpace=True, translation=True))
		
		cleanParent = self.moduleNamespace+":joints_grp"
		orientationInfo = self.orientationControlledJoint_getOrientation(joints[0], cleanParent)
		cmds.delete(orientationInfo[1])
		jointOrientationValues.append(orientationInfo[0])
		jointOrientations =(jointOrientationValues, None)
		
		jointRotationOrders.append(cmds.getAttr(joints[0]+".rotateOrder"))
		
		jointPreferredAngles = None
		hookObject = None
		rootTransform = False
		
		moduleInfo = (jointPositions, jointOrientations, jointRotationOrders, jointPreferredAngles, hookObject, rootTransform)
		return moduleInfo