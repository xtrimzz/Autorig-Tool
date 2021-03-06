import maya.cmds as cmds

scriptJobNum = None

class ModuleMaintenance_shelfTool:
	def __init__(self):
		global scriptJobNum
		
		import System.moduleMaintenance as moduleMaintenance
		reload(moduleMaintenance)
		
		modMaintenance = moduleMaintenance.ModuleMaintenance(self)
		
		if scriptJobNum == None:
			modMaintenance.setModuleMaintenanceVisibility(True)
			
			modMaintenance.objectSelected()
			
		else:
			modMaintenance.setModuleMaintenanceVisibility(False)
			
			if cmds.window("modMaintain_UI_window", exists=True):
				cmds.deleteUI("modMaintain_UI_window")
			
			if cmds.scriptJob(exists=scriptJobNum):
				cmds.scriptJob(kill=scriptJobNum)
			scriptJobNum = None 
			
	def setScriptJobNum(self, num):
		global scriptJobNum
		scriptJobNum = num
	
	def getScriptJobNum(self):
		global scriptJobNum
		return scriptJobNum