import os
import maya.cmds as cmds
import System.blueprint as blueprintMod
#reload(blueprintMod)

import System.utils as utils
reload(utils)


CLASS_NAME = "Spline"

TITLE = "Spline"
DESCRIPTION = "Create an optionally interpolating, joint-count adjustablee, spline.Ideal use: spine, neck/head, tails, tenticles ..."
ICON = os.environ["RIGGING_TOOL_ROOT"] + "/Icons/_spline.xpm"

class Spline(blueprintMod.Blueprint):

	def __init__(self, userSpecifiedName, hookObject, numberOfJoints=None, startJointPos=None, endJointPos=None):
		
		if numberOfJoints == None:
			jointsGrp = CLASS_NAME + "__" + userSpecifiedName + ":joints_grp"
			if not cmds.objExists(jointsGrp):
				numberOfJoints = 5 #default val
			else:
				joints = utils.findJointChain(jointsGrp)
				joints.pop()
				numberOfJoints = len(joints)
				
		jointInfo = []
		
		if startJointPos == None:
			startJointPos = [0.0, 0.0, 0.0]
			
		if endJointPos == None:
			endJointPos = [0.0, 15.0, 0.0]
			
		jointIncrement = list(endJointPos)
		
		jointIncrement[0] -= startJointPos[0]
		jointIncrement[1] -= startJointPos[1]
		jointIncrement[2] -= startJointPos[2]
		
		jointIncrement[0] /= (numberOfJoints - 1)
		jointIncrement[1] /= (numberOfJoints - 1)
		jointIncrement[2] /= (numberOfJoints - 1)
		
		jointPos = startJointPos
		
		for i in range(numberOfJoints):
			jointName = "spline_"+str(i)+"_joint"
			
			jointInfo.append([jointName, list(jointPos)])
			
			jointPos[0] += jointIncrement[0]
			jointPos[1] += jointIncrement[1]
			jointPos[2] += jointIncrement[2]
		
		blueprintMod.Blueprint.__init__(self, CLASS_NAME, userSpecifiedName, jointInfo, hookObject)
		
		self.canBeMirrored = False
		
	def install_custom(self, joints):
		self.setup_interpolation()
		
		moduleGrp = self.moduleNamespace + ":module_grp"
		cmds.select(moduleGrp)
		
		cmds.addAttr(at="enum", enumName="y:z", longName="sao_local")
		cmds.addAttr(at="enum", enumName="+x:-x:+y:-y:+z:-z", longName="sao_world")
		
		for attr in ["sao_local", "sao_world"]:
			cmds.container(self.containerName, edit=True, publishAndBind= [moduleGrp+"."+attr, attr])
		
	def setup_interpolation(self, unlockContainer=False, *args):
		previousSelection = cmds.ls(selection=True)
		
		if unlockContainer:
			cmds.lockNode(self.containerName, lock=False, lockUnpublished=False)
			
		joints = self.getJoints()
		numberOfJoints = len(joints)
		
		startControl = self.getTranslationControl(joints[0])
		endControl = self.getTranslationControl(joints[numberOfJoints - 1])
		
		pointConstraints = []
		
		for i in range(1, numberOfJoints - 1):
			material = joints[i] + "_m_translation_control"
			cmds.setAttr(material+".colorR", 0.815)
			cmds.setAttr(material+".colorG", 0.629)
			cmds.setAttr(material+".colorB", 0.498)
			
			translationControl = self.getTranslationControl(joints[i])
			
			endWeight = 0.0 + (float(i) / (numberOfJoints - 1))
			startWeight = 1.0 - endWeight
			
			pointConstraints.append(cmds.pointConstraint(startControl, translationControl, maintainOffset=False, weight=startWeight)[0])
			pointConstraints.append(cmds.pointConstraint(endControl, translationControl, maintainOffset=False, weight=endWeight)[0])
			
			for attr in [".translateX", ".translateY", ".translateZ"]:
				cmds.setAttr(translationControl+attr, lock=True)
				
		interpolationContainer = cmds.container(n=self.moduleNamespace+":interpolation_container")
		utils.addNodeToContainer(interpolationContainer, pointConstraints)
		utils.addNodeToContainer(self.containerName, interpolationContainer)
			
			
			
		if unlockContainer:
			cmds.lockNode(self.containerName, lock=True, lockUnpublished=True)
			
		if len (previousSelection) > 0:
			cmds.select(previousSelection, replace=True)
		
		else:
			cmds.select(clear=True)
			
	
	def UI_custom(self):
		cmds.rowLayout(nc=2, columnWidth=[1, 300], adj=2)
		cmds.text(label="Number of Joints :")
		numberOfJoints = len(self.jointInfo)
		self.numberOfJointsField = cmds.intField(value=numberOfJoints, min=2, changeCommand = self.changeNumberOfJoints)
		
		cmds.setParent("..")
		
		joints = self.getJoints()
		
		self.createRotationOrderUIControl(joints[0])
		
		cmds.separator()
		
		cmds.text(label="Orientation:", align="left")
		cmds.rowLayout(nc=3)
		cmds.attrEnumOptionMenu(attribute=self.moduleNamespace+":module_grp.sao_local", label="local:")
		cmds.text(label=" will be oriented to ")
		cmds.attrEnumOptionMenu(attribute=self.moduleNamespace+":module_grp.sao_world", label="World")
		
		cmds.setParent("..")
		
		cmds.separator()
		
		interpolating = False
		if cmds.objExists(self.moduleNamespace+":interpolation_container"):
			interpolating = True
			
		cmds.rowLayout(nc=2, columnWidth=[1, 100], adj=2)
		cmds.text(label="Interpolate:")
		cmds.checkBox(label="", value=interpolating, onc=partial(self.setup_interpolation, True), ofc=self.delete_interpolation)
		
	
	def delete_interpolation(self, *args):
		cmds.lockNode(self.containerName, lock=False, lockUnpublished=False)
		joints = self.getJoints()
		
		for i in range(1, len(joints) - 1):
			translationControl = self.getTranslationControl(joints[i])
			for attr in [".translateX", ".translateY", ".translateZ"]:
				cmds.setAttr(translationControl+attr, l=False)
				
			material = joints[i] + "m_translation_control"
			cmds.setAttr(material+".colorR", 0.758)
			cmds.setAttr(material+".colorG", 0.051)
			cmds.setAttr(material+".colorB", 0.102)
		
		cmds.delete(self.moduleNamespace+":interpolation_container")
		
		cmds.lockNode(self.containerName, lock=True, lockUnpublished=True)
		
	def changeNumberOfJoints(self, *args):
		self.blueprint_UI_instance.deleteScriptJob()
		
		joints = self.getJoints()
		numJoints = len(joints)
		newNumJoints = cmds.intField(self.numberOfJointsField, q=True, value=True)
		
		startPos = cmds.xform(self.getTranslationControl(joints[0]), q=True, worldSpace=True, translation=True)
		endPos = cmds.xform(self.getTranslationControl(joints[numJoints - 1]), q=True, worldSpace=True, translation = True)
		
		hookObject = self.findHookObjectForLock()
		
		rotationOrder = cmds.getAttr(joints[0] + ".rotateOrder")
		sao_local = cmds.getAttr(self.moduleNamespace+":module_grp.sao_local")
		sao_world = cmds.getAttr(self.moduleNamespace+":module_grp.sao_world")
		
		self.delete()
		
		newInstance = Spline(self.userSpecifiedName, hookObject, newNumJoints, startPos, endPos)
		newInstance.install()
		
		newJoints = newInstance.getJoints()
		
		cmds.setAttr(newJoints[0]+".rotateOrder", rotationOrder)
		
		cmds.setAttr(newInstance.moduleNamespace+":module_grp.sao_local", sao_local)
		cmds.setAttr(newInstance.moduleNamespace+":module_grp.sao_world", sao_world)
		
		self.blueprint_UI_instance.createScriptJob()
		
		cmds.select(newInstance.moduleNamespace+":module_transform", replace=True)
		
	def lock_phase1(self):
		#Gather and return all required information from this module's control object
		
		#jointPositions = list of joint positions, from root down the hierarchy
		
		#jointOrientations = a list of orientations, or a list of axis information (orientJoint and secondaryAxisOrient for the joint cmd)
		#					#These are passed in the followint tuple: (orientations, None) or (None, axisInfo)
		#jointRotationOrders = a list of joint rotation orders (integers values gathered with getAttr)
		#jointPreferredAngles = a list of joint preferred angles, optional (can pass None)
		#hookObject = self.findHookObjectForLock()
		#rootTransform = a bool, either True or False. True =R, T and S on root joint. False = R only.
		#
		#moduleInfo = (jointPositions, jointOrientations, jointRotationOrders, jointPreferredAngles, hookObject, rootTransform)
		#return moduleInfo
		
		jointPositions = []
		jointOrientationValues = []
		jointRotationOrders = []
		jointPreferredAngles = []
		
		joints = self.getJoints()
		
		jointOrientationSettings = []
		moduleGrp = self.moduleNamespace+":module_grp"
		
		localAxis = cmds.getAttr(moduleGrp+".sao_local")
		if localAxis == 0:
			jointOrientationSettings.append("xyz")
		else:
			jointOrientationSettings.append("xzy")
		
		worldAxis = cmds.getAttr(moduleGrp+".sao_world")
		
		if worldAxis == 0:
			jointOrientationSettings.append("xup")
		elif worldAxis == 1:
			jointOrientationSettings.append("xdown")
		elif worldAxis == 2:
			jointOrientationSettings.append("yup")
		elif worldAxis == 3:
			jointOrientationSettings.append("ydown")
		elif worldAxis == 4:
			jointOrientationSettings.append("zup")
		elif worldAxis == 5:
			jointOrientationSettings.append("zdown")
			
		for joint in joints:
			jointPositions.append(cmds.xform(joint, q=True, worldSpace=True, translation=True))
			jointRotationOrders.append(cmds.getAttr(joints[0]+".rotateOrder"))
			jointOrientationValues.append(jointOrientationSettings)
			
		jointOrientations = (None, jointOrientationValues)
		
		hookObject = self.findHookObjectForLock()
		rootTransform = True

		moduleInfo = (jointPositions, jointOrientations, jointRotationOrders, jointPreferredAngles, hookObject, rootTransform)
		return moduleInfo
		