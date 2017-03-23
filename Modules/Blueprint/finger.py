import os
import maya.cmds as cmds
import System.blueprint as blueprintMod
reload(blueprintMod)

import System.utils as utils
reload(utils)


CLASS_NAME = "Finger"

TITLE = "Finger"
DESCRIPTION = "Create 5 joints, defining a finger. Ideal use: finger"
ICON = os.environ["RIGGING_TOOL_ROOT"] + "/Icons/_finger.xpm"

class Finger(blueprintMod.Blueprint):

	def __init__(self, userSpecifiedName, hookObject):
		jointInfo = [["root_joint", [0.0,0.0,0.0]], ["knuckle_1_joint", [4.0,0.0,0.0]], ["knuckle_2_joint", [8.0,0.0,0.0]], ["knuckle_3_joint", [12.0,0.0,0.0]], ["end_joint", [16.0,0.0,0.0]]] 
		
		blueprintMod.Blueprint.__init__(self, CLASS_NAME, userSpecifiedName, jointInfo, hookObject)
		
	def install_custom(self, joints):
		for i in range(len(joints) -1):
			cmds.setAttr(joints[i]+".rotateOrder", 3) #xyz
			
			self.createOrientationControl(joints[i], joints[i+1])
			
			paControl = self.createPreferredAngleRepresentation(joints[i], self.getTranslationControl(joints[i]), childOfOrientationControl=True)
			cmds.setAttr(paControl+".axis", 3) # -veZ
		if not self.mirrored:
			cmds.setAttr(self.moduleNamespace+":module_transform.globalScale", 0.25)
			
	def mirror_custom(self, originalModule):
		for i in range(len(self.jointInfo) - 1):
			jointName = self.jointInfo[i][0]
			originalJoint = originalModule+":"+jointName
			newJoint = self.moduleNamespace+":"+jointName
			
			originalOrientationControl = self.getOrientationControl(originalJoint)
			newOrientationControl = self.getOrientationControl(newJoint)
			
			cmds.setAttr(newOrientationControl+".rotateX", cmds.getAttr(originalOrientationControl+".rotateX"))
			
			originalPreferredAngleControl = self.getPreferredAngleControl(originalJoint)
			newPrefferedAngleControl = self.getPreferredAngleControl(newJoint)
			
			cmds.setAttr(newPrefferedAngleControl+".axis", cmds.getAttr(originalPreferredAngleControl+".axis"))
			
		
	def UI_custom(self):
		joints = self.getJoints()
		joints.pop()
		
		for joint in joints:
			self.createRotationOrderUIControl(joint)
			
		for joint in joints:
			self.createPreferredAngleUIControl(self.getPreferredAngleControl(joint))
			