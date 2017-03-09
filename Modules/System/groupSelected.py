import maya.cmds as cmds

from functools import partial
import os

import System.utils as utils
reload(utils)


class GroupSelected:
	def __init__(self):
		self.objectsToGroup = []
		
	def show_UI(self):
		self.findSelectionToGroup()
		
		if len(self.objectsToGroup) == 0:
			return
			
		self.UIElements = {}
		
		if cmds.window("groupSelected_UI_window", exists=True):
			cmds.deleteUI("groupSelected_UI_window")
			
		windowWidth = 300
		windowHeight = 150
		self.UIElements["window"] = cmds.window("groupSelected_UI_window", width=windowWidth, height=windowHeight, title="Group Selected" , sizeable=False)
		
		self.UIElements["topLevelColumn"] = cmds.columnLayout(adj=True, columnAlign="center", rs=3)
		
		self.UIElements["groupName_rowColumn"] = cmds.rowColumnLayout(nc=2, columnAttach=(1, "right", 0), columnWidth=[(1,80),(2,windowWidth-90)])
		cmds.text(label="Group Name :")
		self.UIElements["groupName"] = cmds.textField( text="group")
		
		cmds.setParent(self.UIElements["topLevelColumn"])
		
		self.UIElements["createAt_rowColumn"] = cmds.rowColumnLayout(numberOfColumns=3, columnAttach=(1, "right", 0), columnWidth=[(1,80), (2, windowWidth-170) , (3,80)])
		cmds.text(label="Position at:")
		cmds.text(label="")
		cmds.text(label="")
		
		cmds.text(label="")
		self.UIElements["createAt_lastSelected"] = cmds.button(label="Last Selected", c=self.createAtLastSelected)
		cmds.text(label="")
		
		cmds.text(label="")
		self.UIElements["createAt_averagePosition"] = cmds.button(label="Average Position", c=self.creatAtAveragePosition)
		cmds.text(label="")
		
		cmds.setParent(self.UIElements["topLevelColumn"])
		
		cmds.separator()
		
		columnWidth = (windowWidth/2) + 5
		self.UIElements["button_row"] = cmds.rowLayout(nc=2, columnWidth=[(1, columnWidth), (2, columnWidth)], cat=[(1,"both", 10)], columnAlign = [(1,"center"),(2,"center")])
		cmds.button(label="Accept", c=self.acceptWindow)
		cmds.button(label="Cancel", c=self.cancelWindow)
		
		cmds.showWindow(self.UIElements["window"])
		
		
		
		self.createTemporaryGroupRepresentation()
		self.createAtLastSelected()
		
		cmds.select(self.tempGroupTransform)
		cmds.setToolTo("moveSuperContext")
		
		
		
		
	def findSelectionToGroup(self):
		selectedObjects = cmds.ls(selection=True, transforms=True)
		
		self.objectsToGroup = []
		for obj in selectedObjects:
			valid = False
			
			if obj.find("module_transform") != 1:
				splitString = obj.rsplit("module_transform")
				if splitString[1] == "":
					valid = True
					
			if valid == False and obj.find("Group__") == 0:
				valid = True
				
			if valid == True:
				self.objectsToGroup.append(obj)
				
				
	def createTemporaryGroupRepresentation(self):
		controlGrpFile = os.environ["RIGGING_TOOL_ROOT"]+"/ControlObjects/Blueprint/controlGroup_control.ma"
		cmds.file(controlGrpFile, i=True)
		
		self.tempGroupTransform = cmds.rename("controlGroup_control", "Group__tempGroupTransform__")
		
		cmds.connectAttr(self.tempGroupTransform+".scaleY", self.tempGroupTransform+".scaleX")
		cmds.connectAttr(self.tempGroupTransform+".scaleY", self.tempGroupTransform+".scaleZ")
		
		for attr in ["scaleX", "scaleZ", "visibility"]:
			cmds.setAttr(self.tempGroupTransform+"."+attr, l=True, k=False)
			
		cmds.aliasAttr("globalScale", self.tempGroupTransform+".scaleY")
		
		
		
	def createAtLastSelected(self, *args):
		controlPos = cmds.xform(self.objectsToGroup[len(self.objectsToGroup)-1], q=True, worldSpace=True, translation=True)
		cmds.xform(self.tempGroupTransform, worldSpace=True, absolute=True, translation=controlPos)
		
	
	def creatAtAveragePosition(self, *args):
		controlPos = [0.0, 0.0, 0.0]
		for obj in self.objectsToGroup:
			objPos = cmds.xform(obj, q=True, worldSpace=True, translation=True)
			controlPos[0]  += objPos[0]
			controlPos[1]  += objPos[1]
			controlPos[2]  += objPos[2]
			
		numberOfObjects = len(self.objectsToGroup)
		controlPos[0] /= numberOfObjects
		controlPos[1] /= numberOfObjects
		controlPos[2] /= numberOfObjects
		
		cmds.xform( self.tempGroupTransform, worldSpace=True, absolute=True, translation=controlPos)
		
		
	def cancelWindow(self, *args):
		cmds.deleteUI(self.UIElements["window"])
		cmds.delete(self.tempGroupTransform)
	
	def acceptWindow(self, *args):
		print "Accept"
	