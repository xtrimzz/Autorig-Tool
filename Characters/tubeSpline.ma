//Maya ASCII 2016 scene
//Name: tubeSpline.ma
//Last modified: Fri, Apr 21, 2017 05:35:18 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "character_grp";
	rename -uid "058B178A-4E90-CA82-6D76-009E7564FBD4";
	addAttr -ci true -sn "moduleMaintenanceVisibility" -ln "moduleMaintenanceVisibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "animationControlVisibility" -ln "animationControlVisibility" 
		-dv 1 -min 0 -max 1 -at "bool";
	setAttr ".moduleMaintenanceVisibility";
	setAttr -k on ".animationControlVisibility";
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:module_grp" -p "character_grp";
	rename -uid "ABA3F1A8-4E26-C7D1-656B-BEA08DBB0C6F";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:HOOK_IN" -p "Finger__instance_1:module_grp";
	rename -uid "382C4531-44B3-C6D8-6E27-D7A157E6D367";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:blueprint_joints_grp" -p "Finger__instance_1:HOOK_IN";
	rename -uid "EB739B08-4783-AEB6-5D5B-8E8563F2D620";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_root_joint" -p "Finger__instance_1:blueprint_joints_grp";
	rename -uid "B88B901A-4A99-7C13-ECF4-B1A7B9412DE3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".obcc";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_knuckle_1_joint" -p "Finger__instance_1:blueprint_root_joint";
	rename -uid "296F7161-4488-34D3-DA00-C2B952852305";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".obcc";
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0 0 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_knuckle_2_joint" -p "Finger__instance_1:blueprint_knuckle_1_joint";
	rename -uid "BD340149-4270-F650-5EAB-44A0B728DA7D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".obcc";
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2 0 0 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_knuckle_3_joint" -p "Finger__instance_1:blueprint_knuckle_2_joint";
	rename -uid "954D6F46-4DB1-14F7-C977-FF87B0901146";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".obcc";
	setAttr ".t";
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3 0 0 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:blueprint_end_joint" -p "Finger__instance_1:blueprint_knuckle_3_joint";
	rename -uid "9681B55C-4B45-225B-6D42-D58C87E19312";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".obcc";
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4 0 0 1;
	setAttr ".liw";
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:creationPose_joints_grp" -p "Finger__instance_1:HOOK_IN";
	rename -uid "BB02E54E-4DD1-7906-0521-1C86124E26C8";
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:creationPose_root_joint" -p "Finger__instance_1:creationPose_joints_grp";
	rename -uid "8E15B604-4903-C590-A439-5DBFBFF6D79A";
	setAttr ".v" no;
	setAttr ".ro" 3;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -50 ;
lockNode -l 1 -lu 1;
createNode joint -n "Finger__instance_1:creationPose_knuckle_1_joint" -p "Finger__instance_1:creationPose_root_joint";
	rename -uid "ED0E0524-4CB6-2152-D111-8398C315B2A7";
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
	rename -uid "F47753BE-45FD-000A-D98F-60914E93F43F";
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
	rename -uid "BB6275F9-44CE-2F78-1F95-20875968D49D";
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
	rename -uid "A5F0F299-4344-3BAB-1720-C6945AB4FD66";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "Finger__instance_1:SETTINGS" -p "Finger__instance_1:module_grp";
	rename -uid "B63D95E9-424B-0BD9-7DF2-F29C56518E29";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "Finger__instance_1:SETTINGSShape" -p "Finger__instance_1:SETTINGS";
	rename -uid "66253342-4592-A036-CFFB-4688DF5B8763";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "non_blueprint_grp" -p "character_grp";
	rename -uid "819EEED6-48AF-BB44-1A2F-27BA4EC045D2";
	addAttr -ci true -k true -sn "display" -ln "display" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 1.8741901892755868 5.5511151231257827e-016 0 ;
	setAttr ".sp" -type "double3" 1.8741901892755868 5.5511151231257827e-016 0 ;
	setAttr -k on ".display";
lockNode -l 1 -lu 1;
createNode transform -n "nurbsCylinder1" -p "non_blueprint_grp";
	rename -uid "E15D703C-425C-C4CF-ACF4-358415F5728E";
	setAttr ".t" -type "double3" 1.874190189275587 4.1615382013206712e-016 0 ;
	setAttr ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.81639846349242695 2.4558472345370284 0.81639846349242695 ;
	setAttr ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "nurbsCylinderShape1" -p "nurbsCylinder1";
	rename -uid "532621A8-40E6-AEAF-F443-32922B7E50DB";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0]";
	setAttr ".iog[0].og[1]";
	setAttr ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "nurbsCylinderShape1Orig" -p "nurbsCylinder1";
	rename -uid "1E1D220D-4AB8-3231-11FD-4B8B55F4E65C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		13 0 0 0 0.25 0.5 0.75 1 1.25 1.5 1.75 2 2 2
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		121
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		3.2112695072372299e-016 -1 1.1081941875543879
		-0.78361162489122405 -1 0.78361162489122438
		-1.1081941875543881 -1 2.7268819640168427e-016
		-0.78361162489122438 -1 -0.78361162489122393
		-5.9521325992805852e-016 -0.99999999999999989 -1.1081941875543879
		0.78361162489122382 -1 -0.78361162489122516
		1.1081941875543879 -1 6.51993661209256e-017
		0.78361162489122427 -1 0.78361162489122416
		0.78361162489122382 -0.91666666666666663 -0.78361162489122516
		1.1081941875543879 -0.91666666666666663 7.030206111737291e-017
		0.78361162489122427 -0.91666666666666663 0.78361162489122416
		3.2112695072372299e-016 -0.91666666666666674 1.1081941875543879
		-0.78361162489122405 -0.91666666666666663 0.78361162489122438
		-1.1081941875543881 -0.91666666666666663 2.7779089139813157e-016
		-0.78361162489122438 -0.91666666666666663 -0.78361162489122393
		-5.9521325992805852e-016 -0.91666666666666652 -1.1081941875543879
		0.78361162489122382 -0.91666666666666663 -0.78361162489122516
		1.1081941875543879 -0.91666666666666663 7.030206111737291e-017
		0.78361162489122427 -0.91666666666666663 0.78361162489122416
		0.78361162489122382 -0.75 -0.78361162489122504
		1.1081941875543879 -0.75 8.0507451110267518e-017
		0.78361162489122427 -0.75 0.78361162489122427
		3.2112695072372299e-016 -0.75000000000000011 1.1081941875543879
		-0.78361162489122405 -0.75 0.78361162489122449
		-1.1081941875543881 -0.75 2.8799628139102622e-016
		-0.78361162489122438 -0.75 -0.78361162489122382
		-5.9521325992805852e-016 -0.74999999999999989 -1.1081941875543879
		0.78361162489122382 -0.75 -0.78361162489122504
		1.1081941875543879 -0.75 8.0507451110267518e-017
		0.78361162489122427 -0.75 0.78361162489122427
		0.78361162489122382 -0.49999999999999994 -0.78361162489122504
		1.1081941875543879 -0.5 9.5815536099609424e-017
		0.78361162489122427 -0.5 0.78361162489122427
		3.2112695072372299e-016 -0.50000000000000011 1.1081941875543879
		-0.78361162489122405 -0.5 0.78361162489122449
		-1.1081941875543881 -0.5 3.0330436638036811e-016
		-0.78361162489122438 -0.49999999999999994 -0.78361162489122382
		-5.9521325992805852e-016 -0.49999999999999994 -1.1081941875543879
		0.78361162489122382 -0.49999999999999994 -0.78361162489122504
		1.1081941875543879 -0.5 9.5815536099609424e-017
		0.78361162489122427 -0.5 0.78361162489122427
		0.78361162489122382 -0.24999999999999992 -0.78361162489122504
		1.1081941875543879 -0.24999999999999997 1.1112362108895134e-016
		0.78361162489122427 -0.25 0.78361162489122427
		3.2112695072372299e-016 -0.25000000000000006 1.1081941875543879
		-0.78361162489122405 -0.25 0.78361162489122449
		-1.1081941875543881 -0.24999999999999997 3.1861245136971005e-016
		-0.78361162489122438 -0.24999999999999992 -0.78361162489122382
		-5.9521325992805852e-016 -0.24999999999999992 -1.1081941875543879
		0.78361162489122382 -0.24999999999999992 -0.78361162489122504
		1.1081941875543879 -0.24999999999999997 1.1112362108895134e-016
		0.78361162489122427 -0.25 0.78361162489122427
		0.78361162489122382 6.1860161217699207e-017 -0.78361162489122504
		1.1081941875543879 1.3877787807814449e-017 1.2643170607829326e-016
		0.78361162489122427 -3.4104585602070256e-017 0.78361162489122427
		3.2112695072372299e-016 -5.3979535423294677e-017 1.1081941875543879
		-0.78361162489122405 -3.4104585602070268e-017 0.78361162489122449
		-1.1081941875543881 1.3877787807814437e-017 3.3392053635905195e-016
		-0.78361162489122438 6.1860161217699133e-017 -0.78361162489122382
		-5.9521325992805852e-016 8.1735111038923591e-017 -1.1081941875543879
		0.78361162489122382 6.1860161217699207e-017 -0.78361162489122504
		1.1081941875543879 1.3877787807814449e-017 1.2643170607829326e-016
		0.78361162489122427 -3.4104585602070256e-017 0.78361162489122427
		0.78361162489122382 0.25000000000000011 -0.78361162489122504
		1.1081941875543879 0.25000000000000006 1.4173979106763518e-016
		0.78361162489122427 0.25 0.78361162489122427
		3.2112695072372299e-016 0.25 1.1081941875543879
		-0.78361162489122405 0.25 0.78361162489122449
		-1.1081941875543881 0.25000000000000006 3.4922862134839384e-016
		-0.78361162489122438 0.25000000000000011 -0.78361162489122382
		-5.9521325992805852e-016 0.25000000000000011 -1.1081941875543879
		0.78361162489122382 0.25000000000000011 -0.78361162489122504
		1.1081941875543879 0.25000000000000006 1.4173979106763518e-016
		0.78361162489122427 0.25 0.78361162489122427
		0.78361162489122382 0.5 -0.78361162489122504
		1.1081941875543879 0.5 1.570478760569771e-016
		0.78361162489122427 0.49999999999999994 0.78361162489122427
		3.2112695072372299e-016 0.49999999999999994 1.1081941875543879
		-0.78361162489122405 0.49999999999999994 0.78361162489122449
		-1.1081941875543881 0.5 3.6453670633773578e-016
		-0.78361162489122438 0.5 -0.78361162489122382
		-5.9521325992805852e-016 0.50000000000000011 -1.1081941875543879
		0.78361162489122382 0.5 -0.78361162489122504
		1.1081941875543879 0.5 1.570478760569771e-016
		0.78361162489122427 0.49999999999999994 0.78361162489122427
		0.78361162489122382 0.75 -0.78361162489122504
		1.1081941875543879 0.75 1.7235596104631902e-016
		0.78361162489122427 0.75 0.78361162489122427
		3.2112695072372299e-016 0.74999999999999989 1.1081941875543879
		-0.78361162489122405 0.75 0.78361162489122449
		-1.1081941875543881 0.75 3.7984479132707768e-016
		-0.78361162489122438 0.75 -0.78361162489122382
		-5.9521325992805852e-016 0.75000000000000011 -1.1081941875543879
		0.78361162489122382 0.75 -0.78361162489122504
		1.1081941875543879 0.75 1.7235596104631902e-016
		0.78361162489122427 0.75 0.78361162489122427
		0.78361162489122382 0.91666666666666663 -0.78361162489122493
		1.1081941875543879 0.91666666666666663 1.8256135103921361e-016
		0.78361162489122427 0.91666666666666663 0.78361162489122438
		3.2112695072372299e-016 0.91666666666666652 1.1081941875543879
		-0.78361162489122405 0.91666666666666663 0.7836116248912246
		-1.1081941875543881 0.91666666666666663 3.9005018131997232e-016
		-0.78361162489122438 0.91666666666666663 -0.78361162489122371
		-5.9521325992805852e-016 0.91666666666666674 -1.1081941875543879
		0.78361162489122382 0.91666666666666663 -0.78361162489122493
		1.1081941875543879 0.91666666666666663 1.8256135103921361e-016
		0.78361162489122427 0.91666666666666663 0.78361162489122438
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		3.2112695072372299e-016 0.99999999999999989 1.1081941875543879
		-0.78361162489122405 1 0.7836116248912246
		-1.1081941875543881 1 3.9515287631641962e-016
		-0.78361162489122438 1 -0.78361162489122371
		-5.9521325992805852e-016 1 -1.1081941875543879
		0.78361162489122382 1 -0.78361162489122493
		1.1081941875543879 1 1.8766404603566091e-016
		0.78361162489122427 1 0.78361162489122438
		
		;
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	rename -uid "CED74F65-4076-6FD5-229F-6D8A52C96AD4";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 4 ".boc";
	setAttr -s 3 ".ish[1:3]" yes yes yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/04/21 17:35:18";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","displayNonBlueprintNodes"
		,"borderConnections[3]"} ;
lockNode -l 1 -lu 1;
createNode container -n "non_blueprint_container";
	rename -uid "2088CD5F-4CA8-9333-E48C-6391A9E51889";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/04/21 17:35:18";
	setAttr ".aal" -type "attributeAlias" {"displayNonBlueprintNodes","borderConnections[0]"
		} ;
lockNode -l 1 -lu 1;
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	rename -uid "98D0A913-4A9B-546B-65E2-109BB47110DF";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout3";
	rename -uid "B40E2EC7-4E54-4B57-EA98-138544BACEB5";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "Finger__instance_1:module_container";
	rename -uid "4A8041FF-4422-1E5F-7811-EB956B82BA96";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/04/21 17:29:36";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	rename -uid "83123CE9-4363-7B5A-9658-7AA875EBC056";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode objectSet -n "nurbsCylinder1_skinClusterSet";
	rename -uid "56F3D7DA-4E1C-8797-E3C3-B78060D11959";
	setAttr ".ihi" 0;
	setAttr ".mwc";
	setAttr ".vo" yes;
lockNode -l 1 -lu 1;
createNode objectSet -n "tweakSet1";
	rename -uid "33F2FAF5-453C-EBD2-791D-DA99E9EE9DC6";
	setAttr ".ihi" 0;
	setAttr ".mwc";
	setAttr ".vo" yes;
lockNode -l 1 -lu 1;
createNode tweak -n "tweak1";
	rename -uid "7B8CCE10-4B9D-C0A5-25F2-2FA650EC6A7C";
	setAttr ".ip";
	setAttr ".pl";
lockNode -l 1 -lu 1;
createNode groupId -n "nurbsCylinder1_skinClusterGroupId";
	rename -uid "3164789A-414D-76F2-77A8-85A8B9F1925D";
	setAttr ".ihi" 0;
lockNode -l 1 -lu 1;
createNode groupParts -n "nurbsCylinder1_skinClusterGroupParts";
	rename -uid "F8D9EC3B-4542-FDEB-34B4-019D61C46851";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
lockNode -l 1 -lu 1;
createNode groupId -n "groupId2";
	rename -uid "A1957347-40DC-5B4E-8CD6-268C4C9A9457";
	setAttr ".ihi" 0;
lockNode -l 1 -lu 1;
createNode groupParts -n "groupParts2";
	rename -uid "3F404B79-4ECF-F73C-E12D-509AB5241C64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout4";
	rename -uid "4EB5FF2E-48BB-90B2-CBD2-70A7C64804C1";
	setAttr ".ihi" 0;
	setAttr -s 13 ".hyp";
createNode skinCluster -n "nurbsCylinder1_skinCluster";
	rename -uid "EF42FF62-4C88-DB1F-BB1D-23B487F527D2";
	setAttr ".ip";
	setAttr -s 88 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.89173799661817277 0.10826200338182726;
	setAttr -s 2 ".wl[1].w[0:1]"  0.89173799661817288 0.10826200338182718;
	setAttr -s 2 ".wl[2].w[0:1]"  0.89173799661817288 0.10826200338182718;
	setAttr -s 2 ".wl[3].w[0:1]"  0.89173799661817288 0.10826200338182718;
	setAttr -s 2 ".wl[4].w[0:1]"  0.89173799661817299 0.10826200338182711;
	setAttr -s 2 ".wl[5].w[0:1]"  0.89173799661817288 0.10826200338182718;
	setAttr -s 2 ".wl[6].w[0:1]"  0.89173799661817299 0.10826200338182711;
	setAttr -s 2 ".wl[7].w[0:1]"  0.89173799661817288 0.10826200338182713;
	setAttr -s 2 ".wl[11].w[0:1]"  0.88870706414571676 0.11129293585428328;
	setAttr -s 2 ".wl[12].w[0:1]"  0.88870706414571687 0.11129293585428324;
	setAttr -s 2 ".wl[13].w[0:1]"  0.88870706414571687 0.11129293585428314;
	setAttr -s 2 ".wl[14].w[0:1]"  0.88870706414571676 0.11129293585428318;
	setAttr -s 2 ".wl[15].w[0:1]"  0.88870706414571687 0.1112929358542831;
	setAttr -s 2 ".wl[16].w[0:1]"  0.88870706414571687 0.11129293585428324;
	setAttr -s 2 ".wl[17].w[0:1]"  0.88870706414571687 0.1112929358542831;
	setAttr -s 2 ".wl[18].w[0:1]"  0.88870706414571687 0.11129293585428318;
	setAttr -s 2 ".wl[22].w[0:1]"  0.82132987012037506 0.17867012987962488;
	setAttr -s 2 ".wl[23].w[0:1]"  0.82132987012037517 0.1786701298796248;
	setAttr -s 2 ".wl[24].w[0:1]"  0.82132987012037528 0.17867012987962472;
	setAttr -s 2 ".wl[25].w[0:1]"  0.82132987012037539 0.17867012987962461;
	setAttr -s 2 ".wl[26].w[0:1]"  0.8213298701203755 0.17867012987962452;
	setAttr -s 2 ".wl[27].w[0:1]"  0.82132987012037528 0.17867012987962466;
	setAttr -s 2 ".wl[28].w[0:1]"  0.82132987012037539 0.17867012987962458;
	setAttr -s 2 ".wl[29].w[0:1]"  0.82132987012037517 0.1786701298796248;
	setAttr -s 2 ".wl[33].w[0:1]"  0.5706503892843976 0.42934961071560251;
	setAttr -s 2 ".wl[34].w[0:1]"  0.57065038928439771 0.42934961071560229;
	setAttr -s 2 ".wl[35].w[0:1]"  0.5706503892843976 0.42934961071560251;
	setAttr -s 2 ".wl[36].w[0:1]"  0.57065038928439782 0.42934961071560229;
	setAttr -s 2 ".wl[37].w[0:1]"  0.57065038928439771 0.42934961071560229;
	setAttr -s 2 ".wl[38].w[0:1]"  0.57065038928439771 0.42934961071560224;
	setAttr -s 2 ".wl[39].w[0:1]"  0.57065038928439782 0.42934961071560218;
	setAttr -s 2 ".wl[40].w[0:1]"  0.5706503892843976 0.42934961071560235;
	setAttr -s 2 ".wl[44].w[1:2]"  0.73574260749691955 0.26425739250308039;
	setAttr -s 2 ".wl[45].w[1:2]"  0.73574260749691978 0.26425739250308028;
	setAttr -s 2 ".wl[46].w[1:2]"  0.73574260749691978 0.26425739250308028;
	setAttr -s 2 ".wl[47].w[1:2]"  0.73574260749691989 0.26425739250308017;
	setAttr -s 2 ".wl[48].w[1:2]"  0.73574260749691978 0.26425739250308028;
	setAttr -s 2 ".wl[49].w[1:2]"  0.73574260749691955 0.26425739250308045;
	setAttr -s 2 ".wl[50].w[1:2]"  0.73574260749691955 0.26425739250308039;
	setAttr -s 2 ".wl[51].w[1:2]"  0.73574260749691955 0.26425739250308039;
	setAttr -s 2 ".wl[55].w[1:2]"  0.50957512081157186 0.49042487918842814;
	setAttr -s 2 ".wl[56].w[1:2]"  0.50957512081157186 0.4904248791884282;
	setAttr -s 2 ".wl[57].w[1:2]"  0.50957512081157186 0.4904248791884282;
	setAttr -s 2 ".wl[58].w[1:2]"  0.50957512081157186 0.49042487918842814;
	setAttr -s 2 ".wl[59].w[1:2]"  0.50957512081157186 0.49042487918842814;
	setAttr -s 2 ".wl[60].w[1:2]"  0.50957512081157175 0.4904248791884282;
	setAttr -s 2 ".wl[61].w[1:2]"  0.50957512081157186 0.49042487918842814;
	setAttr -s 2 ".wl[62].w[1:2]"  0.50957512081157186 0.49042487918842814;
	setAttr -s 2 ".wl[66].w[2:3]"  0.63538071241828731 0.36461928758171269;
	setAttr -s 2 ".wl[67].w[2:3]"  0.63538071241828742 0.36461928758171258;
	setAttr -s 2 ".wl[68].w[2:3]"  0.63538071241828731 0.36461928758171275;
	setAttr -s 2 ".wl[69].w[2:3]"  0.63538071241828742 0.36461928758171258;
	setAttr -s 2 ".wl[70].w[2:3]"  0.63538071241828731 0.36461928758171269;
	setAttr -s 2 ".wl[71].w[2:3]"  0.63538071241828709 0.36461928758171286;
	setAttr -s 2 ".wl[72].w[2:3]"  0.63538071241828697 0.36461928758171308;
	setAttr -s 2 ".wl[73].w[2:3]"  0.6353807124182872 0.36461928758171286;
	setAttr -s 2 ".wl[77].w[3:4]"  0.79756909884472049 0.20243090115527956;
	setAttr -s 2 ".wl[78].w[3:4]"  0.7975690988447206 0.20243090115527942;
	setAttr -s 2 ".wl[79].w[3:4]"  0.7975690988447206 0.2024309011552794;
	setAttr -s 2 ".wl[80].w[3:4]"  0.79756909884472049 0.20243090115527954;
	setAttr -s 2 ".wl[81].w[3:4]"  0.79756909884472038 0.20243090115527962;
	setAttr -s 2 ".wl[82].w[3:4]"  0.79756909884472016 0.20243090115527981;
	setAttr -s 2 ".wl[83].w[3:4]"  0.79756909884472049 0.20243090115527962;
	setAttr -s 2 ".wl[84].w[3:4]"  0.79756909884472038 0.20243090115527962;
	setAttr -s 2 ".wl[88].w[3:4]"  0.54682825297487869 0.45317174702512131;
	setAttr -s 2 ".wl[89].w[3:4]"  0.54682825297487869 0.45317174702512136;
	setAttr -s 2 ".wl[90].w[3:4]"  0.54682825297487869 0.45317174702512125;
	setAttr -s 2 ".wl[91].w[3:4]"  0.5468282529748788 0.4531717470251212;
	setAttr -s 2 ".wl[92].w[3:4]"  0.5468282529748788 0.4531717470251212;
	setAttr -s 2 ".wl[93].w[3:4]"  0.5468282529748788 0.45317174702512131;
	setAttr -s 2 ".wl[94].w[3:4]"  0.5468282529748788 0.45317174702512125;
	setAttr -s 2 ".wl[95].w[3:4]"  0.54682825297487869 0.45317174702512131;
	setAttr -s 2 ".wl[99].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[100].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[101].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[102].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[103].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[104].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[105].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[106].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[110].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[111].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[112].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[113].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[114].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[115].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[116].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[117].w[3:4]"  0.5 0.5;
	setAttr ".wl";
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1 0 -0 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -2 0 -0 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -3 0 -0 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4 0 -0 1;
	setAttr ".pm";
	setAttr ".gm" -type "matrix" 1.8127687428757854e-016 -0.81639846349242695 -0 0 2.4558472345370284 5.4530762894900516e-016 0 0
		 0 -0 0.81639846349242695 0 1.874190189275587 4.1615382013206712e-016 0 1;
	setAttr -s 5 ".ma";
	setAttr ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "non_blueprint_visibilityMultiply";
	rename -uid "E660D136-4A7F-4CE4-D1BC-1994D8AEE4F6";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode dagPose -n "bindPose1";
	rename -uid "4030E3DC-4FD5-FABA-57AE-659412A2B25D";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 3 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 3 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 3 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes no no no no no;
	setAttr ".bp" yes;
createNode unitConversion -n "unitConversion1";
	rename -uid "FCE37803-44B8-DE74-8A2E-86B9CAF59352";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_root_joint_addRotations";
	rename -uid "AA8E9663-4425-92F3-F874-ABABF77C8508";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_root_joint_dummyRotationsMultiply";
	rename -uid "42AD6BC4-4A96-C5BB-CBD9-C89C7853E153";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion2";
	rename -uid "07DDF3B0-4C85-3554-8DF2-7AB8F9E661F7";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_1_joint_addRotations";
	rename -uid "0070F9C6-4245-41A6-1470-D7BC9258F27F";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_1_joint_dummyRotationsMultiply";
	rename -uid "13D33118-4009-0079-6111-5484F773E89E";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_1_joint_addTx";
	rename -uid "61FBC3C3-4AA4-B2AC-7467-A487766941F1";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx";
	rename -uid "FE6DA9AC-4916-7125-E4A2-0FAA3FB91901";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion3";
	rename -uid "D80970E6-4296-5D2E-665B-F4A89F36F27A";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_2_joint_addRotations";
	rename -uid "82E19FE0-4154-28E9-766A-41BA30B3420F";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_2_joint_dummyRotationsMultiply";
	rename -uid "86348E2B-4EFE-6D34-A447-C88DBCB22C5F";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_2_joint_addTx";
	rename -uid "20E68B2C-4B15-2C23-61DF-D0B054B54A54";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx";
	rename -uid "9C539DEB-4486-2225-8A50-6C910D4DE384";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion4";
	rename -uid "B6F10B5F-4D0F-A958-82D0-989676C9FEE8";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_3_joint_addRotations";
	rename -uid "3661A687-4132-30E9-F0DD-8B9A9F80D986";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_3_joint_dummyRotationsMultiply";
	rename -uid "CC859BB1-49D1-D296-BE54-1B91E5A6B6B6";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_knuckle_3_joint_addTx";
	rename -uid "DDD0AB33-4BE9-1FA0-FD61-A9ACEF6D88BC";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx";
	rename -uid "2965B828-48DE-D7E5-7DF1-398DD1C47FB9";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "Finger__instance_1:blueprint_end_joint_addTx";
	rename -uid "5CD5B812-4236-DC87-23D5-3786DDD1465D";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "Finger__instance_1:blueprint_end_joint_original_Tx";
	rename -uid "9D2CA024-464A-7CA7-FC25-4D9752032CDD";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode container -n "Finger__instance_1:blueprint_container";
	rename -uid "5B7EB165-4895-1228-E4DC-D8B71D408DBA";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/04/21 17:29:36";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout2";
	rename -uid "1A6C3A51-40CC-5AF4-6ED8-FE99D405DF2A";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode hyperLayout -n "hyperLayout1";
	rename -uid "E504A9AC-41B1-C88E-CFD0-EF9CFA5E9794";
	setAttr ".ihi" 0;
	setAttr -s 32 ".hyp";
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
	setAttr -s 19 ".u";
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
connectAttr "non_blueprint_visibilityMultiply.ox" "non_blueprint_grp.v" -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.id" "nurbsCylinderShape1.iog.og[0].gid"
		 -l on;
connectAttr "nurbsCylinder1_skinClusterSet.mwc" "nurbsCylinderShape1.iog.og[0].gco"
		 -l on;
connectAttr "groupId2.id" "nurbsCylinderShape1.iog.og[1].gid" -l on;
connectAttr "tweakSet1.mwc" "nurbsCylinderShape1.iog.og[1].gco" -l on;
connectAttr "nurbsCylinder1_skinCluster.og[0]" "nurbsCylinderShape1.cr" -l on;
connectAttr "tweak1.pl[0].cp[0]" "nurbsCylinderShape1.twl" -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "Finger__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "Finger__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "non_blueprint_container.boc[0]" "character_container.boc[3]" -l on;
connectAttr "hyperLayout3.msg" "character_container.hl" -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_container.boc[0]";
connectAttr "hyperLayout4.msg" "non_blueprint_container.hl" -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "Finger__instance_1:module_container.msg" "hyperLayout3.hyp[0].dn";
connectAttr "character_grp.msg" "hyperLayout3.hyp[1].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout3.hyp[2].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout3.hyp[3].dn";
connectAttr "non_blueprint_container.msg" "hyperLayout3.hyp[4].dn";
connectAttr "Finger__instance_1:SETTINGS.activeModule" "Finger__instance_1:module_container.boc[0]"
		;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout2.msg" "Finger__instance_1:module_container.hl" -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.msg" "nurbsCylinder1_skinClusterSet.gn"
		 -l on -na;
connectAttr "nurbsCylinderShape1.iog.og[0]" "nurbsCylinder1_skinClusterSet.dsm" 
		-l on -na;
connectAttr "nurbsCylinder1_skinCluster.msg" "nurbsCylinder1_skinClusterSet.ub[0]"
		 -l on;
connectAttr "groupId2.msg" "tweakSet1.gn" -l on -na;
connectAttr "nurbsCylinderShape1.iog.og[1]" "tweakSet1.dsm" -l on -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]" -l on;
connectAttr "groupParts2.og" "tweak1.ip[0].ig" -l on;
connectAttr "groupId2.id" "tweak1.ip[0].gi" -l on;
connectAttr "tweak1.og[0]" "nurbsCylinder1_skinClusterGroupParts.ig" -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.id" "nurbsCylinder1_skinClusterGroupParts.gi"
		 -l on;
connectAttr "nurbsCylinderShape1Orig.ws" "groupParts2.ig" -l on;
connectAttr "groupId2.id" "groupParts2.gi" -l on;
connectAttr "non_blueprint_grp.msg" "hyperLayout4.hyp[0].dn";
connectAttr "nurbsCylinder1.msg" "hyperLayout4.hyp[1].dn";
connectAttr "nurbsCylinderShape1.msg" "hyperLayout4.hyp[2].dn";
connectAttr "nurbsCylinderShape1Orig.msg" "hyperLayout4.hyp[3].dn";
connectAttr "nurbsCylinder1_skinClusterSet.msg" "hyperLayout4.hyp[4].dn";
connectAttr "tweakSet1.msg" "hyperLayout4.hyp[5].dn";
connectAttr "tweak1.msg" "hyperLayout4.hyp[6].dn";
connectAttr "nurbsCylinder1_skinClusterGroupId.msg" "hyperLayout4.hyp[7].dn";
connectAttr "nurbsCylinder1_skinClusterGroupParts.msg" "hyperLayout4.hyp[8].dn";
connectAttr "groupId2.msg" "hyperLayout4.hyp[9].dn";
connectAttr "groupParts2.msg" "hyperLayout4.hyp[10].dn";
connectAttr "nurbsCylinder1_skinCluster.msg" "hyperLayout4.hyp[11].dn";
connectAttr "non_blueprint_visibilityMultiply.msg" "hyperLayout4.hyp[12].dn";
connectAttr "nurbsCylinder1_skinClusterGroupParts.og" "nurbsCylinder1_skinCluster.ip[0].ig"
		 -l on;
connectAttr "nurbsCylinder1_skinClusterGroupId.id" "nurbsCylinder1_skinCluster.ip[0].gi"
		 -l on;
connectAttr "bindPose1.msg" "nurbsCylinder1_skinCluster.bp" -l on;
connectAttr "Finger__instance_1:blueprint_root_joint.wm" "nurbsCylinder1_skinCluster.ma[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint.wm" "nurbsCylinder1_skinCluster.ma[1]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint.wm" "nurbsCylinder1_skinCluster.ma[2]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint.wm" "nurbsCylinder1_skinCluster.ma[3]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_end_joint.wm" "nurbsCylinder1_skinCluster.ma[4]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_root_joint.liw" "nurbsCylinder1_skinCluster.lw[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint.liw" "nurbsCylinder1_skinCluster.lw[1]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint.liw" "nurbsCylinder1_skinCluster.lw[2]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint.liw" "nurbsCylinder1_skinCluster.lw[3]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_end_joint.liw" "nurbsCylinder1_skinCluster.lw[4]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_root_joint.obcc" "nurbsCylinder1_skinCluster.ifcl[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint.obcc" "nurbsCylinder1_skinCluster.ifcl[1]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint.obcc" "nurbsCylinder1_skinCluster.ifcl[2]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint.obcc" "nurbsCylinder1_skinCluster.ifcl[3]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_end_joint.obcc" "nurbsCylinder1_skinCluster.ifcl[4]"
		 -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "non_blueprint_visibilityMultiply.i1x"
		 -l on;
connectAttr "non_blueprint_grp.display" "non_blueprint_visibilityMultiply.i2x" -l
		 on;
connectAttr "Finger__instance_1:module_grp.msg" "bindPose1.m[0]";
connectAttr "Finger__instance_1:HOOK_IN.msg" "bindPose1.m[1]";
connectAttr "Finger__instance_1:blueprint_joints_grp.msg" "bindPose1.m[2]";
connectAttr "Finger__instance_1:blueprint_root_joint.msg" "bindPose1.m[3]";
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint.msg" "bindPose1.m[4]";
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint.msg" "bindPose1.m[5]";
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint.msg" "bindPose1.m[6]";
connectAttr "Finger__instance_1:blueprint_end_joint.msg" "bindPose1.m[7]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "Finger__instance_1:blueprint_root_joint.bps" "bindPose1.wm[3]";
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint.bps" "bindPose1.wm[4]"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint.bps" "bindPose1.wm[5]"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint.bps" "bindPose1.wm[6]"
		;
connectAttr "Finger__instance_1:blueprint_end_joint.bps" "bindPose1.wm[7]";
connectAttr "Finger__instance_1:blueprint_root_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "Finger__instance_1:blueprint_root_joint_dummyRotationsMultiply.o" "Finger__instance_1:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_dummyRotationsMultiply.o" "Finger__instance_1:blueprint_knuckle_1_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx.ox" "Finger__instance_1:blueprint_knuckle_1_joint_addTx.i1[0]"
		 -l on;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx.i2x"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addRotations.o3" "unitConversion3.i"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_dummyRotationsMultiply.o" "Finger__instance_1:blueprint_knuckle_2_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx.ox" "Finger__instance_1:blueprint_knuckle_2_joint_addTx.i1[0]"
		 -l on;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx.i2x"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addRotations.o3" "unitConversion4.i"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_dummyRotationsMultiply.o" "Finger__instance_1:blueprint_knuckle_3_joint_addRotations.i3[0]"
		 -l on;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx.ox" "Finger__instance_1:blueprint_knuckle_3_joint_addTx.i1[0]"
		 -l on;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx.i2x"
		 -l on;
connectAttr "Finger__instance_1:blueprint_end_joint_original_Tx.ox" "Finger__instance_1:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr "Finger__instance_1:SETTINGS.creationPoseWeight" "Finger__instance_1:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "hyperLayout1.msg" "Finger__instance_1:blueprint_container.hl" -l on
		;
connectAttr "Finger__instance_1:module_grp.msg" "hyperLayout2.hyp[0].dn";
connectAttr "Finger__instance_1:HOOK_IN.msg" "hyperLayout2.hyp[1].dn";
connectAttr "Finger__instance_1:SETTINGS.msg" "hyperLayout2.hyp[2].dn";
connectAttr "Finger__instance_1:blueprint_container.msg" "hyperLayout2.hyp[3].dn"
		;
connectAttr "Finger__instance_1:SETTINGSShape.msg" "hyperLayout2.hyp[4].dn";
connectAttr "Finger__instance_1:blueprint_root_joint_addRotations.msg" "hyperLayout1.hyp[0].dn"
		;
connectAttr "Finger__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[1].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addRotations.msg" "hyperLayout1.hyp[2].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[3].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_addTx.msg" "hyperLayout1.hyp[4].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint_original_Tx.msg" "hyperLayout1.hyp[5].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addRotations.msg" "hyperLayout1.hyp[6].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[7].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_addTx.msg" "hyperLayout1.hyp[8].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint_original_Tx.msg" "hyperLayout1.hyp[9].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addRotations.msg" "hyperLayout1.hyp[10].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_dummyRotationsMultiply.msg" "hyperLayout1.hyp[11].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_addTx.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint_original_Tx.msg" "hyperLayout1.hyp[13].dn"
		;
connectAttr "Finger__instance_1:blueprint_end_joint_addTx.msg" "hyperLayout1.hyp[14].dn"
		;
connectAttr "Finger__instance_1:blueprint_end_joint_original_Tx.msg" "hyperLayout1.hyp[15].dn"
		;
connectAttr "Finger__instance_1:blueprint_joints_grp.msg" "hyperLayout1.hyp[16].dn"
		;
connectAttr "Finger__instance_1:creationPose_joints_grp.msg" "hyperLayout1.hyp[17].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout1.hyp[18].dn";
connectAttr "unitConversion2.msg" "hyperLayout1.hyp[19].dn";
connectAttr "unitConversion3.msg" "hyperLayout1.hyp[20].dn";
connectAttr "unitConversion4.msg" "hyperLayout1.hyp[21].dn";
connectAttr "Finger__instance_1:blueprint_root_joint.msg" "hyperLayout1.hyp[22].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_1_joint.msg" "hyperLayout1.hyp[23].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_2_joint.msg" "hyperLayout1.hyp[24].dn"
		;
connectAttr "Finger__instance_1:blueprint_knuckle_3_joint.msg" "hyperLayout1.hyp[25].dn"
		;
connectAttr "Finger__instance_1:blueprint_end_joint.msg" "hyperLayout1.hyp[26].dn"
		;
connectAttr "Finger__instance_1:creationPose_root_joint.msg" "hyperLayout1.hyp[27].dn"
		;
connectAttr "Finger__instance_1:creationPose_knuckle_1_joint.msg" "hyperLayout1.hyp[28].dn"
		;
connectAttr "Finger__instance_1:creationPose_knuckle_2_joint.msg" "hyperLayout1.hyp[29].dn"
		;
connectAttr "Finger__instance_1:creationPose_knuckle_3_joint.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "Finger__instance_1:creationPose_end_joint.msg" "hyperLayout1.hyp[31].dn"
		;
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
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "non_blueprint_visibilityMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "nurbsCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of tubeSpline.ma
