'''
1.the prev joint reorient itself to point to the next joint
2.When created with command:
	i. we create first joint
	ii. we create the second joint
	iii. then we tell them to joint to each other
'''

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
		
		self.containerName = self.moduleNamespace + "module_container"
		
		self.jointInfo = [ ["root_joint", [0.0, 0.0, 0.0]], ["end_joint",[4.0, 0.0, 0.0]] ]
		
		
		
	def install(self):
		cmds.namespace(setNamespace=":")
		cmds.namespace(add=self.moduleNamespace)
		'''
			Two joints created with one parented to the other
		'''
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
			
			cmds.container(self.containerName, edit=True, addNode=jointName_full)
			
			cmds.container(self.containerName, edit=True, publishAndBind=[jointName_full+".rotate", jointName+"_R"])
			cmds.container(self.containerName, edit=True, publishAndBind=[jointName_full+".rotateOrder", jointName+"_rotateOrder"])
			
			if index > 0:
				#sao --> second axis orient , yup --> Y up poositive
				cmds.joint(parentJoint, edit=True, orientJoint="xyz", sao="yup")
			
			
			index+= 1
		#end for loop
		
		#lock the parent joint	
		cmds.parent(joints[0], self.jointsGrp, absolute=True)
			
		cmds.lockNode(self.containerName, lock=True, lockUnpublished=True) 