//Maya ASCII 2016 scene
//Name: hollas.ma
//Last modified: Mon, May 01, 2017 08:46:29 AM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "character_grp";
	rename -uid "330E1294-4D1B-708D-43D4-4CAA586FF044";
	addAttr -ci true -sn "moduleMaintenanceVisibility" -ln "moduleMaintenanceVisibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "animationControlVisibility" -ln "animationControlVisibility" 
		-dv 1 -min 0 -max 1 -at "bool";
	setAttr ".moduleMaintenanceVisibility";
	setAttr -k on ".animationControlVisibility";
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:module_grp" -p "character_grp";
	rename -uid "8FEECDA5-4594-1CAB-0FDE-70A67EFB6F9B";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:HOOK_IN" -p "Finger__instance_1:module_grp";
	rename -uid "EC0C14E5-48E9-EFB2-4B63-E1BD15338DA8";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:blueprint_joints_grp" -p "Finger__instance_1:HOOK_IN";
	rename -uid "2220A93A-4A23-ACA9-6F90-AC8B5B010733";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_root_joint" -p "Finger__instance_1:blueprint_joints_grp";
	rename -uid "D65F197A-4A83-4BF4-08A3-3ABA39AA00C5";
	setAttr ".t" -type "double3" 1.1872496413344549 0 -0.69209801877122601 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_knuckle_1_joint" -p "Finger__instance_1:blueprint_root_joint";
	rename -uid "C4C72F3A-4E7D-E5A9-2A87-04AB75E428AD";
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_knuckle_2_joint" -p "Finger__instance_1:blueprint_knuckle_1_joint";
	rename -uid "4242AC3F-4722-0D8A-D655-BC9430BDF5ED";
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_knuckle_3_joint" -p "Finger__instance_1:blueprint_knuckle_2_joint";
	rename -uid "D513AA18-4EF6-4E69-4871-278834E8CB32";
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_end_joint" -p "Finger__instance_1:blueprint_knuckle_3_joint";
	rename -uid "1554F589-422D-C426-838D-AFB88DC7510B";
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:creationPose_joints_grp" -p "Finger__instance_1:HOOK_IN";
	rename -uid "A108D2ED-4BE4-5189-0038-97AF4A6A934D";
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:creationPose_root_joint" -p "Finger__instance_1:creationPose_joints_grp";
	rename -uid "A9F42D29-48B7-F694-9EFC-BFB0CAD58FDD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1872496413344549 0 -0.69209801877122601 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:creationPose_knuckle_1_joint" -p "Finger__instance_1:creationPose_root_joint";
	rename -uid "A0696B56-4B11-A9C0-FACF-19A452F76F09";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:creationPose_knuckle_2_joint" -p "Finger__instance_1:creationPose_knuckle_1_joint";
	rename -uid "FF5A3D6C-43C3-AA67-D819-83A629BAC730";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:creationPose_knuckle_3_joint" -p "Finger__instance_1:creationPose_knuckle_2_joint";
	rename -uid "D230789D-455C-254C-9E77-76BC3F41D3F0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:creationPose_end_joint" -p "Finger__instance_1:creationPose_knuckle_3_joint";
	rename -uid "0EC6AA95-4C88-FB01-C6C1-7D9F9CFE88DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:SETTINGS" -p "Finger__instance_1:module_grp";
	rename -uid "345DF3F5-4E44-B06E-1024-418AB24F5B87";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "Finger__instance_1:SETTINGSShape" -p "Finger__instance_1:SETTINGS";
	rename -uid "5E2766C2-4B33-191D-0361-3EA1C1264CBA";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_2:module_grp" -p "character_grp";
	rename -uid "A3B3B102-4C97-40FD-284D-60A031A3CAF0";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_2:HOOK_IN" -p "LegFoot__instance_2:module_grp";
	rename -uid "15302B7B-47E6-8947-3FAF-A48F3EF7963F";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_2:blueprint_joints_grp" -p "LegFoot__instance_2:HOOK_IN";
	rename -uid "6F18A664-4DE6-B5F3-2768-40964966EB6B";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:blueprint_hip_joint" -p "LegFoot__instance_2:blueprint_joints_grp";
	rename -uid "2524A1F2-4DFD-9602-E77D-B5BBB8B1D60F";
	setAttr ".t" -type "double3" 0 0 3.0671748937792715 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.00042079857104345553 -14.036338821953265 -89.999999999278145 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:blueprint_knee_joint" -p "LegFoot__instance_2:blueprint_hip_joint";
	rename -uid "89948753-4874-6BC3-EE9B-6497E036F894";
	setAttr ".t" -type "double3" 1.8701262474060059 -3.3881317890172014e-021 0 ;
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072677644633682 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:blueprint_ankle_joint" -p "LegFoot__instance_2:blueprint_knee_joint";
	rename -uid "2797C5AA-4CCA-8753-1C19-6299A53C8825";
	setAttr ".t" -type "double3" 1.8701262474060059 -1.2237932021930131e-017 1.7763568394002505e-015 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.995153432373485 -85.601391650878085 -0.0046357146668845545 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:blueprint_ball_joint" -p "LegFoot__instance_2:blueprint_ankle_joint";
	rename -uid "C3BD8FD1-44B8-2369-5F85-34863C1AF8CF";
	setAttr ".t" -type "double3" 1.4343217611312866 1.432250014143932e-006 6.4765469834391083e-006 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.00000150274299 1.5902773407317584e-015 -18.434946612049401 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:blueprint_toe_joint" -p "LegFoot__instance_2:blueprint_ball_joint";
	rename -uid "08219134-4CAB-E727-3ED7-59BADB083EEA";
	setAttr ".t" -type "double3" 1.360716700553894 1.2176973003519414e-009 6.2172489379008766e-015 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_2:creationPose_joints_grp" -p "LegFoot__instance_2:HOOK_IN";
	rename -uid "68793432-404F-E1E3-39D4-1F8C8001644C";
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:creationPose_hip_joint" -p "LegFoot__instance_2:creationPose_joints_grp";
	rename -uid "410C8ECB-4BB0-C466-1421-A5BEB2046BCC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 3.0671748937792715 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.00042079857104345547 -14.036338821953263 -89.999999999278145 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:creationPose_knee_joint" -p "LegFoot__instance_2:creationPose_hip_joint";
	rename -uid "39423761-47CD-A162-16B3-3D9C953849B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8701262474060072 -3.3881317890172014e-021 0 ;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072677644633679 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:creationPose_ankle_joint" -p "LegFoot__instance_2:creationPose_knee_joint";
	rename -uid "42C01EA9-4B48-0189-E6FF-D8AE4140E1DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8701262474060056 -1.2237932021930131e-017 1.7763568394002505e-015 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.995153432373968 -85.601391650878099 -0.0046357146666357475 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:creationPose_ball_joint" -p "LegFoot__instance_2:creationPose_ankle_joint";
	rename -uid "41758959-460E-4BA7-0C7B-61A0DADC779C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4343217617107449 1.432250014143932e-006 6.4765469834391083e-006 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.00000150274299 1.5902773407317584e-015 -18.434946612049401 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "LegFoot__instance_2:creationPose_toe_joint" -p "LegFoot__instance_2:creationPose_ball_joint";
	rename -uid "DEEA8589-430C-9A18-3856-D2AD7631CD86";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.360716700553894 1.2176973003519414e-009 6.2172489379008766e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "LegFoot__instance_2:SETTINGS" -p "LegFoot__instance_2:module_grp";
	rename -uid "B82193EE-4D4A-E8F0-51DA-B89D265A51BE";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "LegFoot__instance_2:SETTINGSShape" -p "LegFoot__instance_2:SETTINGS";
	rename -uid "EB07CADD-413E-EDEB-F22B-D9BB38C0E79E";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_4:module_grp" -p "character_grp";
	rename -uid "2C8177A9-4E82-A68B-DA16-F898085AD46A";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_4:HOOK_IN" -p "RootTransform__instance_4:module_grp";
	rename -uid "4ECCE673-4093-F81C-253F-BA84DA8867DC";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_4:blueprint_joints_grp" -p "RootTransform__instance_4:HOOK_IN";
	rename -uid "B094346F-4BA4-FC88-20D5-B8A3B3400271";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "RootTransform__instance_4:blueprint_joint" -p "RootTransform__instance_4:blueprint_joints_grp";
	rename -uid "F4F066D6-4B93-BD8E-3F65-81AB42B0246C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_4:creationPose_joints_grp" -p "RootTransform__instance_4:HOOK_IN";
	rename -uid "15509183-4D1A-7E10-60CA-29AEEE87C0A8";
lockNode -l 1 -lu 1;
createNode joint -n "RootTransform__instance_4:creationPose_joint" -p "RootTransform__instance_4:creationPose_joints_grp";
	rename -uid "9CD9511D-424A-A11D-5A9C-8FBA2D4B2424";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -4.5151030114011412 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
lockNode -l 1 -lu 1;
createNode transform -n "RootTransform__instance_4:SETTINGS" -p "RootTransform__instance_4:module_grp";
	rename -uid "70CCA621-4CE3-BF4C-AE23-429DF573C0EA";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "RootTransform__instance_4:SETTINGSShape" -p "RootTransform__instance_4:SETTINGS";
	rename -uid "17860A06-45D4-C8B1-4F6A-078A86B88300";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	rename -uid "3CFB3CB6-4C2B-8B46-DEA2-7BB0B4E985E5";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 7 ".boc";
	setAttr -s 6 ".ish[1:6]" yes yes yes yes yes yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/05/01 08:46:29";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","instance_2_activeModule"
		,"borderConnections[3]","instance_2_creationPoseWeight","borderConnections[4]","instance_4_activeModule"
		,"borderConnections[5]","instance_4_creationPoseWeight","borderConnections[6]"} ;
lockNode -l 1 -lu 1;
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	rename -uid "C9604AE2-44F8-F960-C566-71854ECB7545";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout15";
	rename -uid "A1E63B38-4146-6FF5-8EE6-959D8B9F1EC9";
	setAttr ".ihi" 0;
	setAttr -s 6 ".hyp";
createNode container -n "Finger__instance_1:module_container";
	rename -uid "668992C7-4C61-0128-C16A-75B3C474D6AA";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/05/01 08:46:13";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	rename -uid "E1F9EBB6-4BF8-2133-EA69-F5BA514D080F";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode container -n "LegFoot__instance_2:module_container";
	rename -uid "2F4E8095-4139-0FD2-A46C-6CAABDF34C92";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/05/01 08:46:13";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "RootTransform__instance_4:module_container";
	rename -uid "6275DF8C-46DC-A534-AA1C-39A60BDB385A";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/05/01 08:46:13";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout10";
	rename -uid "1DDDEDA3-4817-5AE9-CC3C-23A3DA3A23D0";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "Finger__instance_1:blueprint_container";
	rename -uid "D8186143-4FEF-630D-CFB2-0185B4C02D4E";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/05/01 08:46:13";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_root_joint_dummyRotationsMultiply";
	rename -uid "C46799D0-4F8F-2246-8AF9-A49DB43953E1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_root_joint_addRotations";
	rename -uid "F0E1053B-4F4B-1435-7D1A-CB88BDFB0B35";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion1";
	rename -uid "147EF9EF-4C2D-839F-754D-82B5C7751E7E";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_1_joint_addRotations";
	rename -uid "C45B047A-4026-F8F8-DA6B-7D93191B724D";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion2";
	rename -uid "D43A5A2E-4264-05E0-2867-DD869712E025";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_1_joint_addTx";
	rename -uid "452CDEB5-46FF-0AFF-2003-0AA028132A69";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_2_joint_addRotations";
	rename -uid "24863846-4952-B0A5-94C8-579B60F6163E";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion3";
	rename -uid "3F5FF7AA-4BB3-32F5-8EC3-56ABB8EBD5C8";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_2_joint_addTx";
	rename -uid "A6315C5C-481A-AE34-4C86-C7AD6F4758AE";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_3_joint_addRotations";
	rename -uid "AA5717EE-4D5F-6E94-F2D9-8E9DE773B5F1";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion4";
	rename -uid "D7F27AEE-48F7-A790-2FC8-A89AB74E12FF";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_3_joint_addTx";
	rename -uid "9F3F43F6-4E61-03FD-888F-0B81515C376D";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_end_joint_addTx";
	rename -uid "F25B8BCB-4A51-883D-0509-82B512DD9490";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout9";
	rename -uid "91186A79-4FB8-A637-9D63-9999FDC93172";
	setAttr ".ihi" 0;
	setAttr -s 32 ".hyp";
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_1_joint_dummyRotationsMultiply";
	rename -uid "5248FD22-443D-2D4C-CD2A-C1B60B87B9C8";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx";
	rename -uid "E7D7149D-41DB-8575-2F12-A7B4927D9391";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_2_joint_dummyRotationsMultiply";
	rename -uid "D541F206-4AEF-FF43-7A8C-60AC44A33923";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx";
	rename -uid "349966BD-4CB1-2E24-A9B8-7480C53727FB";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_3_joint_dummyRotationsMultiply";
	rename -uid "E580E1E2-43D8-6FC8-DADC-D4A0E685E84E";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx";
	rename -uid "2ECFFE29-4A7D-9420-D971-21B5E0B4F2E4";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_end_joint_original_Tx";
	rename -uid "1B053366-4A21-3AB1-6CDF-25A1FE7E6129";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout12";
	rename -uid "87B9DF70-4F81-6B51-C26F-3A89D07C4228";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "LegFoot__instance_2:blueprint_container";
	rename -uid "B5A6B304-44C3-58F5-8C36-CDAF4AE2FDAA";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/05/01 08:46:13";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_2:blueprint_hip_joint_addRotations";
	rename -uid "F0FB1BF5-4FCA-4872-AD10-9F895E5D0C42";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion5";
	rename -uid "EC64CBD4-4D43-459B-EB28-5D8F97134614";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_2:blueprint_knee_joint_addRotations";
	rename -uid "37838EB4-45A7-BD99-F016-1B9A638EDD72";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion6";
	rename -uid "EC19467F-4B92-BAB7-61E2-DDA6F8803D5C";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_2:blueprint_knee_joint_addTx";
	rename -uid "9A21472B-4B98-DFB3-DC00-F4A1F1BB1FCD";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_2:blueprint_ankle_joint_addRotations";
	rename -uid "0AC63365-4125-DE40-7F9C-85BF48D2A1CA";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion7";
	rename -uid "020833AE-4547-DF2A-7182-D2B1BE8F0204";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_2:blueprint_ankle_joint_addTx";
	rename -uid "5EF21191-4695-A197-6886-12AA1C2BC7D7";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_2:blueprint_ball_joint_addRotations";
	rename -uid "D068C3FD-4EC8-E6F3-E886-7AACA4BCD756";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion8";
	rename -uid "07A319DC-477C-8DD7-ECC7-9DBF845C40FE";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_2:blueprint_ball_joint_addTx";
	rename -uid "E4A2CDCB-4B24-E591-8F1D-BC97DF67AE1F";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "LegFoot__instance_2:blueprint_toe_joint_addTx";
	rename -uid "A1A2458F-4606-F9D2-FEB9-AB83274C455E";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout11";
	rename -uid "6E75AF43-4FFA-6CE7-C052-E6803B293229";
	setAttr ".ihi" 0;
	setAttr -s 32 ".hyp";
createNode multiplyDivide -n "LegFoot__instance_2:blueprint_hip_joint_dummyRotationsMultiply";
	rename -uid "D63A9943-4BAF-87A7-599E-EDA1E48B98C8";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_2:blueprint_knee_joint_dummyRotationsMultiply";
	rename -uid "4BE14BB8-4C47-22E8-181B-60BF08BE2253";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_2:blueprint_knee_joint_original_Tx";
	rename -uid "2EA1E887-4281-CA24-2204-EA8710FF1EF5";
	setAttr ".i1" -type "float3" 1.8701262 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_2:blueprint_ankle_joint_dummyRotationsMultiply";
	rename -uid "88FA4F15-4DAD-AD9C-AC3A-35ABFC06A1A7";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_2:blueprint_ankle_joint_original_Tx";
	rename -uid "D90C2A6E-4168-7B8E-52E4-0BA182AC930E";
	setAttr ".i1" -type "float3" 1.8701262 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_2:blueprint_ball_joint_dummyRotationsMultiply";
	rename -uid "6328553F-452D-E4C5-63F6-4280F08D272F";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_2:blueprint_ball_joint_original_Tx";
	rename -uid "8BF7F2E6-4AAC-54E1-FE9E-4FA9CD461275";
	setAttr ".i1" -type "float3" 1.4343218 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "LegFoot__instance_2:blueprint_toe_joint_original_Tx";
	rename -uid "99E3C8F9-4040-7A88-3172-FFA3635598FF";
	setAttr ".i1" -type "float3" 1.3607167 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout14";
	rename -uid "E6B464CA-4921-48E3-2031-648A1E3BE979";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "RootTransform__instance_4:blueprint_container";
	rename -uid "0E70F8D3-4861-9C04-B7FC-F998B0B1A145";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/05/01 08:46:13";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "RootTransform__instance_4:blueprint_joint_addRotations";
	rename -uid "74CBA5C5-4A6B-BDA9-C5A3-F894818FF26B";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion9";
	rename -uid "EFB7F02E-4863-B5B7-F215-1DB0B5830F38";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "RootTransform__instance_4:blueprint_joint_addTranslate";
	rename -uid "A24E23C3-48C1-7583-A2D0-39BA121B567F";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "RootTransform__instance_4:blueprint_jointaddScale";
	rename -uid "6B94CE66-4B0D-DE4E-813B-E494B4C2FA54";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout13";
	rename -uid "ECDF1904-49D9-9E59-590A-4584956CB80B";
	setAttr ".ihi" 0;
	setAttr -s 11 ".hyp";
createNode multiplyDivide -n "RootTransform__instance_4:blueprint_joint_dummyRotationsMultiply";
	rename -uid "03B474DB-4C60-FAF4-76C5-45889DC962BC";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "RootTransform__instance_4:blueprint_joint_original_Translate";
	rename -uid "C96F81DB-4289-B9F6-E6DB-03AD22C951E4";
	setAttr ".i1" -type "float3" 0 0 -4.5151029 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "RootTransform__instance_4:blueprint_joint_original_scale";
	rename -uid "6CE3D4A2-4DDB-7E24-4864-32B1DDC5AB68";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 40 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Finger__instance_1:HOOK_IN.sy" "Finger__instance_1:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "Finger__instance_1:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion1.o" "Finger__instance_1:blueprint_root_joint.r" -l on
		;
connectAttr "Finger__instance_1:blueprint_root_joint.s" "Finger__instance_1:blueprint_knuckle_1_joint.is"
		 -l on;
connectAttr "unitConversion2.o" "Finger__instance_1:blueprint_knuckle_1_joint.r"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addTx.o1" "Finger__instance_1:blueprint_knuckle_1_joint.tx"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint.s" "Finger__instance_1:blueprint_knuckle_2_joint.is"
		 -l on;
connectAttr "unitConversion3.o" "Finger__instance_1:blueprint_knuckle_2_joint.r"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addTx.o1" "Finger__instance_1:blueprint_knuckle_2_joint.tx"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint.s" "Finger__instance_1:blueprint_knuckle_3_joint.is"
		 -l on;
connectAttr "unitConversion4.o" "Finger__instance_1:blueprint_knuckle_3_joint.r"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addTx.o1" "Finger__instance_1:blueprint_knuckle_3_joint.tx"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint.s" "Finger__instance_1:blueprint_end_joint.is"
		 -l on;
connectAttr "Finger__instance_1:blueprint_end_joint_addTx.o1" "Finger__instance_1:blueprint_end_joint.tx"
		 -l on;
connectAttr "Finger__instance_1:creationPose_root_joint.s" "Finger__instance_1:creationPose_knuckle_1_joint.is"
		 -l on;
connectAttr "Finger__instance_1:creationPose_knuckle_1_joint.s" "Finger__instance_1:creationPose_knuckle_2_joint.is"
		 -l on;
connectAttr "Finger__instance_1:creationPose_knuckle_2_joint.s" "Finger__instance_1:creationPose_knuckle_3_joint.is"
		 -l on;
connectAttr "Finger__instance_1:creationPose_knuckle_3_joint.s" "Finger__instance_1:creationPose_end_joint.is"
		 -l on;
connectAttr "LegFoot__instance_2:HOOK_IN.sy" "LegFoot__instance_2:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "LegFoot__instance_2:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion5.o" "LegFoot__instance_2:blueprint_hip_joint.r" -l on
		;
connectAttr "LegFoot__instance_2:blueprint_hip_joint.s" "LegFoot__instance_2:blueprint_knee_joint.is"
		 -l on;
connectAttr "unitConversion6.o" "LegFoot__instance_2:blueprint_knee_joint.r" -l on
		;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_addTx.o1" "LegFoot__instance_2:blueprint_knee_joint.tx"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_knee_joint.s" "LegFoot__instance_2:blueprint_ankle_joint.is"
		 -l on;
connectAttr "unitConversion7.o" "LegFoot__instance_2:blueprint_ankle_joint.r" -l
		 on;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_addTx.o1" "LegFoot__instance_2:blueprint_ankle_joint.tx"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint.s" "LegFoot__instance_2:blueprint_ball_joint.is"
		 -l on;
connectAttr "unitConversion8.o" "LegFoot__instance_2:blueprint_ball_joint.r" -l on
		;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_addTx.o1" "LegFoot__instance_2:blueprint_ball_joint.tx"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_ball_joint.s" "LegFoot__instance_2:blueprint_toe_joint.is"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_toe_joint_addTx.o1" "LegFoot__instance_2:blueprint_toe_joint.tx"
		 -l on;
connectAttr "LegFoot__instance_2:creationPose_hip_joint.s" "LegFoot__instance_2:creationPose_knee_joint.is"
		 -l on;
connectAttr "LegFoot__instance_2:creationPose_knee_joint.s" "LegFoot__instance_2:creationPose_ankle_joint.is"
		 -l on;
connectAttr "LegFoot__instance_2:creationPose_ankle_joint.s" "LegFoot__instance_2:creationPose_ball_joint.is"
		 -l on;
connectAttr "LegFoot__instance_2:creationPose_ball_joint.s" "LegFoot__instance_2:creationPose_toe_joint.is"
		 -l on;
connectAttr "RootTransform__instance_4:HOOK_IN.sy" "RootTransform__instance_4:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "RootTransform__instance_4:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion9.o" "RootTransform__instance_4:blueprint_joint.r" -l
		 on;
connectAttr "RootTransform__instance_4:blueprint_joint_addTranslate.o3" "RootTransform__instance_4:blueprint_joint.t"
		 -l on;
connectAttr "RootTransform__instance_4:blueprint_jointaddScale.o3" "RootTransform__instance_4:blueprint_joint.s"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "Finger__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "Finger__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "LegFoot__instance_2:module_container.boc[0]" "character_container.boc[3]"
		 -l on;
connectAttr "LegFoot__instance_2:module_container.boc[1]" "character_container.boc[4]"
		 -l on;
connectAttr "RootTransform__instance_4:module_container.boc[0]" "character_container.boc[5]"
		 -l on;
connectAttr "RootTransform__instance_4:module_container.boc[1]" "character_container.boc[6]"
		 -l on;
connectAttr "hyperLayout15.msg" "character_container.hl" -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "Finger__instance_1:module_container.msg" "hyperLayout15.hyp[0].dn";
connectAttr "LegFoot__instance_2:module_container.msg" "hyperLayout15.hyp[1].dn"
		;
connectAttr "RootTransform__instance_4:module_container.msg" "hyperLayout15.hyp[2].dn"
		;
connectAttr "character_grp.msg" "hyperLayout15.hyp[3].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout15.hyp[4].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout15.hyp[5].dn";
connectAttr "Finger__instance_1:SETTINGS.activeModule" "Finger__instance_1:module_container.boc[0]"
		;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout10.msg" "Finger__instance_1:module_container.hl" -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "LegFoot__instance_2:SETTINGS.activeModule" "LegFoot__instance_2:module_container.boc[0]"
		;
connectAttr "LegFoot__instance_2:SETTINGS.creationPoseWeight" "LegFoot__instance_2:module_container.boc[1]"
		;
connectAttr "hyperLayout12.msg" "LegFoot__instance_2:module_container.hl" -l on;
connectAttr "RootTransform__instance_4:SETTINGS.activeModule" "RootTransform__instance_4:module_container.boc[0]"
		;
connectAttr "RootTransform__instance_4:SETTINGS.creationPoseWeight" "RootTransform__instance_4:module_container.boc[1]"
		;
connectAttr "hyperLayout14.msg" "RootTransform__instance_4:module_container.hl" 
		-l on;
connectAttr "Finger__instance_1:module_grp.msg" "hyperLayout10.hyp[0].dn";
connectAttr "Finger__instance_1:HOOK_IN.msg" "hyperLayout10.hyp[1].dn";
connectAttr "Finger__instance_1:SETTINGS.msg" "hyperLayout10.hyp[2].dn";
connectAttr "Finger__instance_1:blueprint_container.msg" "hyperLayout10.hyp[3].dn"
		;
connectAttr "Finger__instance_1:SETTINGSShape.msg" "hyperLayout10.hyp[4].dn";
connectAttr "hyperLayout9.msg" "Finger__instance_1:blueprint_container.hl" -l on
		;
connectAttr "Finger__instance_1:blueprint_root_joint_dummyRotationsMultiply.o" "Finger__instance_1:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_root_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_dummyRotationsMultiply.o" "Finger__instance_1:blueprint_knuckle_1_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx.ox" "Finger__instance_1:blueprint_knuckle_1_joint_addTx.i1[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_dummyRotationsMultiply.o" "Finger__instance_1:blueprint_knuckle_2_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addRotations.o3" "unitConversion3.i"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx.ox" "Finger__instance_1:blueprint_knuckle_2_joint_addTx.i1[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_dummyRotationsMultiply.o" "Finger__instance_1:blueprint_knuckle_3_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addRotations.o3" "unitConversion4.i"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx.ox" "Finger__instance_1:blueprint_knuckle_3_joint_addTx.i1[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_end_joint_original_Tx.ox" "Finger__instance_1:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_root_joint_addRotations.msg" "hyperLayout9.hyp[0].dn"
		;
connectAttr "Finger__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout9.hyp[1].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addRotations.msg" "hyperLayout9.hyp[2].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_dummyRotationsMultiply.msg" "hyperLayout9.hyp[3].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addTx.msg" "hyperLayout9.hyp[4].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx.msg" "hyperLayout9.hyp[5].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addRotations.msg" "hyperLayout9.hyp[6].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_dummyRotationsMultiply.msg" "hyperLayout9.hyp[7].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addTx.msg" "hyperLayout9.hyp[8].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx.msg" "hyperLayout9.hyp[9].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addRotations.msg" "hyperLayout9.hyp[10].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_dummyRotationsMultiply.msg" "hyperLayout9.hyp[11].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addTx.msg" "hyperLayout9.hyp[12].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx.msg" "hyperLayout9.hyp[13].dn"
		;
connectAttr "Finger__instance_1:blueprint_end_joint_addTx.msg" "hyperLayout9.hyp[14].dn"
		;
connectAttr "Finger__instance_1:blueprint_end_joint_original_Tx.msg" "hyperLayout9.hyp[15].dn"
		;
connectAttr "Finger__instance_1:blueprint_joints_grp.msg" "hyperLayout9.hyp[16].dn"
		;
connectAttr "Finger__instance_1:creationPose_joints_grp.msg" "hyperLayout9.hyp[17].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout9.hyp[18].dn";
connectAttr "unitConversion2.msg" "hyperLayout9.hyp[19].dn";
connectAttr "unitConversion3.msg" "hyperLayout9.hyp[20].dn";
connectAttr "unitConversion4.msg" "hyperLayout9.hyp[21].dn";
connectAttr "Finger__instance_1:blueprint_root_joint.msg" "hyperLayout9.hyp[22].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint.msg" "hyperLayout9.hyp[23].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint.msg" "hyperLayout9.hyp[24].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint.msg" "hyperLayout9.hyp[25].dn"
		;
connectAttr "Finger__instance_1:blueprint_end_joint.msg" "hyperLayout9.hyp[26].dn"
		;
connectAttr "Finger__instance_1:creationPose_root_joint.msg" "hyperLayout9.hyp[27].dn"
		;
connectAttr "Finger__instance_1:creationPose_knuckle_1_joint.msg" "hyperLayout9.hyp[28].dn"
		;
connectAttr "Finger__instance_1:creationPose_knuckle_2_joint.msg" "hyperLayout9.hyp[29].dn"
		;
connectAttr "Finger__instance_1:creationPose_knuckle_3_joint.msg" "hyperLayout9.hyp[30].dn"
		;
connectAttr "Finger__instance_1:creationPose_end_joint.msg" "hyperLayout9.hyp[31].dn"
		;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx.i2x"
		 -l on;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx.i2x"
		 -l on;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx.i2x"
		 -l on;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "LegFoot__instance_2:module_grp.msg" "hyperLayout12.hyp[0].dn";
connectAttr "LegFoot__instance_2:HOOK_IN.msg" "hyperLayout12.hyp[1].dn";
connectAttr "LegFoot__instance_2:SETTINGS.msg" "hyperLayout12.hyp[2].dn";
connectAttr "LegFoot__instance_2:blueprint_container.msg" "hyperLayout12.hyp[3].dn"
		;
connectAttr "LegFoot__instance_2:SETTINGSShape.msg" "hyperLayout12.hyp[4].dn";
connectAttr "hyperLayout11.msg" "LegFoot__instance_2:blueprint_container.hl" -l on
		;
connectAttr "LegFoot__instance_2:blueprint_hip_joint_dummyRotationsMultiply.o" "LegFoot__instance_2:blueprint_hip_joint_addRotations.i3[0]"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_hip_joint_addRotations.o3" "unitConversion5.i"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_dummyRotationsMultiply.o" "LegFoot__instance_2:blueprint_knee_joint_addRotations.i3[0]"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_addRotations.o3" "unitConversion6.i"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_original_Tx.ox" "LegFoot__instance_2:blueprint_knee_joint_addTx.i1[0]"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_dummyRotationsMultiply.o" "LegFoot__instance_2:blueprint_ankle_joint_addRotations.i3[0]"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_addRotations.o3" "unitConversion7.i"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_original_Tx.ox" "LegFoot__instance_2:blueprint_ankle_joint_addTx.i1[0]"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_dummyRotationsMultiply.o" "LegFoot__instance_2:blueprint_ball_joint_addRotations.i3[0]"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_addRotations.o3" "unitConversion8.i"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_original_Tx.ox" "LegFoot__instance_2:blueprint_ball_joint_addTx.i1[0]"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_toe_joint_original_Tx.ox" "LegFoot__instance_2:blueprint_toe_joint_addTx.i1[0]"
		 -l on;
connectAttr "LegFoot__instance_2:blueprint_hip_joint_addRotations.msg" "hyperLayout11.hyp[0].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_hip_joint_dummyRotationsMultiply.msg" "hyperLayout11.hyp[1].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_addRotations.msg" "hyperLayout11.hyp[2].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_dummyRotationsMultiply.msg" "hyperLayout11.hyp[3].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_addTx.msg" "hyperLayout11.hyp[4].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_original_Tx.msg" "hyperLayout11.hyp[5].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_addRotations.msg" "hyperLayout11.hyp[6].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_dummyRotationsMultiply.msg" "hyperLayout11.hyp[7].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_addTx.msg" "hyperLayout11.hyp[8].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_original_Tx.msg" "hyperLayout11.hyp[9].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_addRotations.msg" "hyperLayout11.hyp[10].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_dummyRotationsMultiply.msg" "hyperLayout11.hyp[11].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_addTx.msg" "hyperLayout11.hyp[12].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_original_Tx.msg" "hyperLayout11.hyp[13].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_toe_joint_addTx.msg" "hyperLayout11.hyp[14].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_toe_joint_original_Tx.msg" "hyperLayout11.hyp[15].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_joints_grp.msg" "hyperLayout11.hyp[16].dn"
		;
connectAttr "LegFoot__instance_2:creationPose_joints_grp.msg" "hyperLayout11.hyp[17].dn"
		;
connectAttr "unitConversion5.msg" "hyperLayout11.hyp[18].dn";
connectAttr "unitConversion6.msg" "hyperLayout11.hyp[19].dn";
connectAttr "unitConversion7.msg" "hyperLayout11.hyp[20].dn";
connectAttr "unitConversion8.msg" "hyperLayout11.hyp[21].dn";
connectAttr "LegFoot__instance_2:blueprint_hip_joint.msg" "hyperLayout11.hyp[22].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_knee_joint.msg" "hyperLayout11.hyp[23].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint.msg" "hyperLayout11.hyp[24].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_ball_joint.msg" "hyperLayout11.hyp[25].dn"
		;
connectAttr "LegFoot__instance_2:blueprint_toe_joint.msg" "hyperLayout11.hyp[26].dn"
		;
connectAttr "LegFoot__instance_2:creationPose_hip_joint.msg" "hyperLayout11.hyp[27].dn"
		;
connectAttr "LegFoot__instance_2:creationPose_knee_joint.msg" "hyperLayout11.hyp[28].dn"
		;
connectAttr "LegFoot__instance_2:creationPose_ankle_joint.msg" "hyperLayout11.hyp[29].dn"
		;
connectAttr "LegFoot__instance_2:creationPose_ball_joint.msg" "hyperLayout11.hyp[30].dn"
		;
connectAttr "LegFoot__instance_2:creationPose_toe_joint.msg" "hyperLayout11.hyp[31].dn"
		;
connectAttr "LegFoot__instance_2:SETTINGS.creationPoseWeight" "LegFoot__instance_2:blueprint_knee_joint_original_Tx.i2x"
		 -l on;
connectAttr "LegFoot__instance_2:SETTINGS.creationPoseWeight" "LegFoot__instance_2:blueprint_ankle_joint_original_Tx.i2x"
		 -l on;
connectAttr "LegFoot__instance_2:SETTINGS.creationPoseWeight" "LegFoot__instance_2:blueprint_ball_joint_original_Tx.i2x"
		 -l on;
connectAttr "LegFoot__instance_2:SETTINGS.creationPoseWeight" "LegFoot__instance_2:blueprint_toe_joint_original_Tx.i2x"
		 -l on;
connectAttr "RootTransform__instance_4:module_grp.msg" "hyperLayout14.hyp[0].dn"
		;
connectAttr "RootTransform__instance_4:HOOK_IN.msg" "hyperLayout14.hyp[1].dn";
connectAttr "RootTransform__instance_4:SETTINGS.msg" "hyperLayout14.hyp[2].dn";
connectAttr "RootTransform__instance_4:blueprint_container.msg" "hyperLayout14.hyp[3].dn"
		;
connectAttr "RootTransform__instance_4:SETTINGSShape.msg" "hyperLayout14.hyp[4].dn"
		;
connectAttr "hyperLayout13.msg" "RootTransform__instance_4:blueprint_container.hl"
		 -l on;
connectAttr "RootTransform__instance_4:blueprint_joint_dummyRotationsMultiply.o" "RootTransform__instance_4:blueprint_joint_addRotations.i3[0]"
		 -l on;
connectAttr "RootTransform__instance_4:blueprint_joint_addRotations.o3" "unitConversion9.i"
		 -l on;
connectAttr "RootTransform__instance_4:blueprint_joint_original_Translate.o" "RootTransform__instance_4:blueprint_joint_addTranslate.i3[0]"
		 -l on;
connectAttr "RootTransform__instance_4:blueprint_joint_original_scale.o" "RootTransform__instance_4:blueprint_jointaddScale.i3[0]"
		 -l on;
connectAttr "RootTransform__instance_4:blueprint_joint_addRotations.msg" "hyperLayout13.hyp[0].dn"
		;
connectAttr "RootTransform__instance_4:blueprint_joint_dummyRotationsMultiply.msg" "hyperLayout13.hyp[1].dn"
		;
connectAttr "RootTransform__instance_4:blueprint_joint_addTranslate.msg" "hyperLayout13.hyp[2].dn"
		;
connectAttr "RootTransform__instance_4:blueprint_joint_original_Translate.msg" "hyperLayout13.hyp[3].dn"
		;
connectAttr "RootTransform__instance_4:blueprint_jointaddScale.msg" "hyperLayout13.hyp[4].dn"
		;
connectAttr "RootTransform__instance_4:blueprint_joint_original_scale.msg" "hyperLayout13.hyp[5].dn"
		;
connectAttr "RootTransform__instance_4:blueprint_joints_grp.msg" "hyperLayout13.hyp[6].dn"
		;
connectAttr "RootTransform__instance_4:creationPose_joints_grp.msg" "hyperLayout13.hyp[7].dn"
		;
connectAttr "unitConversion9.msg" "hyperLayout13.hyp[8].dn";
connectAttr "RootTransform__instance_4:blueprint_joint.msg" "hyperLayout13.hyp[9].dn"
		;
connectAttr "RootTransform__instance_4:creationPose_joint.msg" "hyperLayout13.hyp[10].dn"
		;
connectAttr "RootTransform__instance_4:SETTINGS.creationPoseWeight" "RootTransform__instance_4:blueprint_joint_original_Translate.i2x"
		 -l on;
connectAttr "RootTransform__instance_4:SETTINGS.creationPoseWeight" "RootTransform__instance_4:blueprint_joint_original_Translate.i2y"
		 -l on;
connectAttr "RootTransform__instance_4:SETTINGS.creationPoseWeight" "RootTransform__instance_4:blueprint_joint_original_Translate.i2z"
		 -l on;
connectAttr "RootTransform__instance_4:SETTINGS.creationPoseWeight" "RootTransform__instance_4:blueprint_joint_original_scale.i2x"
		 -l on;
connectAttr "RootTransform__instance_4:SETTINGS.creationPoseWeight" "RootTransform__instance_4:blueprint_joint_original_scale.i2y"
		 -l on;
connectAttr "RootTransform__instance_4:SETTINGS.creationPoseWeight" "RootTransform__instance_4:blueprint_joint_original_scale.i2z"
		 -l on;
connectAttr "Finger__instance_1:blueprint_root_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_end_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:blueprint_end_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_hip_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_hip_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_knee_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_ankle_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_ball_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_toe_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LegFoot__instance_2:blueprint_toe_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_4:blueprint_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_4:blueprint_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_4:blueprint_joint_addTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_4:blueprint_joint_original_Translate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_4:blueprint_jointaddScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RootTransform__instance_4:blueprint_joint_original_scale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
// End of hollas.ma
