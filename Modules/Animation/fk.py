
CLASS_NAME = "FK"

TITLE = "Forward Kinematics"

DESCRIPTION = "This module provides FK rotational controls for every joint in the blueprint it is installed on."

import System.utils as utils
reload(utils)

import maya.cmds as cmds

class FK():

	def __init__(self, moduleNamespace):
		self.moduleContainer = None
		
		if moduleNamespace == None:
			return
			
		moduleNamespaceInfo = utils.stripAllNamespaces(moduleNamespace)
		
		self.blueprintNamespace = moduleNamespaceInfo[0]
		self.moduleNamespace = moduleNamespaceInfo[1]
		self.characterNamespaceOnly = utils.stripLeadingNamespace(self.blueprintNamespace)[0]
		
		self.moduleContainer = self.blueprintNamespace + ":" + self.moduleNamespace + ":module_container"
		
		self.publisheNames = []
	
	def compatibleBlueprintModules(self):
		return ("Finger","HingeJoint","LegFoot","SingleJointSegment", "SingleOrientableJoint","Spline","Thumb")

	
	def install(self):
		nodes = self.install_init()
		joints = nodes[0]
		moduleGrp = nodes[1]
		moduleContainer = nodes[2]
		
		self.install_custom(joints, moduleGrp, moduleContainer)
			
	def install_init(self):
		cmds.namespace(setNamespace=self.blueprintNamespace)
		cmds.namespace(add=self.moduleNamespace)
		cmds.namespace(setNamespace=":")
		
		characterContainer = self.characterNamespaceOnly+":character_container"
		blueprintContainer = self.blueprintNamespace+":module_container"
		containers = [characterContainer, blueprintContainer]
		
		for c in containers:
			cmds.lockNode(c, lock=False, lockUnpublished=False)
			
		self.joints = self.duplicateAndRenameCreationPose()
		moduleJointsGrp = self.joints[0]
		
		moduleGrp = cmds.group(empty=True,name=self.blueprintNamespace+":"+self.moduleNamespace+":module_grp")
		hookIn = self.blueprintNamespace+":HOOK_IN"
		cmds.parent(moduleGrp, hookIn, relative=True)
		cmds.parent(moduleJointsGrp, moduleGrp, absolute=True)
		
		cmds.select(moduleGrp)
		cmds.addAttr(at="float", ln="iconScale", min=0.001, softMaxValue=10.0, defaultValue=1, k=True)
		cmds.setAttr(moduleGrp+".overrideEnabled", 1)
		cmds.setAttr(moduleGrp+".overrideColor", 6)
		
		utilityNodes = self.setupBlueprintWeightBasedBlending()
		
		self.setupModuleVisibility(moduleGrp)
		
		containedNodes = list(self.joints)
		containerNodes.append(moduleGrp)
		containedNodes.extend(utilityNodes)
		 
		self.moduleContainer = cmds.container(n=self.moduleContainer)
		utils.addNodeToContainer(self.moduleContainer, containedNodes, ihb=True)
		utils.addNodeToContainer(blueprintContainer, self.moduleContainer)
		 
		index = 0
		for joint in self.joints:
			if index > 0:
				niceJointName = utils.stripAllNamespaces(joint)[1]
				self.publisheNameToModuleContainer(joint+".rotate", niceJointName+"_R", publishToOuterContainers=False)
				
			index += 1
		
		self.publishNameToModuleContainer(moduleGrp+".lod", "Control_LOD")
		self.publishNameToModuleContainer(moduleGrp+".iconScale", "Icon_Scale")
		self.publishNameToModuleContainer(moduleGrp+".overrideColor", "Icon_Colour")
		self.publishNameToModuleContainer(moduleGrp+".visibility", "Vis", publishNameToModuleContainers=False)
		
		return (self.joints, moduleGrp, self.moduleContainer)
		
	
			
	def duplicateAndRenameCreationPose(self):
		joints = cmds.duplicate(self.blueprintNamespace+":creationPose_joints_grp", renameChildren=True)
		
		for i in range(len(joints)):
			nameSuffix = joints[i].rpartition("creationPose_")[2]
			joints[i] = cmds.rename(joints[i], self.blueprintNamespace+":"+self.moduleNamespace+":"+nameSuffix)
			
		return joints
		
	
	
	def setupBlueprintWeightBasedBlending(self):
		settingsLocator = self.blueprintNamespace+":SETTINGS"
		
		attributes = cmds.listAttr(settingsLocator, keyable=False)
		weightAttributes = []
		for attr in attributes:
			if attr.find("_weight") != -1:
				weightAttributes.append(attr)
		
		value = 0
		if len(weightAttributes) == 0:
			value = 1
			cmds.setAttr(settingsLocator+".creationPoseWeight", 0)
			
		cmds.select(settingsLocator)
		weightAttributeName = self.moduleNamespace+"_weight"
		cmds.addAttr(ln=weightAttributeName, at="double", min=0, max=1, defaultValue=value, keyable=False)
		
		cmds.container(self.blueprintNamespace+":module_container", edit=True, publishAndBind=[settingsLocator+"."+weightAttributeName, weightAttributeName])
		
		currentEntries = cmds.attributeQuery("activeModule", n=settingsLocator, listEnum=True)
		
		newEntry = self.moduleNamespace
		
		if currentEntries[0] == "None":
			cmds.addAttr(settingsLocator+".activeModule", edit=True, enumName=newEntry)
			cmds.setAttr(settingsLocator+".activeModule", 0)
			
		else:
			cmds.addAttr(settingsLocator+".activeModule", edit=True, enumName=currentEntries[0]+":"+newEntry)
			
		
		weightAttributeName = self.moduleNamespace + "_weight"
		cmds.addAttr(ln=weightAttributeName, at="double", min=0, max=1, defaultValue=value, keyable=False)
		
		cmds.container(self.blueprintNamespace+":module_container", edit=True, publishAndBind=[settingsLocator+"."+weightAttributeName])
		
		currentEntries = cmds.attributeQuery("activeModule", n=settingsLocator, listEnum=True)
		
		newEntry = self.moduleNamespace
		
		if currentEntries[0] == "None":
			cmds.addAttr(settingsLocator+".activeModule", edit=True, enumName=newEntry)
			cmds.setAttr(settingsLocator+".activeModule", 0)
		else:
			cmds.addAttr(settingsLocator+".activeModule", edit=True, enumNum=currentEntries[0]+":"+newEntry)
			
		utilityNodes =[]
		for i in range(1, len(self.joints)):
			joint = self.joints[i]
			
			nameSuffix = utils.stripAllNamespaces(joint)[1]
			blueprintJoint = self.blueprintNamespace+":blueprint_"+nameSuffix
		
		
			weightNodeAttr = settingsLocator + "." + weightAttributeName
			
			if i < len(self.joints) - 1 or len(self.joints) == 2:
				multiplyRotations = cmds.shadingNode("multiplyDivide", n=joint+"_multiplyRotationsWeight", asUtility=True)
				utilityNodes.append(multiplyRotations)
				cmds.connectAttr(joint+".rotate", multiplyRotations+".input1", force=True)
				
				for attr in ["input2X", "input2Y", "input2Z"]:
					cmds.connectAttr(weightNodeAttr, multiplyRotations+"."+attr, force=True)
					
				index = utils.findFirstFreeConnection (blueprintJoint+"_addRotations.input3D")
				index = 1
				cmds.connectAttr(multiplyRotations+".output", blueprintJoint+"_addRotations.input3D["+str(index)+"]")
			
			if i == 1:
				addNode = blueprintJoint + "_addTranslate"
				if cmds.objExists(addNode):
					multiplyTranslation = cmds.shadingNode("multiplyDivide", n=joint+"_multiplyTranslationWeight", asUtility=True)
					utilityNodes.append(multiplyTranslation)
					
					cmds.connectAttr(joint+".translate", multiplyTranslation+".input1", force=True)
					for attr in ["input2X", "input2Y", "input2Z"]:
						cmds.connectAttr(weightNodeAttr, multiplyTranslation+"."+attr, force=True)
						
					index = utils.findFirstFreeConnection(addNode+".input3D")
					cmds.connectAttr(multiplyTranslation+".output", addNode+".input3D["+str(index)+"]", force=True)
				
				addNode = blueprintJoint+"_addScale"
				if cmds.objExists(addNode):
					multiplyScale = cmds.shadingNode("multiplyDivide", n=joint+"_multiplyScaleWeight", asUtility=True)
					utilityNodes.append(multiplyScale)
					
					cmds.connectAttr(joint+".scale", multiplyScale+".input1", force=True)
					for attr in ["input2X", "input2Y", "input2Z"]:
						cmds.connectAttr(weightNodeAttr, multiplyScale+"."+attr, force=True)
					
					index = utils.findFirstFreeConnection(addNode+".input3D")
					cmds.connectAttr(multiplyScale+".output", addNode+".input3D["+str(index)+"]", force=True)
				
			else:
				multiplyTranslation = cmds.shadingNode("multiplyDivide", n=joint+"_multiplyTranslationWeight", asUtility=True)
				utilityNodes.append(multiplyTranslation)
				
				cmds.connectAttr(joint+".translateX", multiplyTranslation+".input1X", force=True)
				cmds.connectAttr(weightNodeAttr, multiplyTranslation+".input2X", force=True)
				
				addNode = blueprintJoint+"_addTx"
				index = utils.findFirstFreeConnection (addNode+".input1D")
				index = 1
				cmds.connectAttr(multiplyTranslation+".outputX", addNode+".input1D["+str(index)+"]", force=True)
		
		return utilityNodes
	
	
	
	def setupModuleVisibility(self, moduleGrp):
		cmds.select(moduleGrp, replace=True)
		cmds.addAttr(at="byte", defaultValue=1, minValue=0, softMaxValue=3, longName="lod", k=True)
		
		moduleVisibilityMultiply = self.characterNamespaceOnly+":moduleVisibilityMultiply"
		cmds.connectAttr(moduleVisibilityMultiply+".outputX", moduleGrp+".visibility", force=True)
	

	
	def publishNameToModuleContainer(self, attribute, attributeNiceName, publishToOuterContainers=True):
		if self.moduleContainer == None:
			return
		
		blueprintName = utils.stripLeadingNamespace(self.blueprintNamespace)[1].partition("__")[2]
		
		attributePrefix = blueprintName + "_" + self.moduleNamespace + "_"
		publishedName = attributePrefix  + attributeNiceName
		
		if publishToOuterContainers:
			self.publishedNames.append(publishedName)
			
		cmds.container(self.moduleContainer, edit = True, publishAndBind=[attribute, publishedName])
	'''
	Custom installation controls
	'''
	
	def install_custom(self, joints, moduleGrp, moduleContainer):
		#group all blueprintNames
		controlsGrp = cmds.group(empty=True, name=self.blueprintNamespace+":"+self.moduleNamespace+":controls_grp")
		
		#parent the moduleGrp to controlsGrp
		cmds.parent(controlsGrp, moduleGrp, absolute=True)
		
		#add it to the container
		utils.addNodeToContainer(moduleContainer, controlsGrp)
		
		numJoints = len(joints) - 1
		#create fkControl for the joints
		for i in range(1, len(joints)):
			if i < numJoints or numJoints == 1:
				self.createFKControl(joints[i], controlsGrp, moduleContainer)
				
	def createFKControl(self, joint, parent, moduleContainer):
		jointName = utils.stripAllNamespaces(joint)[1]
		containedNodes = []
		name = jointName + "_fkControl"
		
		fkControl = cmds.sphere(n=joint+ "_fkControl")[0]
		utils.addNodeToContainer(moduleContainer, fkControl, ihb=True)
		self.publishNameToModuleContainer(fkControl+".rotate", name+"_R", publishToOuterContainers=True)
		
		cmds.connectAttr(joint+".rotateOrder", fkControl+".roatateOrder")
		
		orientGrp = cmds.group(n=fkControl+"_orientGrp", empty=True, parent=parent)
		containedNodes.append(orientGrp)
		
		orientGrp_parentConstraint = cmds.parentConstraint(joint, orientGrp, maintainOffset=False)[0]
		cmds.delete(orientGrp_parentConstraint)
		
		jointParent = cmds.listRelatives(joint, parent=True)[0]
		
		orientGrp_parentConstraint = cmds.parentConstraint(jointParent, orientGrp, maintainOffset=True, n=orientGrp+"_parentConsraint")[0]
		orientGrp_scaleConstraint = cmds.scaleConstraint(jointParent, orientGrp, maintainOffset=True, n=orientGrp+"_scaleConsraint")[0]
		
		containedNodes.extend(orientGrp_parentConstraint, orientGrp_scaleConstraint)
		
		cmds.parent(fkControl, orientGrp, relative=True)
		
		orientContstraint = cmds.orientConstraint(fkControl, joint, maintainOffset=False, n=joint+"_orientConstraint")[0]
		containedNodes.append(orientConstraint)
		
		utils.addNodeToContainer(moduleContainer, containedNodes)
		
		return fkControl
		
	def install_finalise(self):
		self.publishModuleContainerNamesToOuterContainers()
		
		cmds.setAttr(self.blueprintNamespace+":blueprint_joints_grp.controlModulesInstalled", True)
		
		characterContainer = self.characterNamespaceOnly+":character_container"
		blueprintContainer = self.blueprintNamespace+":module_container"
		containers=[characterContainer, blueprintContainer, self.moduleContainer]
		for c in containers:
			cmds.lockNode(c, lock=True, lockUnpublished=True)
			
		
	def publishModuleContainerNamesToOuterContainers(self):
		if self.moduleContainer == None:
			return
		
		characterContainer = self.characterNamespaceOnly+":character_container"
		blueprintContainer = self.blueprintNamespace+":module_container"
		
		for publishedName in self.publishedNames:
			outerPublishedNames = cmds.container(blueprintContainer, q=True, publishName=True)
			if publishedName in outerPublishedNames:
				continue
			
			cmds.container(blueprintContainer, edit=True, publishAndBind=[self.moduleContainer+"."+publishedName, publishedName])
			cmds.container(characterContainer, edit=True, publishAndBind=[blueprintContainer+"."+publishedName, publishedName])
		
		
			
	
		
	
