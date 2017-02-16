def findAllModules(relativeDirectory):
	# Search the relative directory for all available modules
	# Return a list of all module names (excluding the ".py" extension)
	allPyFiles = findAllFiles(relativeDirectory, ".py")
	
	returnModules = []
	
	for file in allPyFiles:
		if file != "__init__":
			returnModules.append(file)
	
	return returnModules
	
def findAllFiles(relativeDirectory, fileExtension):

	# Search the relative directory for all files with the given extension
	# Return a list of all file names, excluding the file extension
	
	import os
	
	fileDirectory = os.environ["RIGGING_TOOL_ROOT"] + "/" + relativeDirectory + "/"
	
	allFiles = os.listdir(fileDirectory)

	#refine  all files, listing only those of the specified file extension
	returnFiles = []

	for f in allFiles:
		splitString = str(f).rpartition(fileExtension)
		if not splitString[1] =="" and splitString[2] =="":
			returnFiles.append(splitString[0])
			
	return returnFiles 

def findHighestTrailingNumber(names, basename):
	import re
	highestValue = 0
	
	#Search for our base name
	for n in names:
		if n.find(basename) == 0:
			suffix = n.partition(basename)[2]
			
			#to make sure it only contain numeric data
			if re.match("^[0-9]*$", suffix):
				numericalElement = int(suffix)
				
				#compare it to highest value
				if numericalElement > highestValue:
					highestValue = numericalElement
					
	return highestValue
	
	
def stripLeadingNamespace(nodeName):
	#return and split the name space
	if str(nodeName).find(":") == -1:
		return None
		
	splitString = str(nodeName).partition(":")
	
	return [splitString[0], splitString[2]]
			