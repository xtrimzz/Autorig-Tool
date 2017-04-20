import maya.cmds as cmds
import os

from functools import partial

import System.utils as utils
reload(utils)

class Blueprint_UI:
	def __init__(self):
		
		self.moduleInstance = None
		self.deleteSymmetryMoveExpressions()
		
		#Store UI elements in a dictionary
		self.UIElements = {}
		
		#check if a window exits before delete and recreate
		if cmds.window("blueprint_UI_window", exists = True):
			cmds.deleteUI("blueprint_UI_window")
			
		#create the window
		windowWidth = 400
		windowHeight = 500
		
		self.UIElements["window"] = cmds.window("blueprint_UI_window",width = windowWidth, height = windowHeight, title="Blueprint Module UI", sizeable = True)
		
		#create layout
		self.UIElements["topLevelColumn"] = cmds.columnLayout( adjustableColumn = True, columnAlign ="center")
		
		#Setup tabs
		tabHeight = 500
		self.UIElements["tabs"] = cmds.tabLayout(height = tabHeight, innerMarginWidth = 5,innerMarginHeight = 5)
		
		tabWidth = cmds.tabLayout(self.UIElements["tabs"], q=True, width = True)
		self.scrollWidth = tabWidth - 50
		
		self.initializeModuleTab(tabHeight, tabWidth)
		
		cmds.setParent(self.UIElements["tabs"])
		self.initialiseTemplatesTab(tabHeight, tabWidth)
		
		scenePublished = cmds.objExists("Scene_Published")
		sceneUnlocked = not cmds.objExists("Scene_Locked") and not scenePublished
		
		
		cmds.tabLayout(self.UIElements["tabs"], edit = True, tabLabelIndex=([1, "Modules"], [2, "Templates"]), enable=sceneUnlocked)
		
		
		cmds.setParent(self.UIElements["topLevelColumn"])
		self.UIElements["lockPulishColumn"] = cmds.columnLayout(adj=True, columnAlign="center", rs=3)
		
		cmds.separator()
		self.UIElements["lockBtn"] = cmds.button(label="Lock", c=self.lock, enable=sceneUnlocked)
		cmds.separator()
		self.UIElements["publishBtn"] = cmds.button(label="Publish", enable=not sceneUnlocked and not scenePublished, c=self.publish)
		cmds.separator()
		
		
		#display window
		cmds.showWindow( self.UIElements["window"] )
		
		self.createScriptJob()
		
	def createScriptJob (self):
		self.jobNum = cmds.scriptJob(event=["SelectionChanged", self.modifySelected], runOnce=True,  parent=self.UIElements["window"])
		
	def deleteScriptJob(self):
		cmds.scriptJob(kill=self.jobNum)
		
	def initializeModuleTab(self, tabHeight, tabWidth):
		moduleSpecific_scrollHeight = 160
		#scrollHeight = tabHeight - moduleSpecific_scrollHeight -160
		scrollHeight = 250 #tabHeight temp value
		
		#will contain all the controls and buttons
		self.UIElements["moduleColumn"] = cmds.columnLayout(adj=True, rs=3)
		
		self.UIElements["moduleFrameLayout"] = cmds.frameLayout(height=scrollHeight, collapsable=False, borderVisible=False, label="Framer_v0.1")
		
		self.UIElements["moduleList_Scroll"] = cmds.scrollLayout(hst=0)
		
		self.UIElements["moduleList_column"] = cmds.columnLayout(columnWidth = self.scrollWidth, adj=True, rs=2)
		
		# First separator
		cmds.separator()
		
		#search for all modules and list the names
		
		for module in utils.findAllModules("Modules/Blueprint"):
			self.createModuleInstallButton(module)
			cmds.setParent(self.UIElements["moduleList_column"])
			cmds.separator()
			
		#create a separator	
		cmds.setParent(self.UIElements["moduleColumn"])
		cmds.separator()
		
		self.UIElements["moduleName_row"] = cmds.rowLayout(nc=2, columnAttach=(1, "right", 0), columnWidth=[(1, 80)], adjustableColumn=2)
		cmds.text(label="Module Name :")
		self.UIElements["moduleName"] = cmds.textField(enable=False, alwaysInvokeEnterCommandOnReturn=True, enterCommand=self.renameModule)
		
		cmds.setParent(self.UIElements["moduleColumn"])
		
		#Make the width of the buttons to fit into 3 columnAlign
		columnWidth = tabWidth + 20 #(tabWidth - 20) / 3
		self.UIElements["moduleButtons_rowColumn"] = cmds.rowColumnLayout(numberOfColumns=3, ro=[(1, "both", 2),(2, "both", 2), (3, "both", 2)], columnAttach=[ (1, "both", 3),(2,"both", 3),(3,"both",3)], columnWidth=[(1,columnWidth),(2, columnWidth),(3, columnWidth)] )
		
		self.UIElements["rehookBtn"] = cmds.button(enable=False, label="Re-hook", c=self.rehookModule_setup )
		self.UIElements["snapRootBtn"] = cmds.button(enable=False, label="Snap Root > Hook", c=self.snapRootToHook)
		self.UIElements["constrainRootBtn"] = cmds.button(enable=False, label="Constrain Root > Hook", c=self.constrainRootToHook)
		
		self.UIElements["groupSelectedBtn"] = cmds.button(label="Group Selected", c=self.groupSelected)
		self.UIElements["ungroupBtn"] = cmds.button(enable=False, label="Ungroup", c=self.ungroupSelected)
		self.UIElements["mirrorModuleBtn"] = cmds.button(enable=False, label="Mirror Module",  c=self.mirrorSelection)
		
		
		self.UIElements["duplicateModuleBtn"] = cmds.button(enable=True, label="Duplicate", c=self.duplicateModule)
		self.UIElements["deleteModuleBtn"] = cmds.button(enable=False, label="Delete")
		self.UIElements["symmetryMoveCheckBox"] = cmds.checkBox(enable=True, label="Symmetry Move", onc=self.setupSymmetryMoveExpressions_Checkbox, ofc=self.deleteSymmetryMoveExpressions)
		
		cmds.setParent(self.UIElements["moduleColumn"])
		cmds.separator()
		
		self.UIElements["moduleSpecificRowColumnLayout"] = cmds.rowColumnLayout(nr=1, rowAttach=[1, "both", 0], rowHeight=[1,moduleSpecific_scrollHeight] )
		self.UIElements["moduleSpecific_Scroll"] = cmds.scrollLayout(hst=0)
		self.UIElements["moduleSpecific_column"] = cmds.columnLayout(columnWidth=400, columnAttach=["both", 5], rs=2)
		cmds.setParent(self.UIElements["moduleColumn"])
		cmds.separator()
		
		 
	def createModuleInstallButton(self, module):
		mod = __import__("Blueprint."+module, {}, {}, [module])
		reload(mod)
		
		title = mod.TITLE
		description = mod.DESCRIPTION
		icon = mod.ICON
		
		#Create UI
		buttonSize = 64
		row = cmds.rowLayout(numberOfColumns=2, columnWidth=([1,buttonSize]), adjustableColumn=2, columnAttach=([1, "both", 0],[2, "both", 5]) )
		
		self.UIElements["module_button_"+module] = cmds.symbolButton(width=buttonSize, height=buttonSize, image=icon, command=partial(self.installModule, module))
		
		textColumn = cmds.columnLayout(columnAlign="center")
		cmds.text(align="center", width=300, label=title)
		
		cmds.scrollField(text=description, editable=False, width=300, height=50, wordWrap=True)
	
	
	def installModule(self, module, *args):
		basename = "instance_"
		
		#set namespace equals to root
		cmds.namespace(setNamespace=":") 
		namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		
		# if any contains "__" we want to delete
		for i in range(len(namespaces)):
			#if found
			if namespaces[i].find("__") != -1:
				namespaces[i] = namespaces[i].partition("__")[2]
				
		newSuffix = utils.findHighestTrailingNumber(namespaces,basename) + 1
		
		userSpecName = basename + str(newSuffix)
		
		hookObj = self.findHookObjectFromSelection()
	
		mod =__import__("Blueprint."+module,{},{}, [module])
		reload(mod)
		
		moduleClass = getattr(mod, mod.CLASS_NAME)
		moduleInstance = moduleClass(userSpecName, hookObj)
		moduleInstance.install()
		
		#Select the module outline and Make move Tool ACTIVE
		moduleTransform = mod.CLASS_NAME + "__" + userSpecName + ":module_transform"
		cmds.select(moduleTransform, replace=True)
		cmds.setToolTo("moveSuperContext")
	
	def isRootTransformInstalled(self):
		cmds.namespace(setNamespace=":")
		namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		
		for namespace in namespaces:
			if namespace.find("RootTransform__")  == 0:
				return True
		return False
		
	def lock(self, *args):
		if not self.isRootTransformInstalled():
			result = cmds.confirmDialog(messageAlign="center", title="Lock Character", message="We have detected that you dont have a root transform (global control) instance.\nWould you like to go back and edit your blueprint setup?\n (It is recommended that all rigs have at least one global control module).", button=["Yes", "No"], defaultButton="Yes", dismissString="Yes")
			if result == "Yes":
				return
			
		result = cmds.confirmDialog(messageAlign="center", title="Lock Blueprints", message="The action of locking a character will convert the current blueprint modules to joints. \nThis action cannot be undone. \nModifications to the blueprint system cannot be made after this point. \n Do you want to continue?", button=["Accept", "Cancel"], defaultButton="Accept", cancelButton="Cancel", dismissString="Cancel")
		
		if result != "Accept":
			return
			
		self.deleteSymmetryMoveExpressions()
		cmds.checkBox(self.UIElements["symmetryMoveCheckBox"], edit=True, value=False)
			
		self.deleteScriptJob()
		
		moduleInfo = [] #store [module, userSpecifiedName] pairs
		
		cmds.namespace(setNamespace=":")
		namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		
		moduleNameInfo = utils.findAllModuleNames("/Modules/Blueprint")
		validModules = moduleNameInfo[0]
		validModuleNames = moduleNameInfo[1]
		
		for n in namespaces:
			splitString = n.partition("__")
			
			if splitString[1] != "":
				module = splitString[0]
				userSpecifiedName = splitString[2]
			
				if module in validModuleNames:
					index = validModuleNames.index(module)
					moduleInfo.append([validModules[index], userSpecifiedName])
				
		if len(moduleInfo) ==  0:
			cmds.confirmDialog(messageAlign="center", title="Lock Blueprints", message="There appear to be no blueprint module \ninstances in the current scene. \nAborting lock", button=["Accept"], defaultButton="Accept")
			return
		
		moduleInstances = []
		for module in moduleInfo:
			mod = __import__("Blueprint."+module[0], {},{},module[0])
			reload(mod)
			
			moduleClass = getattr(mod, mod.CLASS_NAME)
			moduleInst = moduleClass(module[1], None)
			
			moduleInfo = moduleInst.lock_phase1()
			
			moduleInstances.append((moduleInst, moduleInfo))
			
		for module in moduleInstances:
			module[0].lock_phase2(module[1])
			
			
		groupContainer = "Group_container"
		if cmds.objExists(groupContainer):
			cmds.lockNode(groupContainer, lock=False, lockUnpublished=False)
			cmds.delete(groupContainer)
			
			
		for module in moduleInstances:
			hookObject = module[1][4]
			module[0].lock_phase3(hookObject)
			
			
		sceneLockedLocator = cmds.spaceLocator(n="Scene_Locked")[0]
		cmds.setAttr(sceneLockedLocator+".visibility", 0)
		cmds.lockNode(sceneLockedLocator, lock=True, lockUnpublished=True)
		
		cmds.select(clear=True)
		self.modifySelected()
		
		cmds.tabLayout(self.UIElements["tabs"], edit=True, enable=False)
		cmds.button(self.UIElements["lockBtn"], edit=True, enable=False)
		cmds.button(self.UIElements["publishBtn"], edit=True, enable=True)
		
			
	def modifySelected(self, *args):
			
			if cmds.checkBox(self.UIElements["symmetryMoveCheckBox"], q=True, value=True):
				self.deleteSymmetryMoveExpressions()
				self.setupSymmetryMoveExpressions()
			
			selectedNodes = cmds.ls(selection=True)
 			
			if len(selectedNodes) <= 1:
				self.moduleInstance = None
				selectedModuleNamespace = None
				currentModuleFile = None
				
				cmds.button(self.UIElements["ungroupBtn"], edit=True, enable=False)
				cmds.button(self.UIElements["mirrorModuleBtn"], edit=True, enable=False)
 				
				if len(selectedNodes) == 1:
					lastSelected = selectedNodes[0]
					
					if lastSelected.find("Group__") == 0:
						cmds.button(self.UIElements["ungroupBtn"], edit=True, enable=True)
						cmds.button(self.UIElements["mirrorModuleBtn"], edit=True, enable=True, label="Mirror Group")
 					
					namespaceAndNode = utils.stripLeadingNamespace(lastSelected)
					if namespaceAndNode != None:
						namespace = namespaceAndNode[0]
 						
						moduleNameInfo = utils.findAllModuleNames("/Modules/Blueprint")
						validModules = moduleNameInfo[0]
						validModuleNames = moduleNameInfo[1]
 						
						index = 0
						for moduleName in validModuleNames:
							moduleNameIncSuffix = moduleName + "__"
							if namespace.find(moduleNameIncSuffix) == 0:
								currentModuleFile = validModules[index]
								selectedModuleNamespace = namespace
								break
 							
							index += 1
 							 
				controlEnable = False
				userSpecifiedName = ""
				constrainCommand = self.constrainRootToHook 
				constrainLabel = "Constrain Root > Hook"
 				
				if selectedModuleNamespace != None:
					controlEnable = True
					userSpecifiedName = selectedModuleNamespace.partition("__")[2]
 					
					mod = __import__("Blueprint."+currentModuleFile, {},{}, [currentModuleFile])
					reload(mod)
					
					moduleClass = getattr(mod, mod.CLASS_NAME)
					self.moduleInstance = moduleClass(userSpecifiedName, None)
					
					cmds.button(self.UIElements["mirrorModuleBtn"], edit=True, enable=True, label="Mirror Module")
					
					
					if self.moduleInstance.isRootConstrained():
						constrainCommand = self.unconstrainRootFromHook
						constrainLabel = "Unconstrain Root"
					
				#cmds.button(self.UIElements["mirrorModuleBtn"], edit=True, enable=controlEnable)
				cmds.button(self.UIElements["rehookBtn"], edit=True, enable=controlEnable)
				cmds.button(self.UIElements["snapRootBtn"], edit=True, enable=controlEnable)
				cmds.button(self.UIElements["constrainRootBtn"], edit=True, enable=controlEnable, label=constrainLabel, c=constrainCommand )
				
				cmds.button(self.UIElements["deleteModuleBtn"], edit=True, enable=controlEnable, c=self.deleteModule)
				
				cmds.textField(self.UIElements["moduleName"], edit=True, enable=controlEnable, text=userSpecifiedName)
				
				self.createModuleSpecificControls()
			
			self.createScriptJob()
			
	def createModuleSpecificControls(self):
			existingControls = cmds.columnLayout(self.UIElements["moduleSpecific_column"], q=True, childArray=True)
			if existingControls != None:
				cmds.deleteUI(existingControls)
				
			cmds.setParent(self.UIElements["moduleSpecific_column"])
			
			if self.moduleInstance != None:
				self.moduleInstance.UI(self, self.UIElements["moduleSpecific_column"])
				
				
	def deleteModule(self, *args):
		symmetryMove = cmds.checkBox(self.UIElements["symmetryMoveCheckBox"], q=True, value=True)
		if symmetryMove:
			self.deleteSymmetryMoveExpressions()
			
		self.moduleInstance.delete()
		cmds.select(clear=True)
		
		if symmetryMove: 
			self.setupSymmetryMoveExpressions_Checkbox()
			
	
	def renameModule(self, *args):
		newName = cmds.textField(self.UIElements["moduleName"], q=True, text=True)
		
		symmetryMove = cmds.checkBox(self.UIElements["symmetryMoveCheckBox"], q=True, value=True)
		if symmetryMove:
			self.deleteSymmetryMoveExpressions()
		
		self.moduleInstance.renameModuleInstance(newName)
		
		if symmetryMove: 
			self.setupSymmetryMoveExpressions_Checkbox()
		
		previousSelection = cmds.ls(selection=True)
		
		if len(previousSelection) > 0:
			cmds.select(previousSelection, replace=True)
		else:
			cmds.select(clear=True)
		
	def findHookObjectFromSelection(self, *args):
		selectedObjects = cmds.ls(selection=True, transforms=True)
		
		numberOfObjects = len(selectedObjects)
		
		hookObj = None
		
		if numberOfObjects != 0:
			hookObj = selectedObjects[numberOfObjects - 1]
			
		return hookObj   
		
	def rehookModule_setup(self, *args):
		selectedNodes = cmds.ls(selection=True, transforms=True)
		if len(selectedNodes) == 2:
			newHook = self.findHookObjectFromSelection()
			self.moduleInstance.rehook(newHook)
		else:
			self.deleteScriptJob()
			
			currentSelection = cmds.ls(selection=True)
			
			cmds.headsUpMessage("Please select the joint you wish to rehook to. Clear selection to un-hook")
			
			cmds.scriptJob(event=["SelectionChanged", partial(self.rehookModule_callback, currentSelection)], runOnce=True )
			
	def rehookModule_callback(self, currentSelection):
		newHook = self.findHookObjectFromSelection()
		
		self.moduleInstance.rehook(newHook)
		
		if len(currentSelection) > 0:
			cmds.select(currentSelection, replace=True)
		else:
			cmds.select(clear=True)
			
		self.createScriptJob()
		
	def snapRootToHook(self, *args):
		self.moduleInstance.snapRootToHook()
		
	def constrainRootToHook(self, *args):
		self.moduleInstance.constrainRootToHook()
		
		cmds.button(self.UIElements["constrainRootBtn"], edit=True, label="Unconstrain Root", c=self.unconstrainRootFromHook)
		
	def unconstrainRootFromHook(self, *args):
		self.moduleInstance.unconstrainRootFromHook()
		
		cmds.button(self.UIElements["constrainRootBtn"], edit=True, label="Constrain Root > Hook", c=self.constrainRootToHook)
	
	def groupSelected(self, *args):
		import System.groupSelected as groupSelected
		reload(groupSelected)
		
		groupSelected.GroupSelected().show_UI()
		
		
	def ungroupSelected(self, *args):
		import System.groupSelected as groupSelected
		reload(groupSelected)
		
		groupSelected.UngroupSelected()
		
	def mirrorSelection(self, *args):
		import System.mirrorModule as mirrorModule
		reload(mirrorModule)
		mirrorModule.MirrorModule()
	
	def setupSymmetryMoveExpressions_Checkbox(self, *args):
		self.deleteScriptJob()
		
		self.setupSymmetryMoveExpressions()
		
		self.createScriptJob()
		
	def setupSymmetryMoveExpressions(self, *args):
		cmds.namespace(setNamespace=":")
		selection = cmds.ls(selection=True, transforms=True)
		expressionContainer = cmds.container(n="symmetryMove_container")
		
		if len(selection ) == 0:
			return
			
		linkedObjs = []
		for obj in selection:
			if obj in linkedObjs:
				continue
			
			#check if module is in a group
			if obj.find("Group__") == 0:
				if cmds.attributeQuery("mirrorLinks", n=obj, exists=True):
					mirrorLinks = cmds.getAttr(obj+".mirrorLinks")
					groupInfo = mirrorLinks.rpartition("__")
					mirrorObj = groupInfo[0]
					axis = groupInfo[2]
					
					linkedObjs.append(mirrorObj)
					
					self.setupSymmetryMoveForObject(obj, mirrorObj, axis, translation=True, orientation=True, globalScale=True)
			
			#not in a group	
			else:
				#does it belong to a module
				objNamespaceInfo = utils.stripLeadingNamespace(obj)
				if objNamespaceInfo != None:
					#check if mirrorLinks is in module_grp
					if cmds.attributeQuery("mirrorLinks", n=objNamespaceInfo[0]+":module_grp", exists=True):
						mirrorLinks = cmds.getAttr(objNamespaceInfo[0] + ":module_grp.mirrorLinks")
						
						#split from the right base on "__"
						moduleInfo = mirrorLinks.rpartition("__")
						module = moduleInfo[0]
						axis = moduleInfo[2]
						
						#Searching For the control types...
						#The name of the node we have selected, select translation control
						if objNamespaceInfo[1].find("translation_control") != -1:
						
							#find out the name of the obj to drive
							mirrorObj = module + ":" +objNamespaceInfo[1]
							
							#put mirror object in linked obj
							linkedObjs.append(mirrorObj)
							#drive translation only
							self.setupSymmetryMoveForObject(obj, mirrorObj, axis, translation=True, orientation=False, globalScale=False)
						
						#select the node for module transform
						elif objNamespaceInfo[1].find("module_transform") == 0:
							mirrorObj = module + ":module_transform"
							#put mirror object in linked obj
							linkedObjs.append(mirrorObj)
							#drive translation and Rotate/Orientation only
							self.setupSymmetryMoveForObject(obj, mirrorObj, axis, translation=True, orientation=True, globalScale=False)
						elif objNamespaceInfo[1].find("orientation_control") != -1:
							mirrorObj = module + ":" + objNamespaceInfo[1]
							linkedObjs.append(mirrorObj)
							
							expressionString = mirrorObj + ".rotateX = "+ obj + ".rotateX; \n"
							expression = cmds.expression(n=mirrorObj + "_symmetryMoveExpression", string=expressionString)
							utils.addNodeToContainer(expressionContainer, expression)
						elif objNamespaceInfo[1].find("singleJointOrientation_control") != -1:
							mirrorObj = module + ":" + objNamespaceInfo[1]
							linkedObjs.append(mirrorObj)
							
							expressionString += mirrorObj + ".rotateX = " + obj + ".rotateX; \n"
							expressionString += mirrorObj + ".rotateY = " + obj + ".rotateY; \n"
							expressionString += mirrorObj + ".rotateZ = " + obj + ".rotateZ; \n"
							
							expression = cmds.expression(n=mirrorObj+"_symmetryMoveExpression", string=expressionString)
							utils.addNodeToContainer(expressionContainer, expression)
				
		cmds.lockNode(expressionContainer, lock=True)
		cmds.select(selection, replace=True)
		
	def setupSymmetryMoveForObject(self, obj, mirrorObj, axis, translation=True, orientation=False, globalScale=False):
		duplicateObject = cmds.duplicate(obj, parentOnly=True, inputConnections=True, name=obj+"_mirrorHelper")[0]
		emptyGroup = cmds.group(empty=True, name=obj+"mirror_scale_grp")
		cmds.parent(duplicateObject, emptyGroup, absolute=True)
		
		scaleAttribute = ".scale" + axis
		cmds.setAttr(emptyGroup+scaleAttribute, -1)
		
		expressionString = "namespace -setNamespace \":\";\n"
		if translation:
			expressionString += "$worldSpacePos = `xform -q -ws -translation "+ obj + "`; \n"
		if orientation:
			expressionString += "$worldSpaceOrient = `xform -q -ws -rotation "+ obj +"`; \n"
			
		attrs =[]
		if translation:
			attrs.extend([".translateX", ".translateY", ".translateZ"])
		if orientation:
			attrs.extend([".rotateX", ".rotateY", ".rotateZ"])
			
		for attr in attrs:
			expressionString += duplicateObject+attr+" = " +obj + attr + ";\n"
		
		i = 0
		for axis in ["X", "Y", "Z"]:
			if translation:
				expressionString += duplicateObject+".translate"+axis+" = $worldSpacePos["+str(i)+"];\n"
			if orientation:
				expressionString += duplicateObject+".rotate"+axis+" = $worldSpaceOrient["+str(i)+"]; \n"
			i += 1

		if globalScale:
			expressionString += duplicateObject+ ".globalScale = "+ obj + ".globalScale;\n" 
		expression = cmds.expression(n=duplicateObject+"_symmetryMoveExpression", string=expressionString)
		
		constraint = ""
		if translation and orientation:
			constraint = cmds.parentConstraint(duplicateObject, mirrorObj, maintainOffset=False, n=mirrorObj+"_symmetryMoveConstraint")[0]
		elif translation:
			constraint = cmds.pointConstraint(duplicateObject, mirrorObj, maintainOffset=False, n=mirrorObj+"_symmetryMoveConstraint")[0]
		elif orientation:
			constraint = cmds.orientConstraint(duplicateObject, mirrorObj, maintainOffset=False, n=mirrorObj+"_symmetryMoveConstraint")[0]
			
		if globalScale:
			cmds.connectAttr(duplicateObject+".globalScale", mirrorObj+".globalScale")
		
		utils.addNodeToContainer("symmetryMove_container", [duplicateObject, emptyGroup, expression, constraint], ihb=True)
			
		
		
	def deleteSymmetryMoveExpressions(self, *args):
		container = "symmetryMove_container"
		if cmds.objExists(container):
			cmds.lockNode(container, lock=False)
			
			nodes = cmds.container(container, q=True, nodeList=True)
			nodes = cmds.ls(nodes, type=["parentConstraint", "pointConstraint", "orientConstraint"])
			
			if len(nodes) > 0:
				cmds.delete(nodes)
				
			cmds.delete(container)
			
	def initialiseTemplatesTab(self, tabHeight, tabWidth):
		self.UIElements["templatesColumn"] = cmds.columnLayout(adj=True, rs=3, columnAttach=["both", 0])
		
		self.UIElements["templatesFrameLayout"] = cmds.frameLayout(height=(tabHeight - 104), collapsable=False, borderVisible=False, labelVisible=False)
		self.UIElements["templateList_Scroll"] = cmds.scrollLayout(hst=0)
		self.UIElements["templateList_column"] = cmds.columnLayout(adj=True, rs=2)
		
		cmds.separator()
		for template in utils.findAllMayaFiles("/Templates"):
			cmds.setParent(self.UIElements["templateList_column"])
			templateAndPath = os.environ["RIGGING_TOOL_ROOT"] + "/Templates/" + template + ".ma"
			self.createTemplateInstallButton(templateAndPath)
			
		cmds.setParent(self.UIElements["templatesColumn"])
		cmds.separator()
		self.UIElements["prepareTemplateBtn"] = cmds.button(label="prepare for Template", c=self.prepareForTemplate)
		cmds.separator()
		self.UIElements["saveCurrentBtn"] = cmds.button(label="Save current as Template", c=self.saveCurrentAsTemplate)
		cmds.separator()
		
	
	def prepareForTemplate(self, *args):
		cmds.select(all=True)
		rootLevelNodes = cmds.ls(selection=True, transforms=True)
		
		filteredNodes = []
		for node in rootLevelNodes:
			if node.find("Group__") == 0:
				filteredNodes.append(node)
			else:
				nodeNamespaceInfo = utils.stripAllNamespaces(node)
				if nodeNamespaceInfo != None:
					if nodeNamespaceInfo[1] == "module_transform":
						filteredNodes.append(node)
		if len(filteredNodes) > 0:
			cmds.select(filteredNodes, replace=True)
			self.groupSelected()
		
	def saveCurrentAsTemplate(self, *args):
		self.SaveTemplateUIElements = {}
		
		if cmds.window("saveTemplate_UI_window", exists=True):
			cmds.deleteUI("saveTemplate_UI_window")
		
		windowWidth = 300
		windowHeight = 152
		self.SaveTemplateUIElements["window"] = cmds.window("saveTemplate_UI_window", width=windowWidth, height=windowHeight, title="Save current as Template", sizeable=False)
		
		self.SaveTemplateUIElements["topLevelColumn"] = cmds.columnLayout(adj=True, columnAlign="center", rs=3)
		self.SaveTemplateUIElements["templateName_rowColumn"] = cmds.rowColumnLayout(nc=2, columnAttach=(1,"right", 0), columnWidth=[(1,90), (2,windowWidth-100)] )
		
		cmds.text(label="Template Name: ")
		self.SaveTemplateUIElements["templateName"] = cmds.textField(text="[a-z][A-Z][0-9] and _ only")
		
		cmds.text(label="Title: ")
		self.SaveTemplateUIElements["templateTitle"] = cmds.textField(text="Title")
		
		cmds.text(label="Description: ")
		self.SaveTemplateUIElements["templateDescription"] = cmds.textField(text="Description")
		
		cmds.text(label="Icon: ")
		self.SaveTemplateUIElements["templateIcon"] = cmds.textField(text="[programRoot]/Icons/_icon.xpm")
		
		cmds.showWindow(self.SaveTemplateUIElements["window"])
		
		cmds.setParent(self.SaveTemplateUIElements["topLevelColumn"])
		cmds.separator()
		
		columnWidth = (windowWidth/2) - 5
		self.SaveTemplateUIElements["button_row"] = cmds.rowLayout(nc=2, columnWidth=[(1, columnWidth), (2,columnWidth)], cat=[(1, "both", 10), (2,"both", 10)], columnAlign=[(1,"center"),(2,"center")])
		
		cmds.button(label="Accept", c=self.saveCurrentAsTemplate_AcceptWindow)
		cmds.button(label="Cancel", c=self.saveCurrentAsTemplate_CancelWindow)
		
		cmds.showWindow(self.SaveTemplateUIElements["window"])
		
	def saveCurrentAsTemplate_CancelWindow(self, *args):
		cmds.deleteUI(self.SaveTemplateUIElements["window"])
		
	def saveCurrentAsTemplate_AcceptWindow(self, *args):
		templateName = cmds.textField(self.SaveTemplateUIElements["templateName"], q=True, text=True)
		
		programRoot = os.environ["RIGGING_TOOL_ROOT"]
		templateFileName = programRoot + "/Templates/"+templateName+".ma"
		
		if os.path.exists(templateFileName):
			cmds.confirmDialog(title="Save Current as Template", message="Template already exists with that name. Aborting save.", button=["Accept"], defaultButton="Accept") 
			return
			
		if cmds.objExists("Group_container"):
			cmds.select("Group_container", replace=True)
		else:
			cmds.select(clear=True)
		
		cmds.namespace(setNamespace=":")
		namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		
		for n in namespaces:
			if n.find("__") != -1:
				cmds.select(n+":module_container", add=True)
				
		cmds.file(templateFileName, exportSelected=True, type="mayaAscii")
		cmds.select(clear=True)
		
		title = cmds.textField(self.SaveTemplateUIElements["templateTitle"], q=True, text=True)
		description = cmds.textField(self.SaveTemplateUIElements["templateDescription"], q=True, text=True)
		icon = cmds.textField(self.SaveTemplateUIElements["templateIcon"], q=True, text=True)
		
		if icon.find("programRoot") != -1:
			icon = programRoot + icon.partition("[programRoot]")[2]
			
		templateDescriptionFileName = programRoot + "/Templates/" + templateName + ".txt"
		f = open(templateDescriptionFileName, "w")
		
		f.write(title + "\n")
		f.write(description + "\n")
		f.write(icon + "\n")
		
		f.close()
		
		cmds.deleteUI(self.SaveTemplateUIElements["window"])
		
	def createTemplateInstallButton(self, templateAndPath):
		buttonSize = 64
		
		templateDescriptionFile = templateAndPath.partition(".ma")[0] + ".txt"
		
		f=open(templateDescriptionFile, "r")
		title = f.readline()[0:-1]
		description = f.readline()[0:-1]
		icon = f.readline()[0:-1]
		
		f.close()
		
		row = cmds.rowLayout(width=self.scrollWidth+300, nc=2, columnWidth=([1, buttonSize], [2, self.scrollWidth]), adj=2, columnAttach=([1,"both", 0],[2,"both", 5]))
		
		self.UIElements["template_button_"+ templateAndPath] = cmds.symbolButton(width=buttonSize, height=buttonSize, image=icon, command = partial(self.installTemplate, templateAndPath))
		
		textColumn = cmds.columnLayout(columnAlign="center")
		cmds.text(align="center", width=self.scrollWidth, label=title)
		cmds.scrollField(text=description, editable=False, width=self.scrollWidth, wordWrap=True)
		
		cmds.setParent(self.UIElements["templateList_column"])
		cmds.separator()
			
		
	def installTemplate(self, templateAndPath, *args):
		cmds.file(templateAndPath, i=True, namespace="TEMPLATE_1")
		
		self.resolveNamespaceClashes("TEMPLATE_1")
		
		groupContainer = "TEMPLATE_1:Group_container"
		if cmds.objExists(groupContainer):
			self.resolveGroupNameClashes("TEMPLATE_1")
			
			
			cmds.lockNode(groupContainer, lock=False, lockUnpublished=False)
			
			oldGroupContainer = "Group_container"
			if cmds.objExists(oldGroupContainer):
				cmds.lockNode(oldGroupContainer, lock=False, lockUnpublished=False)
				
				nodeList = cmds.container(groupContainer, q=True, nodeList=True)
				utils.addNodeToContainer(oldGroupContainer, nodeList, force=True)
				
				
				cmds.delete(groupContainer)
			else:
				cmds.rename(groupContainer, oldGroupContainer)
				
			cmds.lockNode("Group_container", lock=True, lockUnpublished=True)
			
		cmds.namespace(setNamespace=":")
		cmds.namespace(moveNamespace=("TEMPLATE_1",":"), force=True)
		
		cmds.namespace(removeNamespace="TEMPLATE_1")
		
	def resolveNamespaceClashes(self, tempNamespace):
		returnNames = []
		
		cmds.namespace(setNamespace=tempNamespace)
		namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		cmds.namespace(setNamespace=":")
		existingNamespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
		
		for i in range(len(namespaces)):
			namespaces[i] = namespaces[i].partition(tempNamespace+":")[2]
			
		for name in namespaces:
			newName = str(name)
			oldName = tempNamespace + ":" + name
			
			if name in existingNamespaces:
				highestSuffix = utils.findHighestTrailingNumber(existingNamespaces, name+"_")
				highestSuffix += 1
				
				newName = str(name) + "_" + str(highestSuffix)
				
			returnNames.append([oldName, newName])
			
		self.resolveNameChangeMirrorLinks(returnNames, tempNamespace)
		
		self.renameNamespaces(returnNames)
		
		return returnNames
		
	def renameNamespaces(self, names):
		for name in names:
			oldName = name[0]
			newName = name[1]
			
			cmds.namespace(setNamespace=":")
			cmds.namespace(add=newName)
			cmds.namespace(moveNamespace=[oldName, newName])
			cmds.namespace(removeNamespace=oldName)
			
	def resolveNameChangeMirrorLinks(self, names, tempNamespace):
		moduleNamespaces = False
		firstOldNode = names[0][0]
		if utils.stripLeadingNamespace(firstOldNode)[1].find("Group__") == -1:
			moduleNamespaces = True
			
		for n in names:
			oldNode = n[0]
			if moduleNamespaces:
				oldNode += ":module_grp"
				
			if cmds.attributeQuery("mirrorLinks", n=oldNode, exists=True):
				mirrorLinks = cmds.getAttr(oldNode+".mirrorLinks")
				mirrorLinkInfo = mirrorLink.rpartition("__")
				mirrorNode = mirrorLinkInfo[0]
				mirrorAxis = mirrorLinkInfo[2]
				
				found = False
				
				container = ""
				if moduleNamespaces:
					oldNodeNamespace = n[0]
					container = oldNamespace + ":module_container"
				else:
					container = tempNamespace + ":Group_container"
					
				for nm in names:
					oldLink = nm[0].partition(tempNamespace+":")[2]
					if oldLink == mirrorNode:
						newLink = nm[1]
						
						if cmds.objExists(container):
							cmds.lockNode(container, lock=False, lockUnpublished=False)
						
						cmds.setAttr(oldNode+".mirrorLinks", newLink+"__"+mirrrorAxis, type="string")
						
						if cmds.objExists(container):
							cmds.lockNode(container, lock=True, lockUnpublished=True)
						
						found = True
						break
						
				if not found:
					if cmds.objExists(container):
						cmds.lockNode(container, lock=False, lockUnpublished=False)
						
					cmds.deleteAttr(oldNode, at="mirrorLinks")
					
					if cmds.objExists(container):
						cmds.lockNode(container, lock=True, lockUnpublished=True)
						
			
	def resolveGroupNameClashes(self, tempNamespace):
		cmds.namespace(setNamespace = tempNamespace)
		dependencyNodes = cmds.namespaceInfo(listOnlyDependencyNodes=True)
		
		cmds.namespace(setNamespace=":")
		
		transforms = cmds.ls(dependencyNodes, transforms=True)
		
		groups = []
		for node in transforms:
			if node.find(tempNamespace+":Group__") == 0:
				groups.append(node)
				
		if len(groups)  == 0:
			return groups
		
		groupNames = []
		for group in groups:
			groupName = group.partition(tempNamespace+":")[2]
			newGroupName = str(groupName)
			
			if cmds.objExists(newGroupName):
				existingGroups = cmds.ls("Group__*", transforms=True)
				
				highestSuffix = utils.findHighestTrailingNumber(existingGroups, groupName+"_")
				highestSuffix += 1
				
				newGroupName = str(groupName) + "_" + str(highestSuffix)
				
			groupNames.append([group, newGroupName])
			
		self.resolveNameChangeMirrorLinks(groupNames, tempNamespace)
		
		groupContainer = tempNamespace+"Group_container"
		if cmds.objExists(groupContainer):
			cmds.lockNode(groupContainer, lock=False, lockUnpublished=False)
		
		for name in groupName:
			cmds.rename(name[0], name[1])
		
		if cmds.objExists(groupContainer):
			cmd.lockNode(groupContainer, lock=True, lockUnpublished=True)
			
		return groupNames
			
						
	def duplicateModule(self, *args):
		modules = set([])
		groups = set([])
		
		selection = cmds.ls(selection=True, transforms=True)
		
		if len(selection) == 0:
			return 
			
		for node in selection:
			selectionNamespaceInfo = utils.stripLeadingNamespace(node)
			if selectionNamespaceInfo != None:
				if selectionNamespaceInfo[0].find("__") != -1:
					modules.add(selectionNamespaceInfo[0])
					
			else:
				if node.find("Group__") == 0:
					groups.add(node)
		for group in groups:
			moduleInfo = self.duplicateModule_processGroup(group)
			for module in moduleInfo:
				modules.add(module)
		
		if len(groups) > 0:
			groupSelection = list(groups)
			cmds.select(groupSelection, replace=True, hi=True)
		
		else:
			cmds.select(clear=True)
			
		for module in modules:
			cmds.select(module+":module_container", add=True)
			
		if len(groups) > 0:

			cmds.lockNode("Group_container", lock=False, lockUnpublished=False)
		elif len(modules) == 0:
			return
		
		duplicateFileName = os.environ["RIGGING_TOOL_ROOT"] + "/__duplicationCache.ma"
		cmds.file(duplicateFileName, exportSelected=True, type="mayaAscii", force=True)
		
		if len(groups) > 0:
			cmds.lockNode("Group_container", lock=True, lockUnpublished=True)
		
		self.installDuplicate(duplicateFileName, selection)
		
		cmds.setToolTo("moveSuperContext")
	
	def installDuplicate(self, duplicatePath, selection, *args):
		cmds.file(duplicatePath, i=True, namespace="TEMPLATE_1")
		
		moduleNames = self.resolveNamespaceClashes("TEMPLATE_1")
		
		groupNames = self.resolveGroupNameClashes("TEMPLATE_1")
		
		groups = []
		for name in groupNames:
			groups.append(name[1])
			
		if len(groups) > 0:
			sceneGroupContainer = "Group_container"
			cmds.lockNode(sceneGroupContainer, lock=False, lockUnpublished=False)
			
			utils.addNodeToContainer(sceneGroupContainer, groups, includeShapes=True, force=True)
			
			for group in groups:
				groupNiceName = group.partition("__")[2]
				cmds.container(sceneGroupContainer, edit=True, publishAndBind = [group+".translate", groupNiceName+"_t"])
				cmds.container(sceneGroupContainer, edit=True, publishAndBind = [group+".rotate", groupNiceName+"_r"])
				cmds.container(sceneGroupContainer, edit=True, publishAndBind = [group+".globalScale", groupNiceName+"_globalScale"])
			
			cmds.lockNode(setNamespace=":")
			
			cmds.namespace(moveNamespace=("TEMPLATE_1", ":"), force=True)
			cmds.namespace(removeNamespace="TEMPLATE_1")
			
			newSelection = []
			for node in selection:
				found = False
				for group in groupNames:
					oldName = group[0].partition("TEMPLATE_1:")[2]
					newName = group[1]
					
					if node == oldName:
						newSelection.append(newName)
						found = True
						break
					
				if not found:
					nodeNamespaceInfo = utils.stripLeadingNamespace(node)
					if nodeNamespaceInfo != None:
						nodeNamespace = nodeNamespaceInfo[0]
						nodeName = nodeNamespaceInfo[1]
						
						searchName = "TEMPLATE_1:" +nodeNamespace
						
						for module in moduleNames:
							if module[0] == searchName:
								newSelection.append(module[1] + ":" +nodeName)
								
			if len(newSelection) > 0:
				cmds.select(newSelection, replace=True)
			
	def duplicateModule_processGroup(self, group):
		returnModules = []
		
		children = cmds.listRelatives(group, children=True, type="transform")
		
		for c in children:
			selectionNamespaceInfo = utils.stripLeadingNamespace(c)
			if selectionNamespaceInfo != None:
				returnModules.append(selectionNamespaceInfo[0])
				
			else:
				if c.find("Group__") == 0:
					returnModules.extend(self.duplicateModule_processGroup(c))
					
		return returnModules
		
	def publish(self, *args):
		result = cmds.confirmDialog(messageAlign="center", title="Publish Character", message="The action of publishing cannot be undone.\nAre you sure you wish to continue?",button=["Accept","Cancel"], defaultButton="Accept", cancelButton="Cancel", dismissString="Cancel")
		
		if result != "Accept":
			return
		
		result = cmds.promptDialog(title="Publish Character", message="Please specify a character name [a-z] [A-Z] and _ only: ", button=["Accept","Cancel"],defaultButton="Accept", cancelButton="Cancel", dismissString="Cancel")
		if result == "Accept":
			characterName = cmds.promptDialog(q=True, text=True)
			
			characterFileName = os.environ["RIGGING_TOOL_ROOT"]+"/Characters/"+characterName+".ma"
			
			if os.path.exists(characterFileName):
				cmds.confirmDialog(title="Publish Character", message="Character already exists with that name. Aborting Publish.", button=["Accept"], defaultButton="Accept")
				return
			
			cmds.lockNode("Scene_Locked", lock=False, lockUnpublished=False)
			cmds.delete("Scene_Locked")
			
			cmds.namespace(setNamespace=":")
			namespaces = cmds.namespaceInfo(listOnlyNamespaces=True)
			
			moduleNameInfo = utils.findAllModuleNames("/Modules/Blueprint")
			validModules = moduleNameInfo[0]
			validModuleNames = moduleNameInfo[1]
			
			foundModuleInstances = []
			for n in namespaces:
				splitString = n.partition("__")
				if splitString[1] != "":
					module = splitString[0]
					if module in validModuleNames:
						foundModuleInstances.append(n)
						
			moduleGroups = []
			moduleContainers = []
			
			for moduleInstance in foundModuleInstances:
				moduleGroups.append(moduleInstance+":module_grp")
				moduleContainers.append(moduleInstance+":module_container")
				
			for container in moduleContainers:
				cmds.lockNode(container, lock=False, lockUnpublished=False)
				
			characterGroup = cmds.group(empty=True, name="character_grp")
			for group in moduleGroups:
				cmds.parent(group, characterGroup, absolute=True)
			
			cmds.select(characterGroup, replace=True)
			cmds.addAttr(at="bool", defaultValue=0, keyable=False, longName="moduleMaintenanceVisibility")
			cmds.addAttr(at="bool", defaultValue=1, keyable=True, longName="animationControlVisibility")
			
			invertModuleMaintenanceVisibility = cmds.shadingNode("reverse", n="reverse_moduleMaintenanceVisibility", asUtility=True)
			cmds.connectAttr(characterGroup+".moduleMaintenanceVisibility", invertModuleMaintenanceVisibility+".inputX",force=True)
			
			moduleVisibilityMultiply = cmds.shadingNode("multiplyDivide", n="moduleVisibilityMultiply", asUtility=True)
			cmds.connectAttr(invertModuleMaintenanceVisibility+".outputX", moduleVisibilityMultiply+".input1X")
			cmds.connectAttr(characterGroup+".animationControlVisibility", moduleVisibilityMultiply+".input2X")
			
			characterNodes = list(moduleContainers)
			characterNodes.append(characterGroup)
			characterNodes.append(invertModuleMaintenanceVisibility)
			characterNodes.append(moduleVisibilityMultiply)
			
			characterContainer = cmds.container(name="character_container")
			utils.addNodeToContainer(characterContainer, characterNodes)
			
			cmds.container(characterContainer, edit=True, publishAndBind=[characterGroup+".animationControlVisibility", "animControlVis"])
			
			for container in moduleContainers:
				moduleNamespace = utils.stripLeadingNamespace(container)[0]
				blueprintJointsGrp = moduleNamespace+":blueprint_joints_grp"
				
				cmds.connectAttr(characterGroup+".moduleMaintenanceVisibility", blueprintJointsGrp+".visibility")
				cmds.setAttr(blueprintJointsGrp+".overrideEnabled", 1)
				
				publishedNames = cmds.container(container, q=True, publishName=True)
				userSpecifiedName = moduleNamespace.partition("__")[2]
				
				for name in publishedNames:
					cmds.container(characterContainer, edit=True, publishAndBind=[container+"."+name, userSpecifiedName+"_"+name])
			characterContainers = list(moduleContainers)
			characterContainers.append(characterContainer)
			
			cmds.select(all=True)
			topLevelTransforms = cmds.ls(sl=True, transforms=True)
			cmds.select(clear=True)
			
			topLevelTransforms.remove(characterGroup)
			
			if len(topLevelTransforms) != 0:
				nonBlueprintGroup = cmds.group(topLevelTransforms, absolute=True, parent=characterGroup, name="non_blueprint_grp")
				cmds.setAttr(nonBlueprintGroup+".overrideEnabled", 1)
				cmds.setAttr(nonBlueprintGroup+".overrideDisplayType", 2) #Reference display type
				
				cmds.select(nonBlueprintGroup, replace=True)
				cmds.addAttr(at="bool", defaultValue=1, longName="display", k=True)
				
				visibilityMultiply = cmds.shadingNode("multiplyDivide", n="non_blueprint_visibilityMultiply", asUtility=True)
				cmds.connectAttr(invertModuleMaintenanceVisibility+".outputX", visibilityMultiply+".input1X", force=True)
				cmds.connectAttr(nonBlueprintGroup+".display", visibilityMultiply+".input2X", force=True)
				cmds.connectAttr(visibilityMultiply+".outputX", nonBlueprintGroup+".visibility", force=True)
				
				nonBlueprintContainer = cmds.container(addNode=nonBlueprintGroup, ihb=True, includeNetwork=True, includeShapes=True, name="non_blueprint_container")
				utils.addNodeToContainer(characterContainer, nonBlueprintContainer)
				characterContainers.append(nonBlueprintContainer)
				
				publishedName = "displayNonBlueprintNodes"
				cmds.container(nonBlueprintContainer, edit=True, publishAndBind=[nonBlueprintGroup+".display", publishedName])
				cmds.container(characterContainer, edit=True, publishAndBind=[nonBlueprintContainer+"."+publishedName, publishedName])
			
			for container in characterContainers:
				cmds.lockNode(container, lock=True, lockUnpublished=True)
				
			cmds.select(characterContainer)
			cmds.file(characterFileName, exportSelected=True, type="mayaAscii")
			
			scenePublished = cmds.spaceLocator(n="Scene_Published")[0]
			cmds.setAttr(scenePublished+".visibility", 0)
			cmds.lockNode(scenePublished, lock=True, lockUnpublished=True)
			
			cmds.select(clear=True)
			
			cmds.button(self.UIElements["publishBtn"], edit=True, enable=False)
			
			
			