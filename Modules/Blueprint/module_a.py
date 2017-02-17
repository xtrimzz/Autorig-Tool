'''
1.the prev joint reorient itself to point to the next joint
2.When created with command:
	i. we create first joint
	ii. we create the second joint
	iii. then we tell them to joint to each other
'''

import os
import maya.cmds as cmds
import System.utils as utils
reload(utils)

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
		
		self.containerName = self.moduleNamespace + "module_container"
		
		self.jointInfo = [ ["root_joint", [0.0, 0.0, 0.0]], ["hinge_joint",[4.0, 0.0, 0.0]],["shin_joint", [9.0, 0.0, 0.0]], ["butt_joint",[10.0, 0.0, 0.0]] ]
		
		
		
	def install(self):
		cmds.namespace(setNamespace=":")
		cmds.namespace(add=self.moduleNamespace)
		
		#Two joints created with one parented to the other
		
		#Creating a joint group for organizational purpose
		self.jointsGrp = cmds.group(empty=True, name=self.moduleNamespace+":joints_grp")
		self.moduleGrp = cmds.group(self.jointsGrp, name=self.moduleNamespace+":module_grp")
		
		cmds.container(name=self.containerName, addNode=self.moduleGrp, ihb=True)
		
		cmds.select(clear=True)
		
		#joint info
		index = 0
		joints = []
		
		#list of joints containing the entire name
		for joint in self.jointInfo:
			jointName = joint[0]
			jointPos = joint[1]
			
			
			parentJoint = ""
			#if not at root joint
			if index > 0:
				parentJoint = self.moduleNamespace+":" +self.jointInfo[index-1][0]
				cmds.select(parentJoint, replace=True)
				
			jointName_full = cmds.joint(n=self.moduleNamespace+":"+jointName, p=jointPos)
			joints.append(jointName_full)
			
			utils.addNodeToContainer(self.containerName, jointName_full)
			
			cmds.container(self.containerName, edit=True, publishAndBind=[jointName_full+".rotate", jointName+"_R"])
			cmds.container(self.containerName, edit=True, publishAndBind=[jointName_full+".rotateOrder", jointName+"_rotateOrder"])
			
			if index > 0:
				#sao --> second axis orient , yup --> Y up poositive
				cmds.joint(parentJoint, edit=True, orientJoint="xyz", sao="yup")
			
			
			index+= 1
		#end for loop
		
		#lock the parent joint	
		cmds.parent(joints[0], self.jointsGrp, absolute=True)
		
		translationControls = []
		for joint in joints:
			translationControls.append(self.createTranslationControlAtJoint(joint))
			
		rootJoint_pointConstraint = cmds.pointConstraint(translationControls[0], joints[0], maintainOffset=False, name=joints[0]+"_[pointConstraint")
		utils.addNodeToContainer(self.containerName, rootJoint_pointConstraint)
		
		##Setup stretchy joint segments
		for index in range(len(joints) - 1):
			self.setupStretchyJointSegment(joints[index], joints[index+1])
		
		utils.forceSceneUpdate()
		
		cmds.lockNode(self.containerName, lock=True, lockUnpublished=True) 
		
		
	def createTranslationControlAtJoint(self,joint):
		#import the file
		posControlFile = os.environ["RIGGING_TOOL_ROOT"] + "/ControlObjects/Blueprint/translation_control.ma"
		cmds.file(posControlFile, i=True) 
		
		container = cmds.rename("translation_control_container", joint+"translation_control_container")
		utils.addNodeToContainer(self.containerName, container)
		
		for node in cmds.container(container, q=True, nodeList=True):
			cmds.rename(node, joint+"_"+node, ignoreShape=True)
			
		control = joint+ "_translation_control"
		
		jointPos = cmds.xform(joint, q=True, worldSpace=True, translation=True)	
		cmds.xform(control, worldSpace=True, absolute=True, translation=jointPos)
		
		niceName = utils.stripLeadingNamespace(joint)[1]
		attrName = niceName + "_T"
		
		cmds.container(container, edit=True, publishAndBind =[control+".translate", attrName])
		cmds.container(self.containerName, edit=True, publishAndBind=[container+"."+attrName, attrName])
		
		return control
		
	
	
	def getTranslationControl(self, jointName):
		return jointName + "_translation_control"
		
	def setupStretchyJointSegment(self, parentJoint, childJoint):
		parentTranslationControl = self.getTranslationControl(parentJoint)
		childTranslationControl = self.getTranslationControl(childJoint)
		
		poleVectorLocator = cmds.spaceLocator(n=parentTranslationControl+"_poleVectorLocator")[0]
		poleVectorLocatorGrp = cmds.group(poleVectorLocator, n=poleVectorLocator+"_parentConstraintGrp")
		
		cmds.parent(poleVectorLocatorGrp, self.moduleGrp, absolute=True)
		parentConstraint = cmds.parentConstraint(parentTranslationControl, poleVectorLocatorGrp,maintainOffset=False)[0]
		
		cmds.setAttr(poleVectorLocator+".visibility", 0)
		
		cmds.setAttr(poleVectorLocator+".ty", -0.5)
		
		
		ikNodes = utils.basic_stretchy_IK(parentJoint, childJoint, container=self.containerName, lockMinimumLength=False, poleVectorObject=poleVectorLocator, scaleCorrectionAttribute=None)
		ikHandle = ikNodes["ikHandle"]
		rootLocator = ikNodes["rootLocator"]
		endLocator = ikNodes["endLocator"]
		
		childPointConstraint = cmds.pointConstraint(childTranslationControl, endLocator, maintainOffset=False, n=endLocator+"_pointConstraint")[0]
		
		utils.addNodeToContainer(self.containerName, [ poleVectorLocatorGrp, parentConstraint, childPointConstraint], ihb=True)
		
		for node in [ikHandle, rootLocator, endLocator]:
			cmds.parent( node, self.jointsGrp, absolute=True)
			cmds.setAttr(node+".visibility", 0)