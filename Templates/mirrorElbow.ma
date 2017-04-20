//Maya ASCII 2016 scene
//Name: mirrorElbow.ma
//Last modified: Fri, Apr 07, 2017 06:18:28 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "HingeJoint__instance_1:module_grp";
	rename -uid "A89D9A63-44F8-836C-1075-BFAA2D97E14A";
	addAttr -ci true -sn "mirrorLinks" -ln "mirrorLinks" -dt "string";
	setAttr ".mirrorLinks" -type "string" "HingeJoint__instance_1_mirror__X";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:joints_grp" -p "HingeJoint__instance_1:module_grp";
	rename -uid "E87C3161-4BF9-23DF-37B0-FE93A89BE2A1";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:root_joint" -p "HingeJoint__instance_1:joints_grp";
	rename -uid "2207A6CB-45EB-D98D-CD69-82B2EA2202B1";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".r" -type "double3" 90.000000000000014 0 56.061186299417841 ;
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 14.036243467926484 0 ;
	setAttr ".jo";
	setAttr ".ssc";
	setAttr ".is";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:hinge_joint" -p "HingeJoint__instance_1:root_joint";
	rename -uid "56F35E6E-4C17-702C-10DD-05913BC275F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.3850116729736328 0 3.3306690738754696e-016 ;
	setAttr ".t";
	setAttr ".ty";
	setAttr ".tz";
	setAttr ".r" -type "double3" -20.781049393067747 -51.504329120558026 41.760084815243538 ;
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -28.072486935852961 0 ;
	setAttr ".jo";
	setAttr ".ssc";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:end_joint" -p "HingeJoint__instance_1:hinge_joint";
	rename -uid "9E4D05A0-414A-BB4D-B3C3-98886D30584A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6803088188171387 0 3.3306690738754696e-016 ;
	setAttr ".t";
	setAttr ".ty";
	setAttr ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 14.036243467926477 0 ;
lockNode -l 1 -lu 1;
createNode ikEffector -n "HingeJoint__instance_1:hinge_joint_ikEffector" -p "HingeJoint__instance_1:hinge_joint";
	rename -uid "BE9042CF-4220-1398-D210-98926356F823";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".hd" yes;
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:root_joint__pointConstraint" 
		-p "HingeJoint__instance_1:root_joint";
	rename -uid "3924A5FE-4565-4581-DCB1-1D90E8E10233";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode ikEffector -n "HingeJoint__instance_1:root_joint_ikEffector" -p "HingeJoint__instance_1:root_joint";
	rename -uid "351068A3-41E1-EA72-1639-74826249D73F";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".hd" yes;
lockNode -l 1 -lu 1;
createNode ikHandle -n "HingeJoint__instance_1:root_joint_ikHandle" -p "HingeJoint__instance_1:joints_grp";
	rename -uid "E4693790-48AC-6073-755B-B4ABDD4CF2B8";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".pv";
	setAttr ".roc" yes;
lockNode -l 1 -lu 1;
createNode poleVectorConstraint -n "root_joint_ikHandle_poleVectorConstraint1" -p
		 "HingeJoint__instance_1:root_joint_ikHandle";
	rename -uid "ABB96928-4F14-1ED0-3DD7-B1B1F6AF5C24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 0 -0.5 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_1:root_joint_ikHandle";
	rename -uid "970DDCFF-4FCD-5053-B838-D3A38634DA1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_endPosLocatorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:root_joint_rootPosLocator" -p "HingeJoint__instance_1:joints_grp";
	rename -uid "179AA4B1-46BC-975A-B546-519D3C025106";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:root_joint_rootPosLocatorShape" -p
		 "HingeJoint__instance_1:root_joint_rootPosLocator";
	rename -uid "D72B7AA6-4486-3780-E811-939215176DF1";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1:root_joint_rootPosLocator";
	rename -uid "E35985B2-4327-86C6-7D3B-698D5A800F3B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hinge_joint_endPosLocator" -p "HingeJoint__instance_1:joints_grp";
	rename -uid "CA1D61B7-4953-14EC-F671-05BA38F3F7E3";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:hinge_joint_endPosLocatorShape" -p
		 "HingeJoint__instance_1:hinge_joint_endPosLocator";
	rename -uid "88FBFBB0-44D3-79CD-5A4D-D78F56468240";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1:hinge_joint_endPosLocator";
	rename -uid "298CFE9D-4C5B-EFC1-F255-5E8F9B8B4910";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode ikHandle -n "HingeJoint__instance_1:hinge_joint_ikHandle" -p "HingeJoint__instance_1:joints_grp";
	rename -uid "F6FCA8F1-46AA-1DC5-31AD-E3A424EF2A1F";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".pv";
	setAttr ".roc" yes;
lockNode -l 1 -lu 1;
createNode poleVectorConstraint -n "hinge_joint_ikHandle_poleVectorConstraint1" 
		-p "HingeJoint__instance_1:hinge_joint_ikHandle";
	rename -uid "0453A316-427B-F12A-1329-799A341F60ED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 9.6671985527763127e-008 -0.49999999999999967 -2.4167996270918479e-008 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_1:hinge_joint_ikHandle";
	rename -uid "E84C8880-4D39-74C4-AA2E-59850C7AA3FB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_endPosLocatorW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 7.5294116680338963 -1.9402850002906642 -1.8823529170084738 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hinge_joint_rootPosLocator" -p "HingeJoint__instance_1:joints_grp";
	rename -uid "23D3EE42-412B-F9D7-24E3-B38BAA34E970";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:hinge_joint_rootPosLocatorShape" -p
		 "HingeJoint__instance_1:hinge_joint_rootPosLocator";
	rename -uid "D5BBDF34-47FC-E2EF-336D-C6B21C935A81";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1:hinge_joint_rootPosLocator";
	rename -uid "346384DF-466B-2F6E-C71F-12967F9CE2BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 3.9999999033280145 -3.3306690738754696e-016 -0.99999997583200395 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:end_joint_endPosLocator" -p "HingeJoint__instance_1:joints_grp";
	rename -uid "196DE84C-4226-710C-17F8-1D9094BEB72B";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:end_joint_endPosLocatorShape" -p "HingeJoint__instance_1:end_joint_endPosLocator";
	rename -uid "3E5AD00E-47A5-80E0-61CD-C8AB1E6CF8EB";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1:end_joint_endPosLocator";
	rename -uid "B880827C-4697-D906-52B4-F3B8A991C637";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 8 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hierarchyRepresentation_grp" -p "HingeJoint__instance_1:module_grp";
	rename -uid "F927ABFF-4D18-B5C2-9136-44B9B6DC3391";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_1:hierarchyRepresentation_grp";
	rename -uid "6913EBCA-4F6B-DD1D-7642-DEB0C8E9AF34";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:root_joint_hierarchy_representation" 
		-p "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "A8DC27CF-477E-9CBD-6BF3-F9953849A96B";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1:root_joint_hierarchy_representationShape" 
		-p "HingeJoint__instance_1:root_joint_hierarchy_representation";
	rename -uid "5868C904-4F69-B286-F777-68A6CAA194FE";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-016 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-018
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-016 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-016 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-017
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-017 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-018 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-017
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-016 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-016 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-016
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-016 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:root_joint_hierarchy_arrow_representation" 
		-p "HingeJoint__instance_1:root_joint_hierarchy_representation";
	rename -uid "ADEEED14-4DBA-D542-E6EA-FCA4A6DBD23A";
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.46739519169468152 0.46739519169468152 0.46739519169468152 ;
	setAttr ".rp" -type "double3" 1.1102230246251565e-016 0.5 0 ;
	setAttr ".rpt" -type "double3" 0.49999999999999989 -0.5 0 ;
	setAttr ".sp" -type "double3" 2.3753411339122038e-016 1.0697585445564812 0 ;
	setAttr ".spt" -type "double3" -1.2651181092870475e-016 -0.56975854455648134 0 ;
lockNode -l 1 -lu 1;
createNode mesh -n "HingeJoint__instance_1:root_joint_hierarchy_arrow_representationShape" 
		-p "HingeJoint__instance_1:root_joint_hierarchy_arrow_representation";
	rename -uid "0599009A-4E66-8A81-A771-FA986D2A60BA";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-008 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".uvst";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".o";
	setAttr ".ci";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0.33249366 1.0697585 -0.33249369 
		-2.8027111e-008 1.0697585 -0.4702169 -0.33249369 1.0697585 -0.33249369 -0.4702169 
		1.0697585 -1.4013556e-008 -0.33249369 1.0697585 0.33249366 -2.8027111e-008 1.0697585 
		0.4702169 0.33249369 1.0697585 0.33249369 0.4702169 1.0697585 -1.4013556e-008 2.3753411e-016 
		1.0697585 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 -0.25 -0.70710671 0 -0.25 -0.99999988
		 -0.70710671 -0.25 -0.70710671 -0.99999988 -0.25 0 -0.70710671 -0.25 0.70710671 0 -0.25 0.99999994
		 0.70710677 -0.25 0.70710677 1 -0.25 0 0 0.25 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd";
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".atm" no;
	setAttr ".vnm" 0;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1" 
		-p "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "8617F08F-402A-A7DC-9638-26861C0DABD1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 101.71749833614891 7.7822940909398035 56.860962777811636 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 14.036243467926482 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1" 
		-p "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "C90D26FA-4057-679E-AC9E-61B0A5F3F360";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_1:hierarchyRepresentation_grp";
	rename -uid "1EFCAAB7-447E-A84A-9CB3-2386B3AA2022";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hinge_joint_hierarchy_representation" 
		-p "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "7F5567AF-41FE-C46B-6975-A39ED33EADCC";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1:hinge_joint_hierarchy_representationShape" 
		-p "HingeJoint__instance_1:hinge_joint_hierarchy_representation";
	rename -uid "4A007E5E-4F82-00CD-70F4-4CBA066243DA";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-016 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-018
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-016 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-016 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-017
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-017 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-018 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-017
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-016 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-016 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-016
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-016 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hinge_joint_hierarchy_arrow_representation" 
		-p "HingeJoint__instance_1:hinge_joint_hierarchy_representation";
	rename -uid "83D6F1F8-4E5A-2E3C-2E48-328428D38D1F";
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.46739519169468152 0.46739519169468152 0.46739519169468152 ;
	setAttr ".rp" -type "double3" 1.1102230246251565e-016 0.5 0 ;
	setAttr ".rpt" -type "double3" 0.49999999999999989 -0.5 0 ;
	setAttr ".sp" -type "double3" 2.3753411339122038e-016 1.0697585445564812 0 ;
	setAttr ".spt" -type "double3" -1.2651181092870475e-016 -0.56975854455648134 0 ;
lockNode -l 1 -lu 1;
createNode mesh -n "HingeJoint__instance_1:hinge_joint_hierarchy_arrow_representationShape" 
		-p "HingeJoint__instance_1:hinge_joint_hierarchy_arrow_representation";
	rename -uid "48E87AEA-47F2-809F-2C92-FA91BA52F6D3";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-008 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".uvst";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".o";
	setAttr ".ci";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0.33249366 1.0697585 -0.33249369 
		-2.8027111e-008 1.0697585 -0.4702169 -0.33249369 1.0697585 -0.33249369 -0.4702169 
		1.0697585 -1.4013556e-008 -0.33249369 1.0697585 0.33249366 -2.8027111e-008 1.0697585 
		0.4702169 0.33249369 1.0697585 0.33249369 0.4702169 1.0697585 -1.4013556e-008 2.3753411e-016 
		1.0697585 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 -0.25 -0.70710671 0 -0.25 -0.99999988
		 -0.70710671 -0.25 -0.70710671 -0.99999988 -0.25 0 -0.70710671 -0.25 0.70710671 0 -0.25 0.99999994
		 0.70710677 -0.25 0.70710677 1 -0.25 0 0 0.25 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd";
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".atm" no;
	setAttr ".vnm" 0;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1" 
		-p "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "2E235999-44A9-0024-43DD-7DA5D1FA0B2D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 96.746939205460706 -12.336989071114241 -28.97318269216683 ;
	setAttr ".rst" -type "double3" 3.9999999033280145 -3.3306690738754696e-016 -0.99999997583200395 ;
	setAttr ".rsrr" -type "double3" 90.000005373519002 -14.036242816291569 6.5568814312202652e-015 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1" 
		-p "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "754C3757-43E4-F0E9-8808-8F936EEC3567";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:orientationControls_grp" -p "HingeJoint__instance_1:module_grp";
	rename -uid "895526B9-4C87-B60F-5C91-5EB4F69F515E";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:preferredAngle_representation_grp" 
		-p "HingeJoint__instance_1:module_grp";
	rename -uid "720D7F18-4D77-2F16-E16C-7ABBDFDFE345";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp" 
		-p "HingeJoint__instance_1:preferredAngle_representation_grp";
	rename -uid "E72B317A-4597-3EE0-A81A-A096966285D6";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp" -type "double3" -1.1920928955078125e-007 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".sp" -type "double3" -1.1920928955078125e-007 0.00014042854309082031 0.11461406946182251 ;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation" 
		-p "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "CFE9A69D-48E4-4C84-8F49-8CB36847792E";
	addAttr -ci true -sn "axis" -ln "axis" -min 0 -max 3 -en "+Y:-Y:+Z:-Z" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".t";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".axis";
lockNode -l 1 -lu 1;
createNode mesh -n "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representationShape" 
		-p "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation";
	rename -uid "57E0083A-469E-4878-8175-65B7D94844DE";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1070 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.7377643 0.1727457 0.75 0.25 0.73776412
		 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5
		 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427
		 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675
		 0.4227457 0.012235761 0.5 -1.1920929e-007 0.5772543 0.012235746 0.64694643 0.04774563
		 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968
		 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002
		 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792
		 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968
		 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5
		 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157
		 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968
		 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987
		 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516
		 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1
		 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999
		 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002 0.94999999 0.40000004
		 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999 0.50000006 1 0.50000006
		 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008 1 0.60000008 0.94999999
		 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011 0.94999999 1.000000119209
		 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001
		 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001
		 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006
		 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011
		 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001
		 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001
		 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006
		 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011
		 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001
		 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001
		 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006
		 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011
		 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001
		 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001
		 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006
		 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011
		 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001
		 0.69999993 0.1 0.69999993;
	setAttr ".uvst[0].uvsp[250:499]" 0.15000001 0.69999993 0.2 0.69999993 0.25
		 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993 0.45000005
		 0.69999993 0.50000006 0.69999993 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001
		 0.69999993 0.70000011 0.69999993 0.95000017 0.69999993 1.000000119209 0.69999993
		 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992
		 0.25 0.64999992 0.30000001 0.64999992 0.35000002 0.64999992 0.40000004 0.64999992
		 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007 0.64999992 0.60000008 0.64999992
		 0.6500001 0.64999992 0.70000011 0.64999992 0.95000017 0.64999992 1.000000119209 0.64999992
		 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999
		 0.25 0.5999999 0.30000001 0.5999999 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005
		 0.5999999 0.50000006 0.5999999 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001
		 0.5999999 0.70000011 0.5999999 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989
		 0.050000001 0.54999989 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989
		 0.30000001 0.54999989 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989
		 0.50000006 0.54999989 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989
		 0.70000011 0.54999989 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988
		 0.050000001 0.49999988 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988
		 0.30000001 0.49999988 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988
		 0.50000006 0.49999988 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988
		 0.70000011 0.49999988 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987
		 0.050000001 0.44999987 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987
		 0.30000001 0.44999987 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987
		 0.50000006 0.44999987 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987
		 0.70000011 0.44999987 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986
		 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986
		 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986
		 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986
		 0.70000011 0.39999986 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985
		 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985
		 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985
		 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985
		 0.70000011 0.34999985 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983
		 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983
		 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983
		 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983
		 0.70000011 0.29999983 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984
		 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984
		 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984
		 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984
		 0.70000011 0.24999984 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984
		 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984
		 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984
		 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984
		 0.70000011 0.19999984 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984
		 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984
		 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984
		 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984
		 0.70000011 0.14999984 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845
		 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25
		 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845
		 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845
		 0.6500001 0.099999845 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209
		 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844
		 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004
		 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844
		 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844
		 1.000000119209 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007 0.1 -1.5646219e-007
		 0.15000001 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007 0.30000001 -1.5646219e-007
		 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007 0.45000005 -1.5646219e-007
		 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007 0.60000008 -1.5646219e-007
		 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007;
	setAttr ".uvst[0].uvsp[500:749]" 0.95000017 -1.5646219e-007 1.000000119209
		 -1.5646219e-007 0 0 0.15838426 1.4050773e-016 0.30901742 0.95105654 0.15838476 1
		 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654 0 0 0.18460587 0 0.61803406 0.85065073
		 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-007 1 0 0.72654247 0 0 0.29869798
		 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1 0 0 0.15838529 0 0 0.18460587
		 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277 0 1.000000119209 0 0 0.99999946
		 2.7628249e-007 0.72654223 0 0 0.29869834 0 0.82442951 0.26787299 0.99999994 0.50952518
		 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-016 0.16653505 0 0.4596495 0.90211302
		 0.32491958 1 4.9568939e-007 1.4050772e-016 0.15838474 0 0.15838425 1 0 0.99999994
		 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1 0 0 0.72654068
		 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878 0 0 0.16653535
		 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205 1 0 0.79360431
		 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1 0 0 0.32492003
		 0.29311422 0.11195964 0.7377643 0.1727457 0.75 0.25 0.73776412 0.32725424 0.70225424
		 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5 0.5 0.42274573 0.48776418
		 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427 0.24999994 0.25 0.26223582
		 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675 0.4227457 0.012235761 0.5
		 -1.1920929e-007 0.5772543 0.012235746 0.64694643 0.04774563 0.70225441 0.1030536
		 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968 0.30000001 0.5
		 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002 0.5 0.49987689
		 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792 0.99958968
		 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968 0.47500005
		 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5 0.5000205 0.99958968
		 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157 0.99958968 0.59999996
		 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968 0.64999992 0.5 0.50012308
		 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987 0.5 0.50016415 0.99958968
		 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516 0.99958968 0.5 1 0.050000001
		 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1 0.94999999 0.15000001 1 0.15000001
		 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999 0.30000001 1 0.30000001 0.94999999
		 0.35000002 1 0.35000002 0.94999999 0.40000004 1 0.40000004 0.94999999 0.45000005
		 1 0.45000005 0.94999999 0.50000006 1 0.50000006 0.94999999 0.55000007 1 0.55000007
		 0.94999999 0.60000008 1 0.60000008 0.94999999 0.6500001 1 0.6500001 0.94999999 0.70000011
		 1 0.70000011 0.94999999 1.000000119209 1 0.95000017 1 0.95000017 0.94999999 1.000000119209
		 0.94999999 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998 0.15000001 0.89999998
		 0.2 0.89999998 0.25 0.89999998 0.30000001 0.89999998 0.35000002 0.89999998 0.40000004
		 0.89999998 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007 0.89999998 0.60000008
		 0.89999998 0.6500001 0.89999998 0.70000011 0.89999998 0.95000017 0.89999998 1.000000119209
		 0.89999998 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996 0.15000001 0.84999996
		 0.2 0.84999996 0.25 0.84999996 0.30000001 0.84999996 0.35000002 0.84999996 0.40000004
		 0.84999996 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007 0.84999996 0.60000008
		 0.84999996 0.6500001 0.84999996 0.70000011 0.84999996 0.95000017 0.84999996 1.000000119209
		 0.84999996 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995 0.15000001 0.79999995
		 0.2 0.79999995 0.25 0.79999995 0.30000001 0.79999995 0.35000002 0.79999995 0.40000004
		 0.79999995 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007 0.79999995 0.60000008
		 0.79999995 0.6500001 0.79999995 0.70000011 0.79999995 0.95000017 0.79999995 1.000000119209
		 0.79999995 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994 0.15000001 0.74999994
		 0.2 0.74999994 0.25 0.74999994 0.30000001 0.74999994 0.35000002 0.74999994 0.40000004
		 0.74999994 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007 0.74999994 0.60000008
		 0.74999994 0.6500001 0.74999994 0.70000011 0.74999994 0.95000017 0.74999994 1.000000119209
		 0.74999994 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993 0.15000001 0.69999993
		 0.2 0.69999993 0.25 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004
		 0.69999993;
	setAttr ".uvst[0].uvsp[750:999]" 0.45000005 0.69999993 0.50000006 0.69999993
		 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993
		 0.95000017 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992
		 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992
		 0.35000002 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992
		 0.55000007 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992
		 0.95000017 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999
		 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999
		 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999
		 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999
		 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989
		 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989
		 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989
		 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989
		 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988
		 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988
		 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988
		 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988
		 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987
		 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987
		 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987
		 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987
		 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986 0.050000001 0.39999986
		 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986 0.30000001 0.39999986
		 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986 0.50000006 0.39999986
		 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986 0.70000011 0.39999986
		 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985 0.050000001 0.34999985
		 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985
		 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985
		 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985
		 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983 0.050000001 0.29999983
		 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983
		 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983
		 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983
		 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984 0.050000001 0.24999984
		 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984
		 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984
		 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984
		 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984 0.050000001 0.19999984
		 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984
		 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984
		 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984
		 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984 0.050000001 0.14999984
		 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984
		 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984
		 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984
		 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845 0.050000001 0.099999845
		 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25 0.099999845 0.30000001
		 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845 0.45000005 0.099999845
		 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845 0.6500001 0.099999845
		 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209 0.099999845 0 0.049999844
		 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844 0.2 0.049999844 0.25
		 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004 0.049999844
		 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844 0.60000008 0.049999844
		 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844 1.000000119209
		 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007 0.1 -1.5646219e-007 0.15000001
		 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007 0.30000001 -1.5646219e-007
		 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007 0.45000005 -1.5646219e-007
		 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007 0.60000008 -1.5646219e-007
		 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007 0.95000017 -1.5646219e-007 1.000000119209
		 -1.5646219e-007 0 0 0.15838426 1.4050773e-016 0.30901742 0.95105654 0.15838476 1;
	setAttr ".uvst[0].uvsp[1000:1069]" 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654
		 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-007
		 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1
		 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277
		 0 1.000000119209 0 0 0.99999946 2.7628249e-007 0.72654223 0 0 0.29869834 0 0.82442951
		 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-016 0.16653505
		 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-007 1.4050772e-016 0.15838474 0 0.15838425
		 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1
		 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878
		 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205
		 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1
		 0 0 0.32492003 0.29311422 0.11195964;
	setAttr ".uvst";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".o";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 762 ".vt";
	setAttr ".vt[0:165]"  0.14265858 -2 -0.04635258 0.12135264 -2 -0.088167846
		 0.088167846 -2 -0.12135263 0.046352573 -2 -0.14265856 0 -2 -0.15000008 -0.046352573 -2 -0.14265855
		 -0.088167824 -2 -0.1213526 -0.12135259 -2 -0.088167816 -0.14265852 -2 -0.046352562
		 -0.15000004 -2 0 -0.14265852 -2 0.046352562 -0.12135258 -2 0.088167809 -0.088167809 -2 0.12135258
		 -0.046352562 -2 0.1426585 -4.4703485e-009 -2 0.15000002 0.046352547 -2 0.1426585
		 0.088167787 -2 0.12135256 0.12135255 -2 0.088167801 0.14265849 -2 0.04635255 0.15000001 -2 0
		 0.14265858 2 -0.04635258 0.12135264 2 -0.088167846 0.088167846 2 -0.12135263 0.046352573 2 -0.14265856
		 0 2 -0.15000008 -0.046352573 2 -0.14265855 -0.088167824 2 -0.1213526 -0.12135259 2 -0.088167816
		 -0.14265852 2 -0.046352562 -0.15000004 2 0 -0.14265852 2 0.046352562 -0.12135258 2 0.088167809
		 -0.088167809 2 0.12135258 -0.046352562 2 0.1426585 -4.4703485e-009 2 0.15000002 0.046352547 2 0.1426585
		 0.088167787 2 0.12135256 0.12135255 2 0.088167801 0.14265849 2 0.04635255 0.15000001 2 0
		 -0.0027888119 1.46116579 0.89826292 -0.0027888119 1.50792933 0.8064844 -0.0027888119 1.58076513 0.7336486
		 -0.0027888119 1.67254364 0.68688512 -0.0027888119 1.77428091 0.67077154 -0.0027888119 1.87601817 0.68688512
		 -0.0027888119 1.96779668 0.73364866 -0.0027888119 2.040632486 0.80648446 -0.0027888119 2.087395906 0.89826298
		 -0.0027888119 2.10350943 1.000000119209 -0.0027888119 2.087395906 1.10173738 -0.0027888119 2.040632486 1.19351578
		 -0.0027888119 1.96779656 1.26635158 -0.0027888119 1.87601817 1.31311512 -0.0027888119 1.77428091 1.32922864
		 -0.0027888119 1.67254376 1.313115 -0.0027888119 1.58076525 1.26635158 -0.0027888119 1.50792944 1.19351578
		 -0.0027888119 1.4611659 1.10173738 -0.0027888119 1.44505239 1.000000119209 0.45642692 1.77428091 1.000000119209
		 0.45642692 1.77402389 0.99991667 0.45642692 1.77406228 0.99984133 0.45642692 1.77412212 0.99978161
		 0.45642692 1.77419746 0.99974322 0.45642692 1.77428091 0.99972999 0.45642692 1.77436435 0.99974322
		 0.45642692 1.77443969 0.99978161 0.45642692 1.77449954 0.99984133 0.45642692 1.77453792 0.99991667
		 0.45642692 1.77455115 1.000000119209 0.45642692 1.77453792 1.000083565712 0.45642692 1.77449954 1.00015890598
		 0.45642692 1.77443969 1.00021874905 0.45642692 1.77436435 1.00025713444 0.45642692 1.77428091 1.00027036667
		 0.45642692 1.77419746 1.00025713444 0.45642692 1.77412212 1.00021874905 0.45642692 1.77406228 1.00015890598
		 0.45642692 1.77402389 1.000083565712 0.45642692 1.77401066 1.000000119209 0.85595143 1.77428091 -0.27811545
		 0.72811574 1.77428091 -0.52900702 0.52900702 1.77428091 -0.72811574 0.27811542 1.77428091 -0.85595131
		 0 1.77428091 -0.90000039 -0.27811542 1.77428091 -0.85595125 -0.5290069 1.77428091 -0.72811556
		 -0.7281155 1.77428091 -0.52900684 -0.85595107 1.77428091 -0.27811536 -0.90000021 1.77428091 0
		 -0.85595107 1.77428091 0.27811536 -0.72811544 1.77428091 0.52900684 -0.52900684 1.77428091 0.72811538
		 -0.27811536 1.77428091 0.85595095 -2.6822089e-008 1.77428091 0.9000001 0.89999998 1.77428091 0
		 0.86060625 1.80518258 -0.27962789 0.73207539 1.80518258 -0.5318839 0.5318839 1.80518258 -0.73207533
		 0.27962789 1.80518258 -0.86060613 0 1.80518258 -0.90489477 -0.27962789 1.80518258 -0.86060607
		 -0.53188378 1.80518258 -0.73207521 -0.73207515 1.80518258 -0.53188372 -0.8606059 1.80518258 -0.2796278
		 -0.90489459 1.80518258 0 -0.8606059 1.80518258 0.2796278 -0.7320751 1.80518258 0.53188366
		 -0.53188366 1.80518258 0.73207504 -0.2796278 1.80518258 0.86060578 -2.6967953e-008 1.80518258 0.90489447
		 0.90489435 1.80518258 0 0.87411499 1.83305943 -0.28401718 0.74356663 1.83305943 -0.54023278
		 0.54023278 1.83305943 -0.74356663 0.28401715 1.83305943 -0.87411493 0 1.83305943 -0.91909873
		 -0.28401715 1.83305943 -0.87411487 -0.54023266 1.83305943 -0.74356645 -0.74356639 1.83305943 -0.5402326
		 -0.87411469 1.83305943 -0.28401706 -0.91909856 1.83305943 0 -0.87411469 1.83305943 0.28401706
		 -0.74356633 1.83305943 0.54023254 -0.54023254 1.83305943 0.74356627 -0.28401706 1.83305943 0.87411457
		 -2.7391264e-008 1.83305943 0.91909844 0.91909832 1.83305943 0 0.89515543 1.85518265 -0.29085362
		 0.76146466 1.85518265 -0.55323642 0.55323642 1.85518265 -0.76146466 0.29085359 1.85518265 -0.89515531
		 0 1.85518265 -0.94122195 -0.29085359 1.85518265 -0.89515525 -0.55323631 1.85518265 -0.76146448
		 -0.76146442 1.85518265 -0.55323625 -0.89515507 1.85518265 -0.2908535 -0.94122171 1.85518265 0
		 -0.89515507 1.85518265 0.2908535 -0.76146436 1.85518265 0.55323619 -0.55323619 1.85518265 0.7614643
		 -0.2908535 1.85518265 0.89515495 -2.8050586e-008 1.85518265 0.94122159 0.94122148 1.85518265 0
		 0.92166787 1.86938655 -0.29946804 0.78401756 1.86938655 -0.56962204 0.56962204 1.86938655 -0.7840175
		 0.29946801 1.86938655 -0.92166775 0 1.86938655 -0.96909881 -0.29946801 1.86938655 -0.9216677
		 -0.56962192 1.86938655 -0.78401732 -0.78401726 1.86938655 -0.56962186 -0.92166752 1.86938655 -0.29946792
		 -0.96909857 1.86938655 0 -0.92166752 1.86938655 0.29946792 -0.78401721 1.86938655 0.5696218
		 -0.5696218 1.86938655 0.78401715 -0.29946792 1.86938655 0.9216674 -2.8881381e-008 1.86938655 0.96909845
		 0.96909833 1.86938655 0 0.95105714 1.87428093 -0.30901718 0.80901754 1.87428093 -0.5877856
		 0.5877856 1.87428093 -0.80901748 0.30901715 1.87428093 -0.95105702 0 1.87428093 -1.000000476837;
	setAttr ".vt[166:331]" -0.30901715 1.87428093 -0.95105696 -0.58778548 1.87428093 -0.8090173
		 -0.80901724 1.87428093 -0.58778542 -0.95105678 1.87428093 -0.30901706 -1.000000238419 1.87428093 0
		 -0.95105678 1.87428093 0.30901706 -0.80901718 1.87428093 0.58778536 -0.58778536 1.87428093 0.80901712
		 -0.30901706 1.87428093 0.95105666 -2.9802322e-008 1.87428093 1.000000119209 1 1.87428093 0
		 0.9804464 1.86938655 -0.31856632 0.83401752 1.86938655 -0.60594916 0.60594916 1.86938655 -0.83401746
		 0.31856629 1.86938655 -0.98044628 0 1.86938655 -1.030902147 -0.31856629 1.86938655 -0.98044622
		 -0.60594904 1.86938655 -0.83401728 -0.83401722 1.86938655 -0.60594898 -0.98044604 1.86938655 -0.3185662
		 -1.030901909 1.86938655 0 -0.98044604 1.86938655 0.3185662 -0.83401716 1.86938655 0.60594893
		 -0.60594893 1.86938655 0.8340171 -0.3185662 1.86938655 0.98044592 -3.0723264e-008 1.86938655 1.03090179
		 1.03090167 1.86938655 0 1.0069588423 1.85518265 -0.32718074 0.85657042 1.85518265 -0.62233478
		 0.62233478 1.85518265 -0.8565703 0.32718071 1.85518265 -1.0069587231 0 1.85518265 -1.058779001
		 -0.32718071 1.85518265 -1.0069587231 -0.62233466 1.85518265 -0.85657012 -0.85657007 1.85518265 -0.6223346
		 -1.0069584846 1.85518265 -0.32718062 -1.058778763 1.85518265 0 -1.0069584846 1.85518265 0.32718062
		 -0.85657001 1.85518265 0.62233454 -0.62233454 1.85518265 0.85656995 -0.32718062 1.85518265 1.0069583654
		 -3.1554059e-008 1.85518265 1.058778644 1.058778524 1.85518265 0 1.027999282 1.83305943 -0.33401722
		 0.87446845 1.83305943 -0.63533849 0.63533849 1.83305943 -0.87446839 0.33401719 1.83305943 -1.027999163
		 0 1.83305943 -1.080902219 -0.33401719 1.83305943 -1.027999163 -0.63533837 1.83305943 -0.87446821
		 -0.87446815 1.83305943 -0.63533831 -1.027998924 1.83305943 -0.33401707 -1.08090198 1.83305943 0
		 -1.027998924 1.83305943 0.33401707 -0.87446809 1.83305943 0.63533825 -0.63533825 1.83305943 0.87446803
		 -0.33401707 1.83305943 1.027998805 -3.2213382e-008 1.83305943 1.080901861 1.080901742 1.83305943 0
		 1.041508079 1.80518258 -0.33840647 0.88595968 1.80518258 -0.64368731 0.64368731 1.80518258 -0.88595963
		 0.33840641 1.80518258 -1.041507959 0 1.80518258 -1.095106125 -0.33840641 1.80518258 -1.04150784
		 -0.64368719 1.80518258 -0.88595939 -0.88595933 1.80518258 -0.64368713 -1.041507602 1.80518258 -0.33840632
		 -1.095105886 1.80518258 0 -1.041507602 1.80518258 0.33840632 -0.88595927 1.80518258 0.64368707
		 -0.64368707 1.80518258 0.88595921 -0.33840632 1.80518258 1.041507483 -3.2636692e-008 1.80518258 1.095105767
		 1.095105648 1.80518258 0 1.046162844 1.77428091 -0.33991891 0.88991934 1.77428091 -0.64656419
		 0.64656419 1.77428091 -0.88991922 0.33991888 1.77428091 -1.046162724 0 1.77428091 -1.1000005
		 -0.33991888 1.77428091 -1.046162724 -0.64656407 1.77428091 -0.88991904 -0.88991898 1.77428091 -0.64656401
		 -1.046162486 1.77428091 -0.33991876 -1.10000026 1.77428091 0 -1.046162486 1.77428091 0.33991876
		 -0.88991892 1.77428091 0.64656389 -0.64656389 1.77428091 0.88991886 -0.33991876 1.77428091 1.046162367
		 -3.2782555e-008 1.77428091 1.10000014 1.10000002 1.77428091 0 1.041508079 1.74337924 -0.33840647
		 0.88595968 1.74337924 -0.64368731 0.64368731 1.74337924 -0.88595963 0.33840641 1.74337924 -1.041507959
		 0 1.74337924 -1.095106125 -0.33840641 1.74337924 -1.04150784 -0.64368719 1.74337924 -0.88595939
		 -0.88595933 1.74337924 -0.64368713 -1.041507602 1.74337924 -0.33840632 -1.095105886 1.74337924 0
		 -1.041507602 1.74337924 0.33840632 -0.88595927 1.74337924 0.64368707 -0.64368707 1.74337924 0.88595921
		 -0.33840632 1.74337924 1.041507483 -3.2636692e-008 1.74337924 1.095105767 1.095105648 1.74337924 0
		 1.027999282 1.71550238 -0.33401722 0.87446845 1.71550238 -0.63533849 0.63533849 1.71550238 -0.87446839
		 0.33401719 1.71550238 -1.027999163 0 1.71550238 -1.080902219 -0.33401719 1.71550238 -1.027999163
		 -0.63533837 1.71550238 -0.87446821 -0.87446815 1.71550238 -0.63533831 -1.027998924 1.71550238 -0.33401707
		 -1.08090198 1.71550238 0 -1.027998924 1.71550238 0.33401707 -0.87446809 1.71550238 0.63533825
		 -0.63533825 1.71550238 0.87446803 -0.33401707 1.71550238 1.027998805 -3.2213382e-008 1.71550238 1.080901861
		 1.080901742 1.71550238 0 1.0069588423 1.69337916 -0.32718074 0.85657042 1.69337916 -0.62233478
		 0.62233478 1.69337916 -0.8565703 0.32718071 1.69337916 -1.0069587231 0 1.69337916 -1.058779001
		 -0.32718071 1.69337916 -1.0069587231 -0.62233466 1.69337916 -0.85657012 -0.85657007 1.69337916 -0.6223346
		 -1.0069584846 1.69337916 -0.32718062 -1.058778763 1.69337916 0 -1.0069584846 1.69337916 0.32718062
		 -0.85657001 1.69337916 0.62233454 -0.62233454 1.69337916 0.85656995 -0.32718062 1.69337916 1.0069583654
		 -3.1554059e-008 1.69337916 1.058778644 1.058778524 1.69337916 0 0.9804464 1.67917526 -0.31856632
		 0.83401752 1.67917526 -0.60594916 0.60594916 1.67917526 -0.83401746 0.31856629 1.67917526 -0.98044628
		 0 1.67917526 -1.030902147 -0.31856629 1.67917526 -0.98044622 -0.60594904 1.67917526 -0.83401728
		 -0.83401722 1.67917526 -0.60594898 -0.98044604 1.67917526 -0.3185662 -1.030901909 1.67917526 0
		 -0.98044604 1.67917526 0.3185662 -0.83401716 1.67917526 0.60594893 -0.60594893 1.67917526 0.8340171
		 -0.3185662 1.67917526 0.98044592 -3.0723264e-008 1.67917526 1.03090179 1.03090167 1.67917526 0
		 0.95105714 1.67428088 -0.30901718 0.80901754 1.67428088 -0.5877856 0.5877856 1.67428088 -0.80901748
		 0.30901715 1.67428088 -0.95105702 0 1.67428088 -1.000000476837 -0.30901715 1.67428088 -0.95105696
		 -0.58778548 1.67428088 -0.8090173 -0.80901724 1.67428088 -0.58778542 -0.95105678 1.67428088 -0.30901706
		 -1.000000238419 1.67428088 0 -0.95105678 1.67428088 0.30901706;
	setAttr ".vt[332:497]" -0.80901718 1.67428088 0.58778536 -0.58778536 1.67428088 0.80901712
		 -0.30901706 1.67428088 0.95105666 -2.9802322e-008 1.67428088 1.000000119209 1 1.67428088 0
		 0.92166781 1.67917526 -0.29946801 0.7840175 1.67917526 -0.56962198 0.56962198 1.67917526 -0.78401744
		 0.29946798 1.67917526 -0.9216677 0 1.67917526 -0.96909875 -0.29946798 1.67917526 -0.92166764
		 -0.56962192 1.67917526 -0.78401726 -0.78401721 1.67917526 -0.56962186 -0.92166746 1.67917526 -0.29946789
		 -0.96909851 1.67917526 0 -0.92166746 1.67917526 0.29946789 -0.78401715 1.67917526 0.5696218
		 -0.5696218 1.67917526 0.78401709 -0.29946789 1.67917526 0.92166734 -2.8881379e-008 1.67917526 0.96909839
		 0.96909827 1.67917526 0 0.89515537 1.69337916 -0.29085359 0.76146466 1.69337916 -0.55323642
		 0.55323642 1.69337916 -0.7614646 0.29085356 1.69337916 -0.89515525 0 1.69337916 -0.94122189
		 -0.29085356 1.69337916 -0.89515519 -0.55323631 1.69337916 -0.76146442 -0.76146436 1.69337916 -0.55323625
		 -0.89515501 1.69337916 -0.29085347 -0.94122165 1.69337916 0 -0.89515501 1.69337916 0.29085347
		 -0.7614643 1.69337916 0.55323619 -0.55323619 1.69337916 0.76146424 -0.29085347 1.69337916 0.89515489
		 -2.8050584e-008 1.69337916 0.94122154 0.94122142 1.69337916 0 0.87411493 1.71550238 -0.28401715
		 0.74356663 1.71550238 -0.54023272 0.54023272 1.71550238 -0.74356657 0.28401712 1.71550238 -0.87411487
		 0 1.71550238 -0.91909868 -0.28401712 1.71550238 -0.87411481 -0.5402326 1.71550238 -0.74356639
		 -0.74356633 1.71550238 -0.54023254 -0.87411463 1.71550238 -0.28401706 -0.9190985 1.71550238 0
		 -0.87411463 1.71550238 0.28401706 -0.74356627 1.71550238 0.54023248 -0.54023248 1.71550238 0.74356622
		 -0.28401706 1.71550238 0.87411451 -2.7391263e-008 1.71550238 0.91909838 0.91909826 1.71550238 0
		 0.86060619 1.74337924 -0.27962789 0.73207533 1.74337924 -0.53188384 0.53188384 1.74337924 -0.73207527
		 0.27962786 1.74337924 -0.86060607 0 1.74337924 -0.90489471 -0.27962786 1.74337924 -0.86060601
		 -0.53188372 1.74337924 -0.73207515 -0.7320751 1.74337924 -0.53188366 -0.86060584 1.74337924 -0.27962777
		 -0.90489453 1.74337924 0 -0.86060584 1.74337924 0.27962777 -0.73207504 1.74337924 0.5318836
		 -0.5318836 1.74337924 0.73207498 -0.27962777 1.74337924 0.86060572 -2.6967951e-008 1.74337924 0.90489441
		 0.90489429 1.74337924 0 -0.0027888119 -2.087115288 0.89826292 -0.0027888119 -2.040351629 0.8064844
		 -0.0027888119 -1.96751583 0.7336486 -0.0027888119 -1.87573731 0.68688512 -0.0027888119 -1.77400005 0.67077154
		 -0.0027888119 -1.67226279 0.68688512 -0.0027888119 -1.58048427 0.73364866 -0.0027888119 -1.50764847 0.80648446
		 -0.0027888119 -1.46088505 0.89826298 -0.0027888119 -1.44477141 1.000000119209 -0.0027888119 -1.46088505 1.10173738
		 -0.0027888119 -1.50764859 1.19351578 -0.0027888119 -1.58048439 1.26635158 -0.0027888119 -1.67226279 1.31311512
		 -0.0027888119 -1.77400005 1.32922864 -0.0027888119 -1.87573719 1.313115 -0.0027888119 -1.96751571 1.26635158
		 -0.0027888119 -2.040351391 1.19351578 -0.0027888119 -2.087115049 1.10173738 -0.0027888119 -2.10322857 1.000000119209
		 0.45642692 -1.77400005 1.000000119209 0.45642692 -1.77425706 0.99991667 0.45642692 -1.77421868 0.99984133
		 0.45642692 -1.77415884 0.99978161 0.45642692 -1.7740835 0.99974322 0.45642692 -1.77400005 0.99972999
		 0.45642692 -1.7739166 0.99974322 0.45642692 -1.77384126 0.99978161 0.45642692 -1.77378142 0.99984133
		 0.45642692 -1.77374303 0.99991667 0.45642692 -1.7737298 1.000000119209 0.45642692 -1.77374303 1.000083565712
		 0.45642692 -1.77378142 1.00015890598 0.45642692 -1.77384126 1.00021874905 0.45642692 -1.7739166 1.00025713444
		 0.45642692 -1.77400005 1.00027036667 0.45642692 -1.7740835 1.00025713444 0.45642692 -1.77415884 1.00021874905
		 0.45642692 -1.77421868 1.00015890598 0.45642692 -1.77425706 1.000083565712 0.45642692 -1.7742703 1.000000119209
		 0.85595143 -1.77400005 -0.27811545 0.72811574 -1.77400005 -0.52900702 0.52900702 -1.77400005 -0.72811574
		 0.27811542 -1.77400005 -0.85595131 0 -1.77400005 -0.90000039 -0.27811542 -1.77400005 -0.85595125
		 -0.5290069 -1.77400005 -0.72811556 -0.7281155 -1.77400005 -0.52900684 -0.85595107 -1.77400005 -0.27811536
		 -0.90000021 -1.77400005 0 -0.85595107 -1.77400005 0.27811536 -0.72811544 -1.77400005 0.52900684
		 -0.52900684 -1.77400005 0.72811538 -0.27811536 -1.77400005 0.85595095 -2.6822089e-008 -1.77400005 0.9000001
		 0.89999998 -1.77400005 0 0.86060625 -1.74309838 -0.27962789 0.73207539 -1.74309838 -0.5318839
		 0.5318839 -1.74309838 -0.73207533 0.27962789 -1.74309838 -0.86060613 0 -1.74309838 -0.90489477
		 -0.27962789 -1.74309838 -0.86060607 -0.53188378 -1.74309838 -0.73207521 -0.73207515 -1.74309838 -0.53188372
		 -0.8606059 -1.74309838 -0.2796278 -0.90489459 -1.74309838 0 -0.8606059 -1.74309838 0.2796278
		 -0.7320751 -1.74309838 0.53188366 -0.53188366 -1.74309838 0.73207504 -0.2796278 -1.74309838 0.86060578
		 -2.6967953e-008 -1.74309838 0.90489447 0.90489435 -1.74309838 0 0.87411499 -1.71522152 -0.28401718
		 0.74356663 -1.71522152 -0.54023278 0.54023278 -1.71522152 -0.74356663 0.28401715 -1.71522152 -0.87411493
		 0 -1.71522152 -0.91909873 -0.28401715 -1.71522152 -0.87411487 -0.54023266 -1.71522152 -0.74356645
		 -0.74356639 -1.71522152 -0.5402326 -0.87411469 -1.71522152 -0.28401706 -0.91909856 -1.71522152 0
		 -0.87411469 -1.71522152 0.28401706 -0.74356633 -1.71522152 0.54023254 -0.54023254 -1.71522152 0.74356627
		 -0.28401706 -1.71522152 0.87411457 -2.7391264e-008 -1.71522152 0.91909844 0.91909832 -1.71522152 0
		 0.89515543 -1.69309831 -0.29085362 0.76146466 -1.69309831 -0.55323642 0.55323642 -1.69309831 -0.76146466
		 0.29085359 -1.69309831 -0.89515531 0 -1.69309831 -0.94122195 -0.29085359 -1.69309831 -0.89515525
		 -0.55323631 -1.69309831 -0.76146448 -0.76146442 -1.69309831 -0.55323625;
	setAttr ".vt[498:663]" -0.89515507 -1.69309831 -0.2908535 -0.94122171 -1.69309831 0
		 -0.89515507 -1.69309831 0.2908535 -0.76146436 -1.69309831 0.55323619 -0.55323619 -1.69309831 0.7614643
		 -0.2908535 -1.69309831 0.89515495 -2.8050586e-008 -1.69309831 0.94122159 0.94122148 -1.69309831 0
		 0.92166787 -1.6788944 -0.29946804 0.78401756 -1.6788944 -0.56962204 0.56962204 -1.6788944 -0.7840175
		 0.29946801 -1.6788944 -0.92166775 0 -1.6788944 -0.96909881 -0.29946801 -1.6788944 -0.9216677
		 -0.56962192 -1.6788944 -0.78401732 -0.78401726 -1.6788944 -0.56962186 -0.92166752 -1.6788944 -0.29946792
		 -0.96909857 -1.6788944 0 -0.92166752 -1.6788944 0.29946792 -0.78401721 -1.6788944 0.5696218
		 -0.5696218 -1.6788944 0.78401715 -0.29946792 -1.6788944 0.9216674 -2.8881381e-008 -1.6788944 0.96909845
		 0.96909833 -1.6788944 0 0.95105714 -1.67400002 -0.30901718 0.80901754 -1.67400002 -0.5877856
		 0.5877856 -1.67400002 -0.80901748 0.30901715 -1.67400002 -0.95105702 0 -1.67400002 -1.000000476837
		 -0.30901715 -1.67400002 -0.95105696 -0.58778548 -1.67400002 -0.8090173 -0.80901724 -1.67400002 -0.58778542
		 -0.95105678 -1.67400002 -0.30901706 -1.000000238419 -1.67400002 0 -0.95105678 -1.67400002 0.30901706
		 -0.80901718 -1.67400002 0.58778536 -0.58778536 -1.67400002 0.80901712 -0.30901706 -1.67400002 0.95105666
		 -2.9802322e-008 -1.67400002 1.000000119209 1 -1.67400002 0 0.9804464 -1.6788944 -0.31856632
		 0.83401752 -1.6788944 -0.60594916 0.60594916 -1.6788944 -0.83401746 0.31856629 -1.6788944 -0.98044628
		 0 -1.6788944 -1.030902147 -0.31856629 -1.6788944 -0.98044622 -0.60594904 -1.6788944 -0.83401728
		 -0.83401722 -1.6788944 -0.60594898 -0.98044604 -1.6788944 -0.3185662 -1.030901909 -1.6788944 0
		 -0.98044604 -1.6788944 0.3185662 -0.83401716 -1.6788944 0.60594893 -0.60594893 -1.6788944 0.8340171
		 -0.3185662 -1.6788944 0.98044592 -3.0723264e-008 -1.6788944 1.03090179 1.03090167 -1.6788944 0
		 1.0069588423 -1.69309831 -0.32718074 0.85657042 -1.69309831 -0.62233478 0.62233478 -1.69309831 -0.8565703
		 0.32718071 -1.69309831 -1.0069587231 0 -1.69309831 -1.058779001 -0.32718071 -1.69309831 -1.0069587231
		 -0.62233466 -1.69309831 -0.85657012 -0.85657007 -1.69309831 -0.6223346 -1.0069584846 -1.69309831 -0.32718062
		 -1.058778763 -1.69309831 0 -1.0069584846 -1.69309831 0.32718062 -0.85657001 -1.69309831 0.62233454
		 -0.62233454 -1.69309831 0.85656995 -0.32718062 -1.69309831 1.0069583654 -3.1554059e-008 -1.69309831 1.058778644
		 1.058778524 -1.69309831 0 1.027999282 -1.71522152 -0.33401722 0.87446845 -1.71522152 -0.63533849
		 0.63533849 -1.71522152 -0.87446839 0.33401719 -1.71522152 -1.027999163 0 -1.71522152 -1.080902219
		 -0.33401719 -1.71522152 -1.027999163 -0.63533837 -1.71522152 -0.87446821 -0.87446815 -1.71522152 -0.63533831
		 -1.027998924 -1.71522152 -0.33401707 -1.08090198 -1.71522152 0 -1.027998924 -1.71522152 0.33401707
		 -0.87446809 -1.71522152 0.63533825 -0.63533825 -1.71522152 0.87446803 -0.33401707 -1.71522152 1.027998805
		 -3.2213382e-008 -1.71522152 1.080901861 1.080901742 -1.71522152 0 1.041508079 -1.74309838 -0.33840647
		 0.88595968 -1.74309838 -0.64368731 0.64368731 -1.74309838 -0.88595963 0.33840641 -1.74309838 -1.041507959
		 0 -1.74309838 -1.095106125 -0.33840641 -1.74309838 -1.04150784 -0.64368719 -1.74309838 -0.88595939
		 -0.88595933 -1.74309838 -0.64368713 -1.041507602 -1.74309838 -0.33840632 -1.095105886 -1.74309838 0
		 -1.041507602 -1.74309838 0.33840632 -0.88595927 -1.74309838 0.64368707 -0.64368707 -1.74309838 0.88595921
		 -0.33840632 -1.74309838 1.041507483 -3.2636692e-008 -1.74309838 1.095105767 1.095105648 -1.74309838 0
		 1.046162844 -1.77400005 -0.33991891 0.88991934 -1.77400005 -0.64656419 0.64656419 -1.77400005 -0.88991922
		 0.33991888 -1.77400005 -1.046162724 0 -1.77400005 -1.1000005 -0.33991888 -1.77400005 -1.046162724
		 -0.64656407 -1.77400005 -0.88991904 -0.88991898 -1.77400005 -0.64656401 -1.046162486 -1.77400005 -0.33991876
		 -1.10000026 -1.77400005 0 -1.046162486 -1.77400005 0.33991876 -0.88991892 -1.77400005 0.64656389
		 -0.64656389 -1.77400005 0.88991886 -0.33991876 -1.77400005 1.046162367 -3.2782555e-008 -1.77400005 1.10000014
		 1.10000002 -1.77400005 0 1.041508079 -1.80490172 -0.33840647 0.88595968 -1.80490172 -0.64368731
		 0.64368731 -1.80490172 -0.88595963 0.33840641 -1.80490172 -1.041507959 0 -1.80490172 -1.095106125
		 -0.33840641 -1.80490172 -1.04150784 -0.64368719 -1.80490172 -0.88595939 -0.88595933 -1.80490172 -0.64368713
		 -1.041507602 -1.80490172 -0.33840632 -1.095105886 -1.80490172 0 -1.041507602 -1.80490172 0.33840632
		 -0.88595927 -1.80490172 0.64368707 -0.64368707 -1.80490172 0.88595921 -0.33840632 -1.80490172 1.041507483
		 -3.2636692e-008 -1.80490172 1.095105767 1.095105648 -1.80490172 0 1.027999282 -1.83277857 -0.33401722
		 0.87446845 -1.83277857 -0.63533849 0.63533849 -1.83277857 -0.87446839 0.33401719 -1.83277857 -1.027999163
		 0 -1.83277857 -1.080902219 -0.33401719 -1.83277857 -1.027999163 -0.63533837 -1.83277857 -0.87446821
		 -0.87446815 -1.83277857 -0.63533831 -1.027998924 -1.83277857 -0.33401707 -1.08090198 -1.83277857 0
		 -1.027998924 -1.83277857 0.33401707 -0.87446809 -1.83277857 0.63533825 -0.63533825 -1.83277857 0.87446803
		 -0.33401707 -1.83277857 1.027998805 -3.2213382e-008 -1.83277857 1.080901861 1.080901742 -1.83277857 0
		 1.0069588423 -1.85490179 -0.32718074 0.85657042 -1.85490179 -0.62233478 0.62233478 -1.85490179 -0.8565703
		 0.32718071 -1.85490179 -1.0069587231 0 -1.85490179 -1.058779001 -0.32718071 -1.85490179 -1.0069587231
		 -0.62233466 -1.85490179 -0.85657012 -0.85657007 -1.85490179 -0.6223346 -1.0069584846 -1.85490179 -0.32718062
		 -1.058778763 -1.85490179 0 -1.0069584846 -1.85490179 0.32718062 -0.85657001 -1.85490179 0.62233454
		 -0.62233454 -1.85490179 0.85656995 -0.32718062 -1.85490179 1.0069583654;
	setAttr ".vt[664:761]" -3.1554059e-008 -1.85490179 1.058778644 1.058778524 -1.85490179 0
		 0.9804464 -1.8691057 -0.31856632 0.83401752 -1.8691057 -0.60594916 0.60594916 -1.8691057 -0.83401746
		 0.31856629 -1.8691057 -0.98044628 0 -1.8691057 -1.030902147 -0.31856629 -1.8691057 -0.98044622
		 -0.60594904 -1.8691057 -0.83401728 -0.83401722 -1.8691057 -0.60594898 -0.98044604 -1.8691057 -0.3185662
		 -1.030901909 -1.8691057 0 -0.98044604 -1.8691057 0.3185662 -0.83401716 -1.8691057 0.60594893
		 -0.60594893 -1.8691057 0.8340171 -0.3185662 -1.8691057 0.98044592 -3.0723264e-008 -1.8691057 1.03090179
		 1.03090167 -1.8691057 0 0.95105714 -1.87400007 -0.30901718 0.80901754 -1.87400007 -0.5877856
		 0.5877856 -1.87400007 -0.80901748 0.30901715 -1.87400007 -0.95105702 0 -1.87400007 -1.000000476837
		 -0.30901715 -1.87400007 -0.95105696 -0.58778548 -1.87400007 -0.8090173 -0.80901724 -1.87400007 -0.58778542
		 -0.95105678 -1.87400007 -0.30901706 -1.000000238419 -1.87400007 0 -0.95105678 -1.87400007 0.30901706
		 -0.80901718 -1.87400007 0.58778536 -0.58778536 -1.87400007 0.80901712 -0.30901706 -1.87400007 0.95105666
		 -2.9802322e-008 -1.87400007 1.000000119209 1 -1.87400007 0 0.92166781 -1.8691057 -0.29946801
		 0.7840175 -1.8691057 -0.56962198 0.56962198 -1.8691057 -0.78401744 0.29946798 -1.8691057 -0.9216677
		 0 -1.8691057 -0.96909875 -0.29946798 -1.8691057 -0.92166764 -0.56962192 -1.8691057 -0.78401726
		 -0.78401721 -1.8691057 -0.56962186 -0.92166746 -1.8691057 -0.29946789 -0.96909851 -1.8691057 0
		 -0.92166746 -1.8691057 0.29946789 -0.78401715 -1.8691057 0.5696218 -0.5696218 -1.8691057 0.78401709
		 -0.29946789 -1.8691057 0.92166734 -2.8881379e-008 -1.8691057 0.96909839 0.96909827 -1.8691057 0
		 0.89515537 -1.85490179 -0.29085359 0.76146466 -1.85490179 -0.55323642 0.55323642 -1.85490179 -0.7614646
		 0.29085356 -1.85490179 -0.89515525 0 -1.85490179 -0.94122189 -0.29085356 -1.85490179 -0.89515519
		 -0.55323631 -1.85490179 -0.76146442 -0.76146436 -1.85490179 -0.55323625 -0.89515501 -1.85490179 -0.29085347
		 -0.94122165 -1.85490179 0 -0.89515501 -1.85490179 0.29085347 -0.7614643 -1.85490179 0.55323619
		 -0.55323619 -1.85490179 0.76146424 -0.29085347 -1.85490179 0.89515489 -2.8050584e-008 -1.85490179 0.94122154
		 0.94122142 -1.85490179 0 0.87411493 -1.83277857 -0.28401715 0.74356663 -1.83277857 -0.54023272
		 0.54023272 -1.83277857 -0.74356657 0.28401712 -1.83277857 -0.87411487 0 -1.83277857 -0.91909868
		 -0.28401712 -1.83277857 -0.87411481 -0.5402326 -1.83277857 -0.74356639 -0.74356633 -1.83277857 -0.54023254
		 -0.87411463 -1.83277857 -0.28401706 -0.9190985 -1.83277857 0 -0.87411463 -1.83277857 0.28401706
		 -0.74356627 -1.83277857 0.54023248 -0.54023248 -1.83277857 0.74356622 -0.28401706 -1.83277857 0.87411451
		 -2.7391263e-008 -1.83277857 0.91909838 0.91909826 -1.83277857 0 0.86060619 -1.80490172 -0.27962789
		 0.73207533 -1.80490172 -0.53188384 0.53188384 -1.80490172 -0.73207527 0.27962786 -1.80490172 -0.86060607
		 0 -1.80490172 -0.90489471 -0.27962786 -1.80490172 -0.86060601 -0.53188372 -1.80490172 -0.73207515
		 -0.7320751 -1.80490172 -0.53188366 -0.86060584 -1.80490172 -0.27962777 -0.90489453 -1.80490172 0
		 -0.86060584 -1.80490172 0.27962777 -0.73207504 -1.80490172 0.5318836 -0.5318836 -1.80490172 0.73207498
		 -0.27962777 -1.80490172 0.86060572 -2.6967951e-008 -1.80490172 0.90489441 0.90489429 -1.80490172 0;
	setAttr -s 1494 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0
		 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0
		 56 57 0 57 58 0 58 59 0 59 40 0 40 61 1 41 62 1 42 63 1 43 64 1 44 65 1 45 66 1 46 67 1
		 47 68 1 48 69 1 49 70 1 50 71 1 51 72 1 52 73 1 53 74 1 54 75 1 55 76 1 56 77 1 57 78 1
		 58 79 1 59 80 1 61 60 0 62 60 0 63 60 0 64 60 0 65 60 0 66 60 0 67 60 0 68 60 0 69 60 0
		 70 60 0 71 60 0 72 60 0 73 60 0 74 60 0 75 60 0 76 60 0 77 60 0 78 60 0 79 60 0 80 60 0
		 62 61 0 63 62 0 64 63 0 65 64 0 66 65 0 67 66 0 68 67 0 69 68 0 70 69 0 71 70 0 72 71 0
		 73 72 0 74 73 0 75 74 0 76 75 0 77 76 0 78 77 0 79 78 0 80 79 0 61 80 0 81 82 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 96 81 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1
		 104 105 1 105 106 1 106 107 1 107 108 1;
	setAttr ".ed[166:331]" 108 109 1 109 110 1 110 111 1 112 97 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 128 113 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 143 1
		 144 129 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 160 145 1 161 162 1 162 163 1
		 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 176 161 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 192 177 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 208 193 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 224 209 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1
		 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1
		 240 225 1 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 256 241 1 257 258 1 258 259 1
		 259 260 1 260 261 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1
		 268 269 1 269 270 1 270 271 1 272 257 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1
		 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1;
	setAttr ".ed[332:497]" 285 286 1 286 287 1 288 273 1 289 290 1 290 291 1 291 292 1
		 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1
		 301 302 1 302 303 1 304 289 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1
		 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 320 305 1
		 321 322 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 336 321 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 351 1 352 337 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1
		 359 360 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 368 353 1
		 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1 377 378 1
		 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1 384 369 1 385 386 1 386 387 1 387 388 1
		 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1
		 397 398 1 398 399 1 400 385 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1
		 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 0
		 96 112 0 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1
		 105 121 1 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1 111 127 0 112 128 0 113 129 1
		 114 130 1 115 131 1 116 132 1 117 133 1 118 134 1 119 135 1 120 136 1 121 137 1 122 138 1
		 123 139 1 124 140 1 125 141 1 126 142 1 127 143 0 128 144 0 129 145 1 130 146 1 131 147 1
		 132 148 1 133 149 1 134 150 1 135 151 1 136 152 1 137 153 1 138 154 1;
	setAttr ".ed[498:663]" 139 155 1 140 156 1 141 157 1 142 158 1 143 159 0 144 160 0
		 145 161 1 146 162 1 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1 153 169 1
		 154 170 1 155 171 1 156 172 1 157 173 1 158 174 1 159 175 0 160 176 0 161 177 1 162 178 1
		 163 179 1 164 180 1 165 181 1 166 182 1 167 183 1 168 184 1 169 185 1 170 186 1 171 187 1
		 172 188 1 173 189 1 174 190 1 175 191 0 176 192 0 177 193 1 178 194 1 179 195 1 180 196 1
		 181 197 1 182 198 1 183 199 1 184 200 1 185 201 1 186 202 1 187 203 1 188 204 1 189 205 1
		 190 206 1 191 207 0 192 208 0 193 209 1 194 210 1 195 211 1 196 212 1 197 213 1 198 214 1
		 199 215 1 200 216 1 201 217 1 202 218 1 203 219 1 204 220 1 205 221 1 206 222 1 207 223 0
		 208 224 0 209 225 1 210 226 1 211 227 1 212 228 1 213 229 1 214 230 1 215 231 1 216 232 1
		 217 233 1 218 234 1 219 235 1 220 236 1 221 237 1 222 238 1 223 239 0 224 240 0 225 241 1
		 226 242 1 227 243 1 228 244 1 229 245 1 230 246 1 231 247 1 232 248 1 233 249 1 234 250 1
		 235 251 1 236 252 1 237 253 1 238 254 1 239 255 0 240 256 0 241 257 1 242 258 1 243 259 1
		 244 260 1 245 261 1 246 262 1 247 263 1 248 264 1 249 265 1 250 266 1 251 267 1 252 268 1
		 253 269 1 254 270 1 255 271 0 256 272 0 257 273 1 258 274 1 259 275 1 260 276 1 261 277 1
		 262 278 1 263 279 1 264 280 1 265 281 1 266 282 1 267 283 1 268 284 1 269 285 1 270 286 1
		 271 287 0 272 288 0 273 289 1 274 290 1 275 291 1 276 292 1 277 293 1 278 294 1 279 295 1
		 280 296 1 281 297 1 282 298 1 283 299 1 284 300 1 285 301 1 286 302 1 287 303 0 288 304 0
		 289 305 1 290 306 1 291 307 1 292 308 1 293 309 1 294 310 1 295 311 1 296 312 1 297 313 1
		 298 314 1 299 315 1 300 316 1 301 317 1 302 318 1 303 319 0 304 320 0;
	setAttr ".ed[664:829]" 305 321 1 306 322 1 307 323 1 308 324 1 309 325 1 310 326 1
		 311 327 1 312 328 1 313 329 1 314 330 1 315 331 1 316 332 1 317 333 1 318 334 1 319 335 0
		 320 336 0 321 337 1 322 338 1 323 339 1 324 340 1 325 341 1 326 342 1 327 343 1 328 344 1
		 329 345 1 330 346 1 331 347 1 332 348 1 333 349 1 334 350 1 335 351 0 336 352 0 337 353 1
		 338 354 1 339 355 1 340 356 1 341 357 1 342 358 1 343 359 1 344 360 1 345 361 1 346 362 1
		 347 363 1 348 364 1 349 365 1 350 366 1 351 367 0 352 368 0 353 369 1 354 370 1 355 371 1
		 356 372 1 357 373 1 358 374 1 359 375 1 360 376 1 361 377 1 362 378 1 363 379 1 364 380 1
		 365 381 1 366 382 1 367 383 0 368 384 0 369 385 1 370 386 1 371 387 1 372 388 1 373 389 1
		 374 390 1 375 391 1 376 392 1 377 393 1 378 394 1 379 395 1 380 396 1 381 397 1 382 398 1
		 383 399 0 384 400 0 385 81 1 386 82 1 387 83 1 388 84 1 389 85 1 390 86 1 391 87 1
		 392 88 1 393 89 1 394 90 1 395 91 1 396 92 1 397 93 1 398 94 1 399 95 0 400 96 0
		 160 352 0 336 176 0 320 192 0 304 208 0 288 224 0 272 240 0 144 368 0 128 384 0 112 400 0
		 191 303 0 319 175 0 335 159 0 207 287 0 223 271 0 351 143 0 367 127 0 383 111 0 401 402 0
		 402 403 0 403 404 0 404 405 0 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0 410 411 0
		 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0 419 420 0
		 420 401 0 401 422 1 402 423 1 403 424 1 404 425 1 405 426 1 406 427 1 407 428 1 408 429 1
		 409 430 1 410 431 1 411 432 1 412 433 1 413 434 1 414 435 1 415 436 1 416 437 1 417 438 1
		 418 439 1 419 440 1 420 441 1 422 421 0 423 421 0 424 421 0 425 421 0 426 421 0 427 421 0
		 428 421 0 429 421 0 430 421 0 431 421 0 432 421 0 433 421 0 434 421 0;
	setAttr ".ed[830:995]" 435 421 0 436 421 0 437 421 0 438 421 0 439 421 0 440 421 0
		 441 421 0 423 422 0 424 423 0 425 424 0 426 425 0 427 426 0 428 427 0 429 428 0 430 429 0
		 431 430 0 432 431 0 433 432 0 434 433 0 435 434 0 436 435 0 437 436 0 438 437 0 439 438 0
		 440 439 0 441 440 0 422 441 0 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1
		 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 457 442 1
		 458 459 1 459 460 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 473 458 1 474 475 1 475 476 1 476 477 1
		 477 478 1 478 479 1 479 480 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1
		 486 487 1 487 488 1 489 474 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1
		 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1 502 503 1 503 504 1 505 490 1
		 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1
		 515 516 1 516 517 1 517 518 1 518 519 1 519 520 1 521 506 1 522 523 1 523 524 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 537 522 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1
		 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1 553 538 1
		 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1 561 562 1 562 563 1
		 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 569 554 1 570 571 1 571 572 1 572 573 1
		 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1
		 582 583 1 583 584 1 585 570 1 586 587 1 587 588 1 588 589 1 589 590 1;
	setAttr ".ed[996:1161]" 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1
		 596 597 1 597 598 1 598 599 1 599 600 1 601 586 1 602 603 1 603 604 1 604 605 1 605 606 1
		 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1
		 615 616 1 617 602 1 618 619 1 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1
		 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1 630 631 1 631 632 1 633 618 1 634 635 1
		 635 636 1 636 637 1 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 648 1 649 634 1 650 651 1 651 652 1 652 653 1 653 654 1
		 654 655 1 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1
		 663 664 1 665 650 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 681 666 1 682 683 1
		 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1 691 692 1
		 692 693 1 693 694 1 694 695 1 695 696 1 697 682 1 698 699 1 699 700 1 700 701 1 701 702 1
		 702 703 1 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 711 712 1 713 698 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 727 728 1 729 714 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 745 730 1 746 747 1 747 748 1 748 749 1 749 750 1
		 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1
		 759 760 1 761 746 1 442 458 1 443 459 1 444 460 1 445 461 1 446 462 1;
	setAttr ".ed[1162:1327]" 447 463 1 448 464 1 449 465 1 450 466 1 451 467 1 452 468 1
		 453 469 1 454 470 1 455 471 1 456 472 0 457 473 0 458 474 1 459 475 1 460 476 1 461 477 1
		 462 478 1 463 479 1 464 480 1 465 481 1 466 482 1 467 483 1 468 484 1 469 485 1 470 486 1
		 471 487 1 472 488 0 473 489 0 474 490 1 475 491 1 476 492 1 477 493 1 478 494 1 479 495 1
		 480 496 1 481 497 1 482 498 1 483 499 1 484 500 1 485 501 1 486 502 1 487 503 1 488 504 0
		 489 505 0 490 506 1 491 507 1 492 508 1 493 509 1 494 510 1 495 511 1 496 512 1 497 513 1
		 498 514 1 499 515 1 500 516 1 501 517 1 502 518 1 503 519 1 504 520 0 505 521 0 506 522 1
		 507 523 1 508 524 1 509 525 1 510 526 1 511 527 1 512 528 1 513 529 1 514 530 1 515 531 1
		 516 532 1 517 533 1 518 534 1 519 535 1 520 536 0 521 537 0 522 538 1 523 539 1 524 540 1
		 525 541 1 526 542 1 527 543 1 528 544 1 529 545 1 530 546 1 531 547 1 532 548 1 533 549 1
		 534 550 1 535 551 1 536 552 0 537 553 0 538 554 1 539 555 1 540 556 1 541 557 1 542 558 1
		 543 559 1 544 560 1 545 561 1 546 562 1 547 563 1 548 564 1 549 565 1 550 566 1 551 567 1
		 552 568 0 553 569 0 554 570 1 555 571 1 556 572 1 557 573 1 558 574 1 559 575 1 560 576 1
		 561 577 1 562 578 1 563 579 1 564 580 1 565 581 1 566 582 1 567 583 1 568 584 0 569 585 0
		 570 586 1 571 587 1 572 588 1 573 589 1 574 590 1 575 591 1 576 592 1 577 593 1 578 594 1
		 579 595 1 580 596 1 581 597 1 582 598 1 583 599 1 584 600 0 585 601 0 586 602 1 587 603 1
		 588 604 1 589 605 1 590 606 1 591 607 1 592 608 1 593 609 1 594 610 1 595 611 1 596 612 1
		 597 613 1 598 614 1 599 615 1 600 616 0 601 617 0 602 618 1 603 619 1 604 620 1 605 621 1
		 606 622 1 607 623 1 608 624 1 609 625 1 610 626 1 611 627 1 612 628 1;
	setAttr ".ed[1328:1493]" 613 629 1 614 630 1 615 631 1 616 632 0 617 633 0 618 634 1
		 619 635 1 620 636 1 621 637 1 622 638 1 623 639 1 624 640 1 625 641 1 626 642 1 627 643 1
		 628 644 1 629 645 1 630 646 1 631 647 1 632 648 0 633 649 0 634 650 1 635 651 1 636 652 1
		 637 653 1 638 654 1 639 655 1 640 656 1 641 657 1 642 658 1 643 659 1 644 660 1 645 661 1
		 646 662 1 647 663 1 648 664 0 649 665 0 650 666 1 651 667 1 652 668 1 653 669 1 654 670 1
		 655 671 1 656 672 1 657 673 1 658 674 1 659 675 1 660 676 1 661 677 1 662 678 1 663 679 1
		 664 680 0 665 681 0 666 682 1 667 683 1 668 684 1 669 685 1 670 686 1 671 687 1 672 688 1
		 673 689 1 674 690 1 675 691 1 676 692 1 677 693 1 678 694 1 679 695 1 680 696 0 681 697 0
		 682 698 1 683 699 1 684 700 1 685 701 1 686 702 1 687 703 1 688 704 1 689 705 1 690 706 1
		 691 707 1 692 708 1 693 709 1 694 710 1 695 711 1 696 712 0 697 713 0 698 714 1 699 715 1
		 700 716 1 701 717 1 702 718 1 703 719 1 704 720 1 705 721 1 706 722 1 707 723 1 708 724 1
		 709 725 1 710 726 1 711 727 1 712 728 0 713 729 0 714 730 1 715 731 1 716 732 1 717 733 1
		 718 734 1 719 735 1 720 736 1 721 737 1 722 738 1 723 739 1 724 740 1 725 741 1 726 742 1
		 727 743 1 728 744 0 729 745 0 730 746 1 731 747 1 732 748 1 733 749 1 734 750 1 735 751 1
		 736 752 1 737 753 1 738 754 1 739 755 1 740 756 1 741 757 1 742 758 1 743 759 1 744 760 0
		 745 761 0 746 442 1 747 443 1 748 444 1 749 445 1 750 446 1 751 447 1 752 448 1 753 449 1
		 754 450 1 755 451 1 756 452 1 757 453 1 758 454 1 759 455 1 760 456 0 761 457 0 521 713 0
		 697 537 0 681 553 0 665 569 0 649 585 0 633 601 0 505 729 0 489 745 0 473 761 0 552 664 0
		 680 536 0 696 520 0 568 648 0 584 632 0 712 504 0 728 488 0 744 472 0;
	setAttr -s 742 -ch 2988 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81
		f 20 -80 -79 -78 -77 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61
		mu 0 20 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101
		f 4 60 81 120 -81
		mu 0 4 102 103 104 105
		f 4 61 82 121 -82
		mu 0 4 103 106 107 104
		f 4 62 83 122 -83
		mu 0 4 106 108 109 107
		f 4 63 84 123 -84
		mu 0 4 108 110 111 109
		f 4 64 85 124 -85
		mu 0 4 110 112 113 111
		f 4 65 86 125 -86
		mu 0 4 112 114 115 113
		f 4 66 87 126 -87
		mu 0 4 114 116 117 115
		f 4 67 88 127 -88
		mu 0 4 116 118 119 117
		f 4 68 89 128 -89
		mu 0 4 118 120 121 119
		f 4 69 90 129 -90
		mu 0 4 120 122 123 121
		f 4 70 91 130 -91
		mu 0 4 122 124 125 123
		f 4 71 92 131 -92
		mu 0 4 124 126 127 125
		f 4 72 93 132 -93
		mu 0 4 126 128 129 127
		f 4 73 94 133 -94
		mu 0 4 128 130 131 129
		f 4 74 95 134 -95
		mu 0 4 130 132 133 131
		f 4 75 96 135 -96
		mu 0 4 132 134 135 133
		f 4 76 97 136 -97
		mu 0 4 134 136 137 135
		f 4 77 98 137 -98
		mu 0 4 136 138 139 137
		f 4 78 99 138 -99
		mu 0 4 138 140 141 139
		f 4 79 80 139 -100
		mu 0 4 140 142 143 141
		f 3 -121 101 -101
		mu 0 3 105 104 144
		f 3 -122 102 -102
		mu 0 3 104 107 144
		f 3 -123 103 -103
		mu 0 3 107 109 144
		f 3 -124 104 -104
		mu 0 3 109 111 144
		f 3 -125 105 -105
		mu 0 3 111 113 144
		f 3 -126 106 -106
		mu 0 3 113 115 144
		f 3 -127 107 -107
		mu 0 3 115 117 144
		f 3 -128 108 -108
		mu 0 3 117 119 144
		f 3 -129 109 -109
		mu 0 3 119 121 144
		f 3 -130 110 -110
		mu 0 3 121 123 144
		f 3 -131 111 -111
		mu 0 3 123 125 144
		f 3 -132 112 -112
		mu 0 3 125 127 144
		f 3 -133 113 -113
		mu 0 3 127 129 144
		f 3 -134 114 -114
		mu 0 3 129 131 144
		f 3 -135 115 -115
		mu 0 3 131 133 144
		f 3 -136 116 -116
		mu 0 3 133 135 144
		f 3 -137 117 -117
		mu 0 3 135 137 144
		f 3 -138 118 -118
		mu 0 3 137 139 144
		f 3 -139 119 -119
		mu 0 3 139 141 144
		f 3 -140 100 -120
		mu 0 3 141 143 144
		f 4 -141 440 155 -442
		mu 0 4 145 146 147 148
		f 4 -142 441 156 -443
		mu 0 4 149 145 148 150
		f 4 -143 442 157 -444
		mu 0 4 151 149 150 152
		f 4 -144 443 158 -445
		mu 0 4 153 151 152 154
		f 4 -145 444 159 -446
		mu 0 4 155 153 154 156
		f 4 -146 445 160 -447
		mu 0 4 157 155 156 158
		f 4 -147 446 161 -448
		mu 0 4 159 157 158 160
		f 4 -148 447 162 -449
		mu 0 4 161 159 160 162
		f 4 -149 448 163 -450
		mu 0 4 163 161 162 164
		f 4 -150 449 164 -451
		mu 0 4 165 163 164 166
		f 4 -151 450 165 -452
		mu 0 4 167 165 166 168
		f 4 -152 451 166 -453
		mu 0 4 169 167 168 170
		f 4 -153 452 167 -454
		mu 0 4 171 169 170 172
		f 4 -154 453 168 -455
		mu 0 4 173 171 172 174
		f 4 -155 455 169 -441
		mu 0 4 175 176 177 178
		f 4 -156 456 170 -458
		mu 0 4 148 147 179 180
		f 4 -157 457 171 -459
		mu 0 4 150 148 180 181
		f 4 -158 458 172 -460
		mu 0 4 152 150 181 182
		f 4 -159 459 173 -461
		mu 0 4 154 152 182 183
		f 4 -160 460 174 -462
		mu 0 4 156 154 183 184
		f 4 -161 461 175 -463
		mu 0 4 158 156 184 185
		f 4 -162 462 176 -464
		mu 0 4 160 158 185 186
		f 4 -163 463 177 -465
		mu 0 4 162 160 186 187
		f 4 -164 464 178 -466
		mu 0 4 164 162 187 188
		f 4 -165 465 179 -467
		mu 0 4 166 164 188 189
		f 4 -166 466 180 -468
		mu 0 4 168 166 189 190
		f 4 -167 467 181 -469
		mu 0 4 170 168 190 191
		f 4 -168 468 182 -470
		mu 0 4 172 170 191 192
		f 4 -169 469 183 -471
		mu 0 4 174 172 192 193
		f 4 -170 471 184 -457
		mu 0 4 178 177 194 195
		f 4 -171 472 185 -474
		mu 0 4 180 179 196 197
		f 4 -172 473 186 -475
		mu 0 4 181 180 197 198
		f 4 -173 474 187 -476
		mu 0 4 182 181 198 199
		f 4 -174 475 188 -477
		mu 0 4 183 182 199 200
		f 4 -175 476 189 -478
		mu 0 4 184 183 200 201
		f 4 -176 477 190 -479
		mu 0 4 185 184 201 202
		f 4 -177 478 191 -480
		mu 0 4 186 185 202 203
		f 4 -178 479 192 -481
		mu 0 4 187 186 203 204
		f 4 -179 480 193 -482
		mu 0 4 188 187 204 205
		f 4 -180 481 194 -483
		mu 0 4 189 188 205 206
		f 4 -181 482 195 -484
		mu 0 4 190 189 206 207
		f 4 -182 483 196 -485
		mu 0 4 191 190 207 208
		f 4 -183 484 197 -486
		mu 0 4 192 191 208 209
		f 4 -184 485 198 -487
		mu 0 4 193 192 209 210
		f 4 -185 487 199 -473
		mu 0 4 195 194 211 212
		f 4 -186 488 200 -490
		mu 0 4 197 196 213 214
		f 4 -187 489 201 -491
		mu 0 4 198 197 214 215
		f 4 -188 490 202 -492
		mu 0 4 199 198 215 216
		f 4 -189 491 203 -493
		mu 0 4 200 199 216 217
		f 4 -190 492 204 -494
		mu 0 4 201 200 217 218
		f 4 -191 493 205 -495
		mu 0 4 202 201 218 219
		f 4 -192 494 206 -496
		mu 0 4 203 202 219 220
		f 4 -193 495 207 -497
		mu 0 4 204 203 220 221
		f 4 -194 496 208 -498
		mu 0 4 205 204 221 222
		f 4 -195 497 209 -499
		mu 0 4 206 205 222 223
		f 4 -196 498 210 -500
		mu 0 4 207 206 223 224
		f 4 -197 499 211 -501
		mu 0 4 208 207 224 225
		f 4 -198 500 212 -502
		mu 0 4 209 208 225 226
		f 4 -199 501 213 -503
		mu 0 4 210 209 226 227
		f 4 -200 503 214 -489
		mu 0 4 212 211 228 229
		f 4 -201 504 215 -506
		mu 0 4 214 213 230 231
		f 4 -202 505 216 -507
		mu 0 4 215 214 231 232
		f 4 -203 506 217 -508
		mu 0 4 216 215 232 233
		f 4 -204 507 218 -509
		mu 0 4 217 216 233 234
		f 4 -205 508 219 -510
		mu 0 4 218 217 234 235
		f 4 -206 509 220 -511
		mu 0 4 219 218 235 236
		f 4 -207 510 221 -512
		mu 0 4 220 219 236 237
		f 4 -208 511 222 -513
		mu 0 4 221 220 237 238
		f 4 -209 512 223 -514
		mu 0 4 222 221 238 239
		f 4 -210 513 224 -515
		mu 0 4 223 222 239 240
		f 4 -211 514 225 -516
		mu 0 4 224 223 240 241
		f 4 -212 515 226 -517
		mu 0 4 225 224 241 242
		f 4 -213 516 227 -518
		mu 0 4 226 225 242 243
		f 4 -214 517 228 -519
		mu 0 4 227 226 243 244
		f 4 -215 519 229 -505
		mu 0 4 229 228 245 246
		f 4 -216 520 230 -522
		mu 0 4 231 230 247 248
		f 4 -217 521 231 -523
		mu 0 4 232 231 248 249
		f 4 -218 522 232 -524
		mu 0 4 233 232 249 250
		f 4 -219 523 233 -525
		mu 0 4 234 233 250 251
		f 4 -220 524 234 -526
		mu 0 4 235 234 251 252
		f 4 -221 525 235 -527
		mu 0 4 236 235 252 253
		f 4 -222 526 236 -528
		mu 0 4 237 236 253 254
		f 4 -223 527 237 -529
		mu 0 4 238 237 254 255
		f 4 -224 528 238 -530
		mu 0 4 239 238 255 256
		f 4 -225 529 239 -531
		mu 0 4 240 239 256 257
		f 4 -226 530 240 -532
		mu 0 4 241 240 257 258
		f 4 -227 531 241 -533
		mu 0 4 242 241 258 259
		f 4 -228 532 242 -534
		mu 0 4 243 242 259 260
		f 4 -229 533 243 -535
		mu 0 4 244 243 260 261
		f 4 -230 535 244 -521
		mu 0 4 246 245 262 263
		f 4 -231 536 245 -538
		mu 0 4 248 247 264 265
		f 4 -232 537 246 -539
		mu 0 4 249 248 265 266
		f 4 -233 538 247 -540
		mu 0 4 250 249 266 267
		f 4 -234 539 248 -541
		mu 0 4 251 250 267 268
		f 4 -235 540 249 -542
		mu 0 4 252 251 268 269
		f 4 -236 541 250 -543
		mu 0 4 253 252 269 270
		f 4 -237 542 251 -544
		mu 0 4 254 253 270 271
		f 4 -238 543 252 -545
		mu 0 4 255 254 271 272
		f 4 -239 544 253 -546
		mu 0 4 256 255 272 273
		f 4 -240 545 254 -547
		mu 0 4 257 256 273 274
		f 4 -241 546 255 -548
		mu 0 4 258 257 274 275
		f 4 -242 547 256 -549
		mu 0 4 259 258 275 276
		f 4 -243 548 257 -550
		mu 0 4 260 259 276 277
		f 4 -244 549 258 -551
		mu 0 4 261 260 277 278
		f 4 -245 551 259 -537
		mu 0 4 263 262 279 280
		f 4 -246 552 260 -554
		mu 0 4 265 264 281 282
		f 4 -247 553 261 -555
		mu 0 4 266 265 282 283
		f 4 -248 554 262 -556
		mu 0 4 267 266 283 284
		f 4 -249 555 263 -557
		mu 0 4 268 267 284 285
		f 4 -250 556 264 -558
		mu 0 4 269 268 285 286
		f 4 -251 557 265 -559
		mu 0 4 270 269 286 287
		f 4 -252 558 266 -560
		mu 0 4 271 270 287 288
		f 4 -253 559 267 -561
		mu 0 4 272 271 288 289
		f 4 -254 560 268 -562
		mu 0 4 273 272 289 290
		f 4 -255 561 269 -563
		mu 0 4 274 273 290 291
		f 4 -256 562 270 -564
		mu 0 4 275 274 291 292
		f 4 -257 563 271 -565
		mu 0 4 276 275 292 293
		f 4 -258 564 272 -566
		mu 0 4 277 276 293 294
		f 4 -259 565 273 -567
		mu 0 4 278 277 294 295
		f 4 -260 567 274 -553
		mu 0 4 280 279 296 297
		f 4 -261 568 275 -570
		mu 0 4 282 281 298 299
		f 4 -262 569 276 -571
		mu 0 4 283 282 299 300
		f 4 -263 570 277 -572
		mu 0 4 284 283 300 301
		f 4 -264 571 278 -573
		mu 0 4 285 284 301 302
		f 4 -265 572 279 -574
		mu 0 4 286 285 302 303
		f 4 -266 573 280 -575
		mu 0 4 287 286 303 304
		f 4 -267 574 281 -576
		mu 0 4 288 287 304 305
		f 4 -268 575 282 -577
		mu 0 4 289 288 305 306
		f 4 -269 576 283 -578
		mu 0 4 290 289 306 307
		f 4 -270 577 284 -579
		mu 0 4 291 290 307 308
		f 4 -271 578 285 -580
		mu 0 4 292 291 308 309
		f 4 -272 579 286 -581
		mu 0 4 293 292 309 310
		f 4 -273 580 287 -582
		mu 0 4 294 293 310 311
		f 4 -274 581 288 -583
		mu 0 4 295 294 311 312
		f 4 -275 583 289 -569
		mu 0 4 297 296 313 314
		f 4 -276 584 290 -586
		mu 0 4 299 298 315 316
		f 4 -277 585 291 -587
		mu 0 4 300 299 316 317
		f 4 -278 586 292 -588
		mu 0 4 301 300 317 318
		f 4 -279 587 293 -589
		mu 0 4 302 301 318 319
		f 4 -280 588 294 -590
		mu 0 4 303 302 319 320
		f 4 -281 589 295 -591
		mu 0 4 304 303 320 321
		f 4 -282 590 296 -592
		mu 0 4 305 304 321 322
		f 4 -283 591 297 -593
		mu 0 4 306 305 322 323
		f 4 -284 592 298 -594
		mu 0 4 307 306 323 324
		f 4 -285 593 299 -595
		mu 0 4 308 307 324 325
		f 4 -286 594 300 -596
		mu 0 4 309 308 325 326
		f 4 -287 595 301 -597
		mu 0 4 310 309 326 327
		f 4 -288 596 302 -598
		mu 0 4 311 310 327 328
		f 4 -289 597 303 -599
		mu 0 4 312 311 328 329
		f 4 -290 599 304 -585
		mu 0 4 314 313 330 331
		f 4 -291 600 305 -602
		mu 0 4 316 315 332 333
		f 4 -292 601 306 -603
		mu 0 4 317 316 333 334
		f 4 -293 602 307 -604
		mu 0 4 318 317 334 335
		f 4 -294 603 308 -605
		mu 0 4 319 318 335 336
		f 4 -295 604 309 -606
		mu 0 4 320 319 336 337
		f 4 -296 605 310 -607
		mu 0 4 321 320 337 338
		f 4 -297 606 311 -608
		mu 0 4 322 321 338 339
		f 4 -298 607 312 -609
		mu 0 4 323 322 339 340
		f 4 -299 608 313 -610
		mu 0 4 324 323 340 341
		f 4 -300 609 314 -611
		mu 0 4 325 324 341 342
		f 4 -301 610 315 -612
		mu 0 4 326 325 342 343
		f 4 -302 611 316 -613
		mu 0 4 327 326 343 344
		f 4 -303 612 317 -614
		mu 0 4 328 327 344 345
		f 4 -304 613 318 -615
		mu 0 4 329 328 345 346
		f 4 -305 615 319 -601
		mu 0 4 331 330 347 348
		f 4 -306 616 320 -618
		mu 0 4 333 332 349 350
		f 4 -307 617 321 -619
		mu 0 4 334 333 350 351
		f 4 -308 618 322 -620
		mu 0 4 335 334 351 352
		f 4 -309 619 323 -621
		mu 0 4 336 335 352 353
		f 4 -310 620 324 -622
		mu 0 4 337 336 353 354
		f 4 -311 621 325 -623
		mu 0 4 338 337 354 355
		f 4 -312 622 326 -624
		mu 0 4 339 338 355 356
		f 4 -313 623 327 -625
		mu 0 4 340 339 356 357
		f 4 -314 624 328 -626
		mu 0 4 341 340 357 358
		f 4 -315 625 329 -627
		mu 0 4 342 341 358 359
		f 4 -316 626 330 -628
		mu 0 4 343 342 359 360
		f 4 -317 627 331 -629
		mu 0 4 344 343 360 361
		f 4 -318 628 332 -630
		mu 0 4 345 344 361 362
		f 4 -319 629 333 -631
		mu 0 4 346 345 362 363
		f 4 -320 631 334 -617
		mu 0 4 348 347 364 365
		f 4 -321 632 335 -634
		mu 0 4 350 349 366 367
		f 4 -322 633 336 -635
		mu 0 4 351 350 367 368
		f 4 -323 634 337 -636
		mu 0 4 352 351 368 369
		f 4 -324 635 338 -637
		mu 0 4 353 352 369 370
		f 4 -325 636 339 -638
		mu 0 4 354 353 370 371
		f 4 -326 637 340 -639
		mu 0 4 355 354 371 372
		f 4 -327 638 341 -640
		mu 0 4 356 355 372 373
		f 4 -328 639 342 -641
		mu 0 4 357 356 373 374
		f 4 -329 640 343 -642
		mu 0 4 358 357 374 375
		f 4 -330 641 344 -643
		mu 0 4 359 358 375 376
		f 4 -331 642 345 -644
		mu 0 4 360 359 376 377
		f 4 -332 643 346 -645
		mu 0 4 361 360 377 378
		f 4 -333 644 347 -646
		mu 0 4 362 361 378 379
		f 4 -334 645 348 -647
		mu 0 4 363 362 379 380
		f 4 -335 647 349 -633
		mu 0 4 365 364 381 382
		f 4 -336 648 350 -650
		mu 0 4 367 366 383 384
		f 4 -337 649 351 -651
		mu 0 4 368 367 384 385
		f 4 -338 650 352 -652
		mu 0 4 369 368 385 386
		f 4 -339 651 353 -653
		mu 0 4 370 369 386 387
		f 4 -340 652 354 -654
		mu 0 4 371 370 387 388
		f 4 -341 653 355 -655
		mu 0 4 372 371 388 389
		f 4 -342 654 356 -656
		mu 0 4 373 372 389 390
		f 4 -343 655 357 -657
		mu 0 4 374 373 390 391
		f 4 -344 656 358 -658
		mu 0 4 375 374 391 392
		f 4 -345 657 359 -659
		mu 0 4 376 375 392 393
		f 4 -346 658 360 -660
		mu 0 4 377 376 393 394
		f 4 -347 659 361 -661
		mu 0 4 378 377 394 395
		f 4 -348 660 362 -662
		mu 0 4 379 378 395 396
		f 4 -349 661 363 -663
		mu 0 4 380 379 396 397
		f 4 -350 663 364 -649
		mu 0 4 382 381 398 399
		f 4 -351 664 365 -666
		mu 0 4 384 383 400 401
		f 4 -352 665 366 -667
		mu 0 4 385 384 401 402
		f 4 -353 666 367 -668
		mu 0 4 386 385 402 403
		f 4 -354 667 368 -669
		mu 0 4 387 386 403 404
		f 4 -355 668 369 -670
		mu 0 4 388 387 404 405
		f 4 -356 669 370 -671
		mu 0 4 389 388 405 406
		f 4 -357 670 371 -672
		mu 0 4 390 389 406 407
		f 4 -358 671 372 -673
		mu 0 4 391 390 407 408
		f 4 -359 672 373 -674
		mu 0 4 392 391 408 409
		f 4 -360 673 374 -675
		mu 0 4 393 392 409 410
		f 4 -361 674 375 -676
		mu 0 4 394 393 410 411
		f 4 -362 675 376 -677
		mu 0 4 395 394 411 412
		f 4 -363 676 377 -678
		mu 0 4 396 395 412 413
		f 4 -364 677 378 -679
		mu 0 4 397 396 413 414
		f 4 -365 679 379 -665
		mu 0 4 399 398 415 416
		f 4 -366 680 380 -682
		mu 0 4 401 400 417 418
		f 4 -367 681 381 -683
		mu 0 4 402 401 418 419
		f 4 -368 682 382 -684
		mu 0 4 403 402 419 420
		f 4 -369 683 383 -685
		mu 0 4 404 403 420 421
		f 4 -370 684 384 -686
		mu 0 4 405 404 421 422
		f 4 -371 685 385 -687
		mu 0 4 406 405 422 423
		f 4 -372 686 386 -688
		mu 0 4 407 406 423 424
		f 4 -373 687 387 -689
		mu 0 4 408 407 424 425
		f 4 -374 688 388 -690
		mu 0 4 409 408 425 426
		f 4 -375 689 389 -691
		mu 0 4 410 409 426 427
		f 4 -376 690 390 -692
		mu 0 4 411 410 427 428
		f 4 -377 691 391 -693
		mu 0 4 412 411 428 429
		f 4 -378 692 392 -694
		mu 0 4 413 412 429 430
		f 4 -379 693 393 -695
		mu 0 4 414 413 430 431
		f 4 -380 695 394 -681
		mu 0 4 416 415 432 433
		f 4 -381 696 395 -698
		mu 0 4 418 417 434 435
		f 4 -382 697 396 -699
		mu 0 4 419 418 435 436
		f 4 -383 698 397 -700
		mu 0 4 420 419 436 437
		f 4 -384 699 398 -701
		mu 0 4 421 420 437 438
		f 4 -385 700 399 -702
		mu 0 4 422 421 438 439
		f 4 -386 701 400 -703
		mu 0 4 423 422 439 440
		f 4 -387 702 401 -704
		mu 0 4 424 423 440 441
		f 4 -388 703 402 -705
		mu 0 4 425 424 441 442
		f 4 -389 704 403 -706
		mu 0 4 426 425 442 443
		f 4 -390 705 404 -707
		mu 0 4 427 426 443 444
		f 4 -391 706 405 -708
		mu 0 4 428 427 444 445
		f 4 -392 707 406 -709
		mu 0 4 429 428 445 446
		f 4 -393 708 407 -710
		mu 0 4 430 429 446 447
		f 4 -394 709 408 -711
		mu 0 4 431 430 447 448
		f 4 -395 711 409 -697
		mu 0 4 433 432 449 450
		f 4 -396 712 410 -714
		mu 0 4 435 434 451 452
		f 4 -397 713 411 -715
		mu 0 4 436 435 452 453
		f 4 -398 714 412 -716
		mu 0 4 437 436 453 454
		f 4 -399 715 413 -717
		mu 0 4 438 437 454 455
		f 4 -400 716 414 -718
		mu 0 4 439 438 455 456
		f 4 -401 717 415 -719
		mu 0 4 440 439 456 457
		f 4 -402 718 416 -720
		mu 0 4 441 440 457 458
		f 4 -403 719 417 -721
		mu 0 4 442 441 458 459
		f 4 -404 720 418 -722
		mu 0 4 443 442 459 460
		f 4 -405 721 419 -723
		mu 0 4 444 443 460 461
		f 4 -406 722 420 -724
		mu 0 4 445 444 461 462
		f 4 -407 723 421 -725
		mu 0 4 446 445 462 463
		f 4 -408 724 422 -726
		mu 0 4 447 446 463 464
		f 4 -409 725 423 -727
		mu 0 4 448 447 464 465
		f 4 -410 727 424 -713
		mu 0 4 450 449 466 467
		f 4 -411 728 425 -730
		mu 0 4 452 451 468 469
		f 4 -412 729 426 -731
		mu 0 4 453 452 469 470
		f 4 -413 730 427 -732
		mu 0 4 454 453 470 471
		f 4 -414 731 428 -733
		mu 0 4 455 454 471 472
		f 4 -415 732 429 -734
		mu 0 4 456 455 472 473
		f 4 -416 733 430 -735
		mu 0 4 457 456 473 474
		f 4 -417 734 431 -736
		mu 0 4 458 457 474 475
		f 4 -418 735 432 -737
		mu 0 4 459 458 475 476
		f 4 -419 736 433 -738
		mu 0 4 460 459 476 477
		f 4 -420 737 434 -739
		mu 0 4 461 460 477 478
		f 4 -421 738 435 -740
		mu 0 4 462 461 478 479
		f 4 -422 739 436 -741
		mu 0 4 463 462 479 480
		f 4 -423 740 437 -742
		mu 0 4 464 463 480 481
		f 4 -424 741 438 -743
		mu 0 4 465 464 481 482
		f 4 -425 743 439 -729
		mu 0 4 467 466 483 484
		f 4 -426 744 140 -746
		mu 0 4 469 468 485 486
		f 4 -427 745 141 -747
		mu 0 4 470 469 486 487
		f 4 -428 746 142 -748
		mu 0 4 471 470 487 488
		f 4 -429 747 143 -749
		mu 0 4 472 471 488 489
		f 4 -430 748 144 -750
		mu 0 4 473 472 489 490
		f 4 -431 749 145 -751
		mu 0 4 474 473 490 491
		f 4 -432 750 146 -752
		mu 0 4 475 474 491 492
		f 4 -433 751 147 -753
		mu 0 4 476 475 492 493
		f 4 -434 752 148 -754
		mu 0 4 477 476 493 494
		f 4 -435 753 149 -755
		mu 0 4 478 477 494 495
		f 4 -436 754 150 -756
		mu 0 4 479 478 495 496
		f 4 -437 755 151 -757
		mu 0 4 480 479 496 497
		f 4 -438 756 152 -758
		mu 0 4 481 480 497 498
		f 4 -439 757 153 -759
		mu 0 4 482 481 498 499
		f 4 -440 759 154 -745
		mu 0 4 484 483 500 501
		f 4 -520 760 -696 761
		mu 0 4 502 503 504 505
		f 4 -536 -762 -680 762
		mu 0 4 506 507 508 509
		f 4 -664 763 -552 -763
		mu 0 4 510 511 512 513
		f 4 -568 -764 -648 764
		mu 0 4 514 515 516 517
		f 4 -632 765 -584 -765
		mu 0 4 518 519 520 521
		f 3 -600 -766 -616
		mu 0 3 522 523 524
		f 4 -504 766 -712 -761
		mu 0 4 525 526 527 528
		f 4 -728 -767 -488 767
		mu 0 4 529 530 531 532
		f 4 -472 768 -744 -768
		mu 0 4 533 534 535 536
		f 3 -760 -769 -456
		mu 0 3 537 538 539
		f 4 534 769 662 770
		mu 0 4 540 541 542 543
		f 4 518 -771 678 771
		mu 0 4 544 545 546 547
		f 4 550 772 646 -770
		mu 0 4 548 549 550 551
		f 4 630 -773 566 773
		mu 0 4 552 553 554 555
		f 4 582 598 614 -774
		mu 0 4 556 557 558 559
		f 4 694 774 502 -772
		mu 0 4 560 561 562 563
		f 4 486 -775 710 775
		mu 0 4 564 565 566 567
		f 4 726 776 470 -776
		mu 0 4 568 569 570 571
		f 4 454 -777 742 758
		mu 0 4 572 573 574 575
		f 20 -797 -796 -795 -794 -793 -792 -791 -790 -789 -788 -787 -786 -785 -784 -783 -782
		 -781 -780 -779 -778
		mu 0 20 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595
		f 4 777 798 837 -798
		mu 0 4 596 597 598 599
		f 4 778 799 838 -799
		mu 0 4 597 600 601 598
		f 4 779 800 839 -800
		mu 0 4 600 602 603 601
		f 4 780 801 840 -801
		mu 0 4 602 604 605 603
		f 4 781 802 841 -802
		mu 0 4 604 606 607 605
		f 4 782 803 842 -803
		mu 0 4 606 608 609 607
		f 4 783 804 843 -804
		mu 0 4 608 610 611 609
		f 4 784 805 844 -805
		mu 0 4 610 612 613 611
		f 4 785 806 845 -806
		mu 0 4 612 614 615 613
		f 4 786 807 846 -807
		mu 0 4 614 616 617 615
		f 4 787 808 847 -808
		mu 0 4 616 618 619 617
		f 4 788 809 848 -809
		mu 0 4 618 620 621 619
		f 4 789 810 849 -810
		mu 0 4 620 622 623 621
		f 4 790 811 850 -811
		mu 0 4 622 624 625 623
		f 4 791 812 851 -812
		mu 0 4 624 626 627 625
		f 4 792 813 852 -813
		mu 0 4 626 628 629 627
		f 4 793 814 853 -814
		mu 0 4 628 630 631 629
		f 4 794 815 854 -815
		mu 0 4 630 632 633 631
		f 4 795 816 855 -816
		mu 0 4 632 634 635 633
		f 4 796 797 856 -817
		mu 0 4 634 636 637 635
		f 3 -838 818 -818
		mu 0 3 599 598 638
		f 3 -839 819 -819
		mu 0 3 598 601 638
		f 3 -840 820 -820
		mu 0 3 601 603 638
		f 3 -841 821 -821
		mu 0 3 603 605 638
		f 3 -842 822 -822
		mu 0 3 605 607 638
		f 3 -843 823 -823
		mu 0 3 607 609 638
		f 3 -844 824 -824
		mu 0 3 609 611 638
		f 3 -845 825 -825
		mu 0 3 611 613 638
		f 3 -846 826 -826
		mu 0 3 613 615 638
		f 3 -847 827 -827
		mu 0 3 615 617 638
		f 3 -848 828 -828
		mu 0 3 617 619 638
		f 3 -849 829 -829
		mu 0 3 619 621 638
		f 3 -850 830 -830
		mu 0 3 621 623 638
		f 3 -851 831 -831
		mu 0 3 623 625 638
		f 3 -852 832 -832
		mu 0 3 625 627 638
		f 3 -853 833 -833
		mu 0 3 627 629 638
		f 3 -854 834 -834
		mu 0 3 629 631 638
		f 3 -855 835 -835
		mu 0 3 631 633 638
		f 3 -856 836 -836
		mu 0 3 633 635 638
		f 3 -857 817 -837
		mu 0 3 635 637 638
		f 4 -858 1157 872 -1159
		mu 0 4 639 640 641 642
		f 4 -859 1158 873 -1160
		mu 0 4 643 639 642 644
		f 4 -860 1159 874 -1161
		mu 0 4 645 643 644 646
		f 4 -861 1160 875 -1162
		mu 0 4 647 645 646 648
		f 4 -862 1161 876 -1163
		mu 0 4 649 647 648 650
		f 4 -863 1162 877 -1164
		mu 0 4 651 649 650 652
		f 4 -864 1163 878 -1165
		mu 0 4 653 651 652 654
		f 4 -865 1164 879 -1166
		mu 0 4 655 653 654 656
		f 4 -866 1165 880 -1167
		mu 0 4 657 655 656 658
		f 4 -867 1166 881 -1168
		mu 0 4 659 657 658 660
		f 4 -868 1167 882 -1169
		mu 0 4 661 659 660 662
		f 4 -869 1168 883 -1170
		mu 0 4 663 661 662 664
		f 4 -870 1169 884 -1171
		mu 0 4 665 663 664 666
		f 4 -871 1170 885 -1172
		mu 0 4 667 665 666 668
		f 4 -872 1172 886 -1158
		mu 0 4 669 670 671 672
		f 4 -873 1173 887 -1175
		mu 0 4 642 641 673 674
		f 4 -874 1174 888 -1176
		mu 0 4 644 642 674 675
		f 4 -875 1175 889 -1177
		mu 0 4 646 644 675 676
		f 4 -876 1176 890 -1178
		mu 0 4 648 646 676 677
		f 4 -877 1177 891 -1179
		mu 0 4 650 648 677 678
		f 4 -878 1178 892 -1180
		mu 0 4 652 650 678 679
		f 4 -879 1179 893 -1181
		mu 0 4 654 652 679 680
		f 4 -880 1180 894 -1182
		mu 0 4 656 654 680 681
		f 4 -881 1181 895 -1183
		mu 0 4 658 656 681 682
		f 4 -882 1182 896 -1184
		mu 0 4 660 658 682 683
		f 4 -883 1183 897 -1185
		mu 0 4 662 660 683 684
		f 4 -884 1184 898 -1186
		mu 0 4 664 662 684 685
		f 4 -885 1185 899 -1187
		mu 0 4 666 664 685 686
		f 4 -886 1186 900 -1188
		mu 0 4 668 666 686 687
		f 4 -887 1188 901 -1174
		mu 0 4 672 671 688 689
		f 4 -888 1189 902 -1191
		mu 0 4 674 673 690 691
		f 4 -889 1190 903 -1192
		mu 0 4 675 674 691 692
		f 4 -890 1191 904 -1193
		mu 0 4 676 675 692 693
		f 4 -891 1192 905 -1194
		mu 0 4 677 676 693 694
		f 4 -892 1193 906 -1195
		mu 0 4 678 677 694 695
		f 4 -893 1194 907 -1196
		mu 0 4 679 678 695 696
		f 4 -894 1195 908 -1197
		mu 0 4 680 679 696 697
		f 4 -895 1196 909 -1198
		mu 0 4 681 680 697 698
		f 4 -896 1197 910 -1199
		mu 0 4 682 681 698 699
		f 4 -897 1198 911 -1200
		mu 0 4 683 682 699 700
		f 4 -898 1199 912 -1201
		mu 0 4 684 683 700 701
		f 4 -899 1200 913 -1202
		mu 0 4 685 684 701 702
		f 4 -900 1201 914 -1203
		mu 0 4 686 685 702 703
		f 4 -901 1202 915 -1204
		mu 0 4 687 686 703 704
		f 4 -902 1204 916 -1190
		mu 0 4 689 688 705 706
		f 4 -903 1205 917 -1207
		mu 0 4 691 690 707 708
		f 4 -904 1206 918 -1208
		mu 0 4 692 691 708 709
		f 4 -905 1207 919 -1209
		mu 0 4 693 692 709 710
		f 4 -906 1208 920 -1210
		mu 0 4 694 693 710 711
		f 4 -907 1209 921 -1211
		mu 0 4 695 694 711 712
		f 4 -908 1210 922 -1212
		mu 0 4 696 695 712 713
		f 4 -909 1211 923 -1213
		mu 0 4 697 696 713 714
		f 4 -910 1212 924 -1214
		mu 0 4 698 697 714 715
		f 4 -911 1213 925 -1215
		mu 0 4 699 698 715 716
		f 4 -912 1214 926 -1216
		mu 0 4 700 699 716 717
		f 4 -913 1215 927 -1217
		mu 0 4 701 700 717 718
		f 4 -914 1216 928 -1218
		mu 0 4 702 701 718 719
		f 4 -915 1217 929 -1219
		mu 0 4 703 702 719 720
		f 4 -916 1218 930 -1220
		mu 0 4 704 703 720 721
		f 4 -917 1220 931 -1206
		mu 0 4 706 705 722 723
		f 4 -918 1221 932 -1223
		mu 0 4 708 707 724 725
		f 4 -919 1222 933 -1224
		mu 0 4 709 708 725 726
		f 4 -920 1223 934 -1225
		mu 0 4 710 709 726 727
		f 4 -921 1224 935 -1226
		mu 0 4 711 710 727 728
		f 4 -922 1225 936 -1227
		mu 0 4 712 711 728 729
		f 4 -923 1226 937 -1228
		mu 0 4 713 712 729 730
		f 4 -924 1227 938 -1229
		mu 0 4 714 713 730 731
		f 4 -925 1228 939 -1230
		mu 0 4 715 714 731 732
		f 4 -926 1229 940 -1231
		mu 0 4 716 715 732 733
		f 4 -927 1230 941 -1232
		mu 0 4 717 716 733 734
		f 4 -928 1231 942 -1233
		mu 0 4 718 717 734 735
		f 4 -929 1232 943 -1234
		mu 0 4 719 718 735 736
		f 4 -930 1233 944 -1235
		mu 0 4 720 719 736 737
		f 4 -931 1234 945 -1236
		mu 0 4 721 720 737 738
		f 4 -932 1236 946 -1222
		mu 0 4 723 722 739 740
		f 4 -933 1237 947 -1239
		mu 0 4 725 724 741 742
		f 4 -934 1238 948 -1240
		mu 0 4 726 725 742 743;
	setAttr ".fc[500:741]"
		f 4 -935 1239 949 -1241
		mu 0 4 727 726 743 744
		f 4 -936 1240 950 -1242
		mu 0 4 728 727 744 745
		f 4 -937 1241 951 -1243
		mu 0 4 729 728 745 746
		f 4 -938 1242 952 -1244
		mu 0 4 730 729 746 747
		f 4 -939 1243 953 -1245
		mu 0 4 731 730 747 748
		f 4 -940 1244 954 -1246
		mu 0 4 732 731 748 749
		f 4 -941 1245 955 -1247
		mu 0 4 733 732 749 750
		f 4 -942 1246 956 -1248
		mu 0 4 734 733 750 751
		f 4 -943 1247 957 -1249
		mu 0 4 735 734 751 752
		f 4 -944 1248 958 -1250
		mu 0 4 736 735 752 753
		f 4 -945 1249 959 -1251
		mu 0 4 737 736 753 754
		f 4 -946 1250 960 -1252
		mu 0 4 738 737 754 755
		f 4 -947 1252 961 -1238
		mu 0 4 740 739 756 757
		f 4 -948 1253 962 -1255
		mu 0 4 742 741 758 759
		f 4 -949 1254 963 -1256
		mu 0 4 743 742 759 760
		f 4 -950 1255 964 -1257
		mu 0 4 744 743 760 761
		f 4 -951 1256 965 -1258
		mu 0 4 745 744 761 762
		f 4 -952 1257 966 -1259
		mu 0 4 746 745 762 763
		f 4 -953 1258 967 -1260
		mu 0 4 747 746 763 764
		f 4 -954 1259 968 -1261
		mu 0 4 748 747 764 765
		f 4 -955 1260 969 -1262
		mu 0 4 749 748 765 766
		f 4 -956 1261 970 -1263
		mu 0 4 750 749 766 767
		f 4 -957 1262 971 -1264
		mu 0 4 751 750 767 768
		f 4 -958 1263 972 -1265
		mu 0 4 752 751 768 769
		f 4 -959 1264 973 -1266
		mu 0 4 753 752 769 770
		f 4 -960 1265 974 -1267
		mu 0 4 754 753 770 771
		f 4 -961 1266 975 -1268
		mu 0 4 755 754 771 772
		f 4 -962 1268 976 -1254
		mu 0 4 757 756 773 774
		f 4 -963 1269 977 -1271
		mu 0 4 759 758 775 776
		f 4 -964 1270 978 -1272
		mu 0 4 760 759 776 777
		f 4 -965 1271 979 -1273
		mu 0 4 761 760 777 778
		f 4 -966 1272 980 -1274
		mu 0 4 762 761 778 779
		f 4 -967 1273 981 -1275
		mu 0 4 763 762 779 780
		f 4 -968 1274 982 -1276
		mu 0 4 764 763 780 781
		f 4 -969 1275 983 -1277
		mu 0 4 765 764 781 782
		f 4 -970 1276 984 -1278
		mu 0 4 766 765 782 783
		f 4 -971 1277 985 -1279
		mu 0 4 767 766 783 784
		f 4 -972 1278 986 -1280
		mu 0 4 768 767 784 785
		f 4 -973 1279 987 -1281
		mu 0 4 769 768 785 786
		f 4 -974 1280 988 -1282
		mu 0 4 770 769 786 787
		f 4 -975 1281 989 -1283
		mu 0 4 771 770 787 788
		f 4 -976 1282 990 -1284
		mu 0 4 772 771 788 789
		f 4 -977 1284 991 -1270
		mu 0 4 774 773 790 791
		f 4 -978 1285 992 -1287
		mu 0 4 776 775 792 793
		f 4 -979 1286 993 -1288
		mu 0 4 777 776 793 794
		f 4 -980 1287 994 -1289
		mu 0 4 778 777 794 795
		f 4 -981 1288 995 -1290
		mu 0 4 779 778 795 796
		f 4 -982 1289 996 -1291
		mu 0 4 780 779 796 797
		f 4 -983 1290 997 -1292
		mu 0 4 781 780 797 798
		f 4 -984 1291 998 -1293
		mu 0 4 782 781 798 799
		f 4 -985 1292 999 -1294
		mu 0 4 783 782 799 800
		f 4 -986 1293 1000 -1295
		mu 0 4 784 783 800 801
		f 4 -987 1294 1001 -1296
		mu 0 4 785 784 801 802
		f 4 -988 1295 1002 -1297
		mu 0 4 786 785 802 803
		f 4 -989 1296 1003 -1298
		mu 0 4 787 786 803 804
		f 4 -990 1297 1004 -1299
		mu 0 4 788 787 804 805
		f 4 -991 1298 1005 -1300
		mu 0 4 789 788 805 806
		f 4 -992 1300 1006 -1286
		mu 0 4 791 790 807 808
		f 4 -993 1301 1007 -1303
		mu 0 4 793 792 809 810
		f 4 -994 1302 1008 -1304
		mu 0 4 794 793 810 811
		f 4 -995 1303 1009 -1305
		mu 0 4 795 794 811 812
		f 4 -996 1304 1010 -1306
		mu 0 4 796 795 812 813
		f 4 -997 1305 1011 -1307
		mu 0 4 797 796 813 814
		f 4 -998 1306 1012 -1308
		mu 0 4 798 797 814 815
		f 4 -999 1307 1013 -1309
		mu 0 4 799 798 815 816
		f 4 -1000 1308 1014 -1310
		mu 0 4 800 799 816 817
		f 4 -1001 1309 1015 -1311
		mu 0 4 801 800 817 818
		f 4 -1002 1310 1016 -1312
		mu 0 4 802 801 818 819
		f 4 -1003 1311 1017 -1313
		mu 0 4 803 802 819 820
		f 4 -1004 1312 1018 -1314
		mu 0 4 804 803 820 821
		f 4 -1005 1313 1019 -1315
		mu 0 4 805 804 821 822
		f 4 -1006 1314 1020 -1316
		mu 0 4 806 805 822 823
		f 4 -1007 1316 1021 -1302
		mu 0 4 808 807 824 825
		f 4 -1008 1317 1022 -1319
		mu 0 4 810 809 826 827
		f 4 -1009 1318 1023 -1320
		mu 0 4 811 810 827 828
		f 4 -1010 1319 1024 -1321
		mu 0 4 812 811 828 829
		f 4 -1011 1320 1025 -1322
		mu 0 4 813 812 829 830
		f 4 -1012 1321 1026 -1323
		mu 0 4 814 813 830 831
		f 4 -1013 1322 1027 -1324
		mu 0 4 815 814 831 832
		f 4 -1014 1323 1028 -1325
		mu 0 4 816 815 832 833
		f 4 -1015 1324 1029 -1326
		mu 0 4 817 816 833 834
		f 4 -1016 1325 1030 -1327
		mu 0 4 818 817 834 835
		f 4 -1017 1326 1031 -1328
		mu 0 4 819 818 835 836
		f 4 -1018 1327 1032 -1329
		mu 0 4 820 819 836 837
		f 4 -1019 1328 1033 -1330
		mu 0 4 821 820 837 838
		f 4 -1020 1329 1034 -1331
		mu 0 4 822 821 838 839
		f 4 -1021 1330 1035 -1332
		mu 0 4 823 822 839 840
		f 4 -1022 1332 1036 -1318
		mu 0 4 825 824 841 842
		f 4 -1023 1333 1037 -1335
		mu 0 4 827 826 843 844
		f 4 -1024 1334 1038 -1336
		mu 0 4 828 827 844 845
		f 4 -1025 1335 1039 -1337
		mu 0 4 829 828 845 846
		f 4 -1026 1336 1040 -1338
		mu 0 4 830 829 846 847
		f 4 -1027 1337 1041 -1339
		mu 0 4 831 830 847 848
		f 4 -1028 1338 1042 -1340
		mu 0 4 832 831 848 849
		f 4 -1029 1339 1043 -1341
		mu 0 4 833 832 849 850
		f 4 -1030 1340 1044 -1342
		mu 0 4 834 833 850 851
		f 4 -1031 1341 1045 -1343
		mu 0 4 835 834 851 852
		f 4 -1032 1342 1046 -1344
		mu 0 4 836 835 852 853
		f 4 -1033 1343 1047 -1345
		mu 0 4 837 836 853 854
		f 4 -1034 1344 1048 -1346
		mu 0 4 838 837 854 855
		f 4 -1035 1345 1049 -1347
		mu 0 4 839 838 855 856
		f 4 -1036 1346 1050 -1348
		mu 0 4 840 839 856 857
		f 4 -1037 1348 1051 -1334
		mu 0 4 842 841 858 859
		f 4 -1038 1349 1052 -1351
		mu 0 4 844 843 860 861
		f 4 -1039 1350 1053 -1352
		mu 0 4 845 844 861 862
		f 4 -1040 1351 1054 -1353
		mu 0 4 846 845 862 863
		f 4 -1041 1352 1055 -1354
		mu 0 4 847 846 863 864
		f 4 -1042 1353 1056 -1355
		mu 0 4 848 847 864 865
		f 4 -1043 1354 1057 -1356
		mu 0 4 849 848 865 866
		f 4 -1044 1355 1058 -1357
		mu 0 4 850 849 866 867
		f 4 -1045 1356 1059 -1358
		mu 0 4 851 850 867 868
		f 4 -1046 1357 1060 -1359
		mu 0 4 852 851 868 869
		f 4 -1047 1358 1061 -1360
		mu 0 4 853 852 869 870
		f 4 -1048 1359 1062 -1361
		mu 0 4 854 853 870 871
		f 4 -1049 1360 1063 -1362
		mu 0 4 855 854 871 872
		f 4 -1050 1361 1064 -1363
		mu 0 4 856 855 872 873
		f 4 -1051 1362 1065 -1364
		mu 0 4 857 856 873 874
		f 4 -1052 1364 1066 -1350
		mu 0 4 859 858 875 876
		f 4 -1053 1365 1067 -1367
		mu 0 4 861 860 877 878
		f 4 -1054 1366 1068 -1368
		mu 0 4 862 861 878 879
		f 4 -1055 1367 1069 -1369
		mu 0 4 863 862 879 880
		f 4 -1056 1368 1070 -1370
		mu 0 4 864 863 880 881
		f 4 -1057 1369 1071 -1371
		mu 0 4 865 864 881 882
		f 4 -1058 1370 1072 -1372
		mu 0 4 866 865 882 883
		f 4 -1059 1371 1073 -1373
		mu 0 4 867 866 883 884
		f 4 -1060 1372 1074 -1374
		mu 0 4 868 867 884 885
		f 4 -1061 1373 1075 -1375
		mu 0 4 869 868 885 886
		f 4 -1062 1374 1076 -1376
		mu 0 4 870 869 886 887
		f 4 -1063 1375 1077 -1377
		mu 0 4 871 870 887 888
		f 4 -1064 1376 1078 -1378
		mu 0 4 872 871 888 889
		f 4 -1065 1377 1079 -1379
		mu 0 4 873 872 889 890
		f 4 -1066 1378 1080 -1380
		mu 0 4 874 873 890 891
		f 4 -1067 1380 1081 -1366
		mu 0 4 876 875 892 893
		f 4 -1068 1381 1082 -1383
		mu 0 4 878 877 894 895
		f 4 -1069 1382 1083 -1384
		mu 0 4 879 878 895 896
		f 4 -1070 1383 1084 -1385
		mu 0 4 880 879 896 897
		f 4 -1071 1384 1085 -1386
		mu 0 4 881 880 897 898
		f 4 -1072 1385 1086 -1387
		mu 0 4 882 881 898 899
		f 4 -1073 1386 1087 -1388
		mu 0 4 883 882 899 900
		f 4 -1074 1387 1088 -1389
		mu 0 4 884 883 900 901
		f 4 -1075 1388 1089 -1390
		mu 0 4 885 884 901 902
		f 4 -1076 1389 1090 -1391
		mu 0 4 886 885 902 903
		f 4 -1077 1390 1091 -1392
		mu 0 4 887 886 903 904
		f 4 -1078 1391 1092 -1393
		mu 0 4 888 887 904 905
		f 4 -1079 1392 1093 -1394
		mu 0 4 889 888 905 906
		f 4 -1080 1393 1094 -1395
		mu 0 4 890 889 906 907
		f 4 -1081 1394 1095 -1396
		mu 0 4 891 890 907 908
		f 4 -1082 1396 1096 -1382
		mu 0 4 893 892 909 910
		f 4 -1083 1397 1097 -1399
		mu 0 4 895 894 911 912
		f 4 -1084 1398 1098 -1400
		mu 0 4 896 895 912 913
		f 4 -1085 1399 1099 -1401
		mu 0 4 897 896 913 914
		f 4 -1086 1400 1100 -1402
		mu 0 4 898 897 914 915
		f 4 -1087 1401 1101 -1403
		mu 0 4 899 898 915 916
		f 4 -1088 1402 1102 -1404
		mu 0 4 900 899 916 917
		f 4 -1089 1403 1103 -1405
		mu 0 4 901 900 917 918
		f 4 -1090 1404 1104 -1406
		mu 0 4 902 901 918 919
		f 4 -1091 1405 1105 -1407
		mu 0 4 903 902 919 920
		f 4 -1092 1406 1106 -1408
		mu 0 4 904 903 920 921
		f 4 -1093 1407 1107 -1409
		mu 0 4 905 904 921 922
		f 4 -1094 1408 1108 -1410
		mu 0 4 906 905 922 923
		f 4 -1095 1409 1109 -1411
		mu 0 4 907 906 923 924
		f 4 -1096 1410 1110 -1412
		mu 0 4 908 907 924 925
		f 4 -1097 1412 1111 -1398
		mu 0 4 910 909 926 927
		f 4 -1098 1413 1112 -1415
		mu 0 4 912 911 928 929
		f 4 -1099 1414 1113 -1416
		mu 0 4 913 912 929 930
		f 4 -1100 1415 1114 -1417
		mu 0 4 914 913 930 931
		f 4 -1101 1416 1115 -1418
		mu 0 4 915 914 931 932
		f 4 -1102 1417 1116 -1419
		mu 0 4 916 915 932 933
		f 4 -1103 1418 1117 -1420
		mu 0 4 917 916 933 934
		f 4 -1104 1419 1118 -1421
		mu 0 4 918 917 934 935
		f 4 -1105 1420 1119 -1422
		mu 0 4 919 918 935 936
		f 4 -1106 1421 1120 -1423
		mu 0 4 920 919 936 937
		f 4 -1107 1422 1121 -1424
		mu 0 4 921 920 937 938
		f 4 -1108 1423 1122 -1425
		mu 0 4 922 921 938 939
		f 4 -1109 1424 1123 -1426
		mu 0 4 923 922 939 940
		f 4 -1110 1425 1124 -1427
		mu 0 4 924 923 940 941
		f 4 -1111 1426 1125 -1428
		mu 0 4 925 924 941 942
		f 4 -1112 1428 1126 -1414
		mu 0 4 927 926 943 944
		f 4 -1113 1429 1127 -1431
		mu 0 4 929 928 945 946
		f 4 -1114 1430 1128 -1432
		mu 0 4 930 929 946 947
		f 4 -1115 1431 1129 -1433
		mu 0 4 931 930 947 948
		f 4 -1116 1432 1130 -1434
		mu 0 4 932 931 948 949
		f 4 -1117 1433 1131 -1435
		mu 0 4 933 932 949 950
		f 4 -1118 1434 1132 -1436
		mu 0 4 934 933 950 951
		f 4 -1119 1435 1133 -1437
		mu 0 4 935 934 951 952
		f 4 -1120 1436 1134 -1438
		mu 0 4 936 935 952 953
		f 4 -1121 1437 1135 -1439
		mu 0 4 937 936 953 954
		f 4 -1122 1438 1136 -1440
		mu 0 4 938 937 954 955
		f 4 -1123 1439 1137 -1441
		mu 0 4 939 938 955 956
		f 4 -1124 1440 1138 -1442
		mu 0 4 940 939 956 957
		f 4 -1125 1441 1139 -1443
		mu 0 4 941 940 957 958
		f 4 -1126 1442 1140 -1444
		mu 0 4 942 941 958 959
		f 4 -1127 1444 1141 -1430
		mu 0 4 944 943 960 961
		f 4 -1128 1445 1142 -1447
		mu 0 4 946 945 962 963
		f 4 -1129 1446 1143 -1448
		mu 0 4 947 946 963 964
		f 4 -1130 1447 1144 -1449
		mu 0 4 948 947 964 965
		f 4 -1131 1448 1145 -1450
		mu 0 4 949 948 965 966
		f 4 -1132 1449 1146 -1451
		mu 0 4 950 949 966 967
		f 4 -1133 1450 1147 -1452
		mu 0 4 951 950 967 968
		f 4 -1134 1451 1148 -1453
		mu 0 4 952 951 968 969
		f 4 -1135 1452 1149 -1454
		mu 0 4 953 952 969 970
		f 4 -1136 1453 1150 -1455
		mu 0 4 954 953 970 971
		f 4 -1137 1454 1151 -1456
		mu 0 4 955 954 971 972
		f 4 -1138 1455 1152 -1457
		mu 0 4 956 955 972 973
		f 4 -1139 1456 1153 -1458
		mu 0 4 957 956 973 974
		f 4 -1140 1457 1154 -1459
		mu 0 4 958 957 974 975
		f 4 -1141 1458 1155 -1460
		mu 0 4 959 958 975 976
		f 4 -1142 1460 1156 -1446
		mu 0 4 961 960 977 978
		f 4 -1143 1461 857 -1463
		mu 0 4 963 962 979 980
		f 4 -1144 1462 858 -1464
		mu 0 4 964 963 980 981
		f 4 -1145 1463 859 -1465
		mu 0 4 965 964 981 982
		f 4 -1146 1464 860 -1466
		mu 0 4 966 965 982 983
		f 4 -1147 1465 861 -1467
		mu 0 4 967 966 983 984
		f 4 -1148 1466 862 -1468
		mu 0 4 968 967 984 985
		f 4 -1149 1467 863 -1469
		mu 0 4 969 968 985 986
		f 4 -1150 1468 864 -1470
		mu 0 4 970 969 986 987
		f 4 -1151 1469 865 -1471
		mu 0 4 971 970 987 988
		f 4 -1152 1470 866 -1472
		mu 0 4 972 971 988 989
		f 4 -1153 1471 867 -1473
		mu 0 4 973 972 989 990
		f 4 -1154 1472 868 -1474
		mu 0 4 974 973 990 991
		f 4 -1155 1473 869 -1475
		mu 0 4 975 974 991 992
		f 4 -1156 1474 870 -1476
		mu 0 4 976 975 992 993
		f 4 -1157 1476 871 -1462
		mu 0 4 978 977 994 995
		f 4 -1237 1477 -1413 1478
		mu 0 4 996 997 998 999
		f 4 -1253 -1479 -1397 1479
		mu 0 4 1000 1001 1002 1003
		f 4 -1381 1480 -1269 -1480
		mu 0 4 1004 1005 1006 1007
		f 4 -1285 -1481 -1365 1481
		mu 0 4 1008 1009 1010 1011
		f 4 -1349 1482 -1301 -1482
		mu 0 4 1012 1013 1014 1015
		f 3 -1317 -1483 -1333
		mu 0 3 1016 1017 1018
		f 4 -1221 1483 -1429 -1478
		mu 0 4 1019 1020 1021 1022
		f 4 -1445 -1484 -1205 1484
		mu 0 4 1023 1024 1025 1026
		f 4 -1189 1485 -1461 -1485
		mu 0 4 1027 1028 1029 1030
		f 3 -1477 -1486 -1173
		mu 0 3 1031 1032 1033
		f 4 1251 1486 1379 1487
		mu 0 4 1034 1035 1036 1037
		f 4 1235 -1488 1395 1488
		mu 0 4 1038 1039 1040 1041
		f 4 1267 1489 1363 -1487
		mu 0 4 1042 1043 1044 1045
		f 4 1347 -1490 1283 1490
		mu 0 4 1046 1047 1048 1049
		f 4 1299 1315 1331 -1491
		mu 0 4 1050 1051 1052 1053
		f 4 1411 1491 1219 -1489
		mu 0 4 1054 1055 1056 1057
		f 4 1203 -1492 1427 1492
		mu 0 4 1058 1059 1060 1061
		f 4 1443 1493 1187 -1493
		mu 0 4 1062 1063 1064 1065
		f 4 1171 -1494 1459 1475
		mu 0 4 1066 1067 1068 1069;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd";
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".atm" no;
	setAttr ".vnm" 0;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1" 
		-p "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "DDB04F40-4369-BE21-BDCF-F08B22610D8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" -98.498714748507751 -12.336996669258918 -28.973203702014953 ;
	setAttr ".rst" -type "double3" 3.9999968874998624 -0.00014042854309082031 -1.1146265853600541 ;
	setAttr ".rsrr" -type "double3" 180 -14.036423091218678 3.4036466322568066e-015 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1" 
		-p "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "7A2BB992-43FE-E65F-6B1D-C0A6541298F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hook_grp" -p "HingeJoint__instance_1:module_grp";
	rename -uid "EB158F15-4B52-7AAE-91FC-E2825260B736";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:hook_root_joint" -p "HingeJoint__instance_1:hook_grp";
	rename -uid "89A42071-4AE4-BDD7-3044-35848F46B4E9";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".r" -type "double3" 180 1.558022370064878e-030 2.5444436243162253e-014 ;
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".jo";
	setAttr ".ssc";
	setAttr ".is";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:hook_target_joint" -p "HingeJoint__instance_1:hook_root_joint";
	rename -uid "91DF2B23-4630-E0D5-9EDE-F9B8A3E71108";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.0010000000474974513 2.2204460492503122e-019 0 ;
	setAttr ".t";
	setAttr ".ty";
	setAttr ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
lockNode -l 1 -lu 1;
createNode ikEffector -n "HingeJoint__instance_1:hook_root_joint_ikEffector" -p "HingeJoint__instance_1:hook_root_joint";
	rename -uid "CA9C373C-4633-2867-E7B6-E1995E822FFB";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".hd" yes;
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:hook_root_joint_pointConstraint" 
		-p "HingeJoint__instance_1:hook_root_joint";
	rename -uid "7E094E4F-466A-63AB-0DBF-D2914D138E88";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:unhookedTarget" -p "HingeJoint__instance_1:hook_grp";
	rename -uid "010C9F22-448B-65AE-33A6-B69EC190C618";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:unhookedTargetShape" -p "HingeJoint__instance_1:unhookedTarget";
	rename -uid "8A6C332B-4B07-055F-F8BD-ECA4283E4BC1";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "unhookedTarget_pointConstraint1" -p "HingeJoint__instance_1:unhookedTarget";
	rename -uid "310365A6-4F26-73E8-1829-65938C828191";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".o" -type "double3" 0 0.001 0 ;
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode ikHandle -n "HingeJoint__instance_1:hook_root_joint_ikHandle" -p "HingeJoint__instance_1:hook_grp";
	rename -uid "6FEF2686-4BC2-C500-21A6-DB9BD9BDA18C";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".pv";
	setAttr ".roc" yes;
lockNode -l 1 -lu 1;
createNode poleVectorConstraint -n "hook_root_joint_ikHandle_poleVectorConstraint1" 
		-p "HingeJoint__instance_1:hook_root_joint_ikHandle";
	rename -uid "A90247C4-48F9-F64A-7F68-F99CF607BAF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_joint_ikHandle_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 0 1 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_1:hook_root_joint_ikHandle";
	rename -uid "4DFDF3CB-49CA-904A-503F-85A055E1129D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_target_joint_endPosLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hook_root_joint_rootPosLocator" 
		-p "HingeJoint__instance_1:hook_grp";
	rename -uid "3D0462A6-4B14-EB95-4AC3-0E818A9B6633";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:hook_root_joint_rootPosLocatorShape" 
		-p "HingeJoint__instance_1:hook_root_joint_rootPosLocator";
	rename -uid "5118011B-4EF5-1983-0D1D-8798B0DF79CA";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1:hook_root_joint_rootPosLocator";
	rename -uid "699F7BA0-44CF-CC8D-B321-9FABB9CB8B88";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hook_target_joint_endPosLocator" 
		-p "HingeJoint__instance_1:hook_grp";
	rename -uid "6C9E8C94-4294-DBA3-2C2A-0C8440191BEE";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:hook_target_joint_endPosLocatorShape" 
		-p "HingeJoint__instance_1:hook_target_joint_endPosLocator";
	rename -uid "8E432731-450C-2D47-DBA9-AAAD760477CE";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1:hook_pointConstraint" -p "HingeJoint__instance_1:hook_target_joint_endPosLocator";
	rename -uid "0D412B7A-498D-3E20-89AB-3AB75D0EC06C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "unhookedTargetW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocator" 
		-p "HingeJoint__instance_1:hook_grp";
	rename -uid "5FADE7DC-4BA1-63D1-F257-01B856D08A3C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocatorShape" 
		-p "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocator";
	rename -uid "22315D62-4D20-8F2B-8F48-55B81B039648";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_1:hook_grp";
	rename -uid "B3C2C57F-4EF0-AE7B-9CAD-D89B7747AE30";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hook_root_joint_hook_representation" 
		-p "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "471B198C-4F9B-BF08-8A28-2C99794FC1F0";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1:hook_root_joint_hook_representationShape" 
		-p "HingeJoint__instance_1:hook_root_joint_hook_representation";
	rename -uid "31EA4159-4CBB-C351-012F-06964464F23E";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-016 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-018
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-016 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-016 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-017
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-017 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-018 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-017
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-016 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-016 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-016
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-016 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1" 
		-p "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "2EB5608E-4D3C-9155-FB6A-67BF0E987220";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 180 7.062250076880252e-031 89.999999999999986 ;
	setAttr ".rsrr" -type "double3" 0 0 89.999999999999986 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1" 
		-p "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "04E53DB2-4CB2-91AD-6951-948DECA38A84";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "HingeJoint__instance_1:module_grp";
	rename -uid "7F30F1D3-4675-505C-769C-8E9D489420D4";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator" 
		-p "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "EC4F9238-4F85-5CD6-B875-80BEC9CAA93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocatorShape" 
		-p "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator";
	rename -uid "AF20AA32-4078-2E6D-36C4-A08754A5E5AE";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1" 
		-p "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "51280ED5-4D89-6C41-0C87-A8B0831A2E42";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "HingeJoint__instance_1:module_grp";
	rename -uid "ACEA5BFD-45D0-F365-9141-50B1877D2B04";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator" 
		-p "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "05234A26-41D5-3F4B-72A1-4EBF2CD4DB7A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocatorShape" 
		-p "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator";
	rename -uid "24122291-4949-163B-3D21-9D982A85ED1F";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1" 
		-p "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "252BECBE-4372-DB88-A9DF-9384844077B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:IK_root_joint_positionLocator" -p
		 "HingeJoint__instance_1:module_grp";
	rename -uid "BDC62B7A-40AE-795E-A522-F0876A311CDE";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:IK_root_joint_positionLocatorShape" 
		-p "HingeJoint__instance_1:IK_root_joint_positionLocator";
	rename -uid "71EA0EEC-46F8-4851-AE04-31BFB8AE122C";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:IK_root_joint" -p "HingeJoint__instance_1:IK_root_joint_positionLocator";
	rename -uid "71A6470C-46C4-80E6-542D-99B736C51380";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".r" -type "double3" -114.51421017905412 8.2936572389975194e-006 56.06120448623313 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 14.036243467926484 0 ;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:IK_hinge_joint" -p "HingeJoint__instance_1:IK_root_joint";
	rename -uid "9A769D33-48DD-2A96-A5E9-C3ACD4480C8B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.3850116729736328 0 3.3306690738754696e-016 ;
	setAttr ".t";
	setAttr ".r" -type "double3" 0 115.70089505806423 0 ;
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -28.072486935852961 0 ;
	setAttr ".jo";
	setAttr ".ssc";
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:IK_end_joint" -p "HingeJoint__instance_1:IK_hinge_joint";
	rename -uid "80889CBA-4ACA-2CD3-0CC9-A58B871CBEAE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6803088188171387 0 3.3306690738754696e-016 ;
	setAttr ".t";
	setAttr ".ty";
	setAttr ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 14.036243467926477 0 ;
lockNode -l 1 -lu 1;
createNode ikEffector -n "HingeJoint__instance_1:IK_root_joint_ikEffector" -p "HingeJoint__instance_1:IK_hinge_joint";
	rename -uid "24C13E2B-4BCE-A716-34D9-14B57AB43B9D";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".hd" yes;
lockNode -l 1 -lu 1;
createNode pointConstraint -n "IK_root_joint_positionLocator_pointConstraint1" -p
		 "HingeJoint__instance_1:IK_root_joint_positionLocator";
	rename -uid "0549D5FC-4C1B-13B8-8ED8-89AAB0CCCD46";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:IK_hinge_joint_positionLocator" 
		-p "HingeJoint__instance_1:module_grp";
	rename -uid "44E8B047-4FD1-3C05-BFF0-E489CD4FFDD1";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:IK_hinge_joint_positionLocatorShape" 
		-p "HingeJoint__instance_1:IK_hinge_joint_positionLocator";
	rename -uid "ADA045D5-4B95-99C3-A52C-38840891F91C";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "IK_hinge_joint_positionLocator_pointConstraint1" 
		-p "HingeJoint__instance_1:IK_hinge_joint_positionLocator";
	rename -uid "4FF9544E-4E48-CE95-4A55-B099B5652CCA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator" 
		-p "HingeJoint__instance_1:module_grp";
	rename -uid "BEDB407C-4C46-05F9-BDAA-049A5F99B232";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocatorShape" 
		-p "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator";
	rename -uid "6C0BA4F9-4911-E31D-8FB2-3D915B2678ED";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode ikHandle -n "HingeJoint__instance_1:IK_root_joint_ikHandle" -p "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator";
	rename -uid "41AD1D5B-4A79-9417-21C1-65BC1A27895B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.2315781481884187e-006 0 1.7763568394002505e-015 ;
	setAttr ".pv";
	setAttr ".roc" yes;
lockNode -l 1 -lu 1;
createNode poleVectorConstraint -n "IK_root_joint_ikHandle_poleVectorConstraint1" 
		-p "HingeJoint__instance_1:IK_root_joint_ikHandle";
	rename -uid "123B2436-4E2B-99E5-F448-BDB6F5E2D943";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_hinge_joint_positionLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "IK_root_joint_ikHandle_positionLocator_pointConstraint1" 
		-p "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator";
	rename -uid "B8A3A71C-4630-4B60-4098-65BE0267DB4A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 8 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:module_transform";
	rename -uid "858A618A-453F-2838-C983-63B7BD9FB5A8";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".t" -type "double3" 2.5784465329337358 0 0 ;
	setAttr ".s";
	setAttr ".aal" -type "attributeAlias" {"globalScale","scaleY"} ;
lockNode -l 1 -lu 1;
createNode mesh -n "HingeJoint__instance_1:module_transformShape" -p "HingeJoint__instance_1:module_transform";
	rename -uid "4D57B53C-4871-9227-E275-3DBB5B04047E";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".uvst";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".o";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1 -4.3673398e-007 -1.48870528 0 4.3673398e-007 -1.48870528 0 -4.3673398e-007 1.48870528 0
		 4.3673398e-007 1.48870528 0 1.48870528 -4.3673398e-007 0 1.48870528 4.3673398e-007 0
		 -1.48870528 -4.3673398e-007 0 -1.48870528 4.3673398e-007 0 3.3055887e-016 -4.3673398e-007 -1.48870528
		 3.3055905e-016 4.3673398e-007 -1.48870528 -3.3055905e-016 -4.3673398e-007 1.48870528
		 -3.3055887e-016 4.3673398e-007 1.48870528;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 8 10 0 9 11 0 12 13 0 14 15 0 12 14 0
		 13 15 0 16 17 0 18 19 0 16 18 0 17 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 15 -14 -15
		mu 0 4 14 15 16 17
		f 4 16 19 -18 -19
		mu 0 4 18 19 20 21
		f 4 20 23 -22 -23
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd";
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".atm" no;
	setAttr ".vnm" 0;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:root_joint_translation_control" 
		-p "HingeJoint__instance_1:module_transform";
	rename -uid "509D82DF-40FA-D1CE-4EC7-BB909BB2B2DF";
	setAttr -l on -k off ".v";
	setAttr ".r";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro";
	setAttr ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1:root_joint_translation_controlShape" 
		-p "HingeJoint__instance_1:root_joint_translation_control";
	rename -uid "0E8A1AA7-4738-9E1F-421D-29B75106E3BE";
	setAttr -k off ".v";
	setAttr ".iog";
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
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-016 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-017
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-016 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-016 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-016
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-016 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		2.051909376318187e-016 -6.284284658528814e-017 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-017 2.1934926354574312e-016
		-0.86720244749154174 6.5353909630129502e-017 -0.8672024474915413
		-5.0851507246572639e-016 8.7348995692220465e-017 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-017 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-016
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-016 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-017 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-017
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-017 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:hinge_joint_translation_control" 
		-p "HingeJoint__instance_1:module_transform";
	rename -uid "8C2BF2AF-4D1C-0C07-AA06-3AA5DAFF6B4C";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4 6.1268587782868611 -1.0000000000000002 ;
	setAttr ".r";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro";
	setAttr ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1:hinge_joint_translation_controlShape" 
		-p "HingeJoint__instance_1:hinge_joint_translation_control";
	rename -uid "BFBC04D2-48FD-C93D-052A-77A2896CD63E";
	setAttr -k off ".v";
	setAttr ".iog";
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
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-016 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-017
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-016 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-016 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-016
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-016 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		2.051909376318187e-016 -6.284284658528814e-017 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-017 2.1934926354574312e-016
		-0.86720244749154174 6.5353909630129502e-017 -0.8672024474915413
		-5.0851507246572639e-016 8.7348995692220465e-017 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-017 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-016
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-016 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-017 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-017
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-017 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:end_joint_translation_control" -p
		 "HingeJoint__instance_1:module_transform";
	rename -uid "ADFC0612-4972-984E-37C6-9C93F738E19B";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8 3.912069306389625 -7.0113492033629734e-016 ;
	setAttr ".r";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1:end_joint_translation_controlShape" 
		-p "HingeJoint__instance_1:end_joint_translation_control";
	rename -uid "9BD2F0F7-41F0-E860-824B-809F76AC24B3";
	setAttr -k off ".v";
	setAttr ".iog";
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
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-016 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-017
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-016 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-016 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-016
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-016 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		2.051909376318187e-016 -6.284284658528814e-017 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-017 2.1934926354574312e-016
		-0.86720244749154174 6.5353909630129502e-017 -0.8672024474915413
		-5.0851507246572639e-016 8.7348995692220465e-017 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-017 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-016
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-016 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-017 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-017
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-017 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "2E87FEF7-4A47-7B5D-E426-2F91BDE32D53";
	addAttr -ci true -sn "mirrorInfo" -ln "mirrorInfo" -min 0 -max 3 -en "none:x:y:z" 
		-at "enum";
	addAttr -ci true -sn "mirrorLinks" -ln "mirrorLinks" -dt "string";
	setAttr ".mirrorInfo" 1;
	setAttr ".mirrorLinks" -type "string" "HingeJoint__instance_1__X";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:joints_grp" -p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "7A1C8A42-4F2D-52EE-12E9-C48326DCEA05";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:root_joint" -p "HingeJoint__instance_1_mirror:joints_grp";
	rename -uid "D8F605F6-4406-D90D-2F4A-778F0E64EB1B";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 90.000000000000014 3.1805546814635168e-015 56.06118629941782 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -14.036243467926482 0 ;
createNode joint -n "HingeJoint__instance_1_mirror:hinge_joint" -p "HingeJoint__instance_1_mirror:root_joint";
	rename -uid "C9BBBE6C-4684-8A2A-C63B-B9B0CAA33B91";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.3850116729736328 -2.4651903288156619e-032 -2.2204460492503131e-016 ;
	setAttr ".r" -type "double3" -20.781049393067683 -51.504329120558005 41.760084815243502 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.3556123980464918e-016 -28.072486935852947 3.7422449592185975e-015 ;
createNode joint -n "HingeJoint__instance_1_mirror:end_joint" -p "HingeJoint__instance_1_mirror:hinge_joint";
	rename -uid "6427EE29-4C02-D085-1195-D1B46E9E486B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6803088188171387 -2.376163815039583e-016 -6.6613381477509392e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.1594909699334765e-016 14.036243467926457 1.7541773246337188e-015 ;
createNode ikEffector -n "HingeJoint__instance_1_mirror:hinge_joint_ikEffector" -p
		 "HingeJoint__instance_1_mirror:hinge_joint";
	rename -uid "0B26C43C-4D66-21A3-6B8F-D1853E6C4C50";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".hd" yes;
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:root_joint__pointConstraint" 
		-p "HingeJoint__instance_1_mirror:root_joint";
	rename -uid "9EB08F38-4C7B-682B-21D3-40995C12B041";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode ikEffector -n "HingeJoint__instance_1_mirror:root_joint_ikEffector" -p
		 "HingeJoint__instance_1_mirror:root_joint";
	rename -uid "3D28EEE5-4DCE-4681-B5F3-898381B6EBB0";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".hd" yes;
lockNode -l 1 -lu 1;
createNode ikHandle -n "HingeJoint__instance_1_mirror:root_joint_ikHandle" -p "HingeJoint__instance_1_mirror:joints_grp";
	rename -uid "6585E464-47D3-186F-089A-AABB2C9A0E7D";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".pv";
	setAttr ".roc" yes;
lockNode -l 1 -lu 1;
createNode poleVectorConstraint -n "root_joint_ikHandle_poleVectorConstraint2" -p
		 "HingeJoint__instance_1_mirror:root_joint_ikHandle";
	rename -uid "2855D897-4144-E2CF-726D-0E95A01CE725";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 0 0.5 -6.123233995736766e-017 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:root_joint_ikHandle";
	rename -uid "39B2EB4A-4DF2-159C-9ABC-0EBFB9D0F2E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_endPosLocatorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -4 -1.5246018321978835e-032 -1 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:root_joint_rootPosLocator" 
		-p "HingeJoint__instance_1_mirror:joints_grp";
	rename -uid "F0749207-4170-CBF5-01E2-3EAA288F4C03";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:root_joint_rootPosLocatorShape" 
		-p "HingeJoint__instance_1_mirror:root_joint_rootPosLocator";
	rename -uid "30FE9FB2-4AF7-D6CB-8F52-A0969F581568";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:root_joint_rootPosLocator";
	rename -uid "055ABDF5-4D9A-101A-370F-C7BC70ED7924";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator" 
		-p "HingeJoint__instance_1_mirror:joints_grp";
	rename -uid "36F0A38C-40A5-5870-CFC1-AC86D97E9F30";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:hinge_joint_endPosLocatorShape" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator";
	rename -uid "78977966-4E7A-3A40-7E23-43814034F961";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator";
	rename -uid "6F8FB91B-49A3-02FC-C170-F8A333B4CFE7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -4 -2.4651903288156619e-032 -1 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode ikHandle -n "HingeJoint__instance_1_mirror:hinge_joint_ikHandle" -p "HingeJoint__instance_1_mirror:joints_grp";
	rename -uid "9161CE77-4DF9-7707-8244-0D954DB9FFA9";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".pv";
	setAttr ".roc" yes;
lockNode -l 1 -lu 1;
createNode poleVectorConstraint -n "hinge_joint_ikHandle_poleVectorConstraint2" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_ikHandle";
	rename -uid "F8D6EA29-4AC0-FCD2-113A-AABAD9350AD1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -9.6671985527763127e-008 0.49999999999999978 -2.4167996048873874e-008 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_ikHandle";
	rename -uid "490A51FF-4AB5-2365-BA30-23AB20FBA79A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_endPosLocatorW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -7.5294116680338963 1.940285000290664 -1.8823529170084752 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator" 
		-p "HingeJoint__instance_1_mirror:joints_grp";
	rename -uid "6D978646-4DD6-C57F-A671-8DB3653AF1FC";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocatorShape" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator";
	rename -uid "2EC7872D-49A5-F584-354C-1486E0E34457";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator";
	rename -uid "895AA9A7-47FB-D541-8CA3-23B24718733A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -3.9999999033280145 2.2204460492503131e-016 -0.99999997583200395 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:end_joint_endPosLocator" 
		-p "HingeJoint__instance_1_mirror:joints_grp";
	rename -uid "96019418-4A03-5698-AF59-00A410FDC212";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:end_joint_endPosLocatorShape" 
		-p "HingeJoint__instance_1_mirror:end_joint_endPosLocator";
	rename -uid "06AC4694-4FB1-1F18-6AA1-07BE54BAA732";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:end_joint_endPosLocator";
	rename -uid "FD88682D-4E03-CC09-D56C-91AC290290EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -8 6.0684932812713692e-032 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hierarchyRepresentation_grp" 
		-p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "9D137DB4-4FC4-6BBE-36A0-AE985AD2E66C";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_1_mirror:hierarchyRepresentation_grp";
	rename -uid "878F8D5E-4E95-F815-3999-EBAFC63064AE";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation" 
		-p "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "1BF38D37-4FD4-A7CB-355E-1EBC4FE97C83";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1_mirror:root_joint_hierarchy_representationShape" 
		-p "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation";
	rename -uid "48D15270-469C-3709-47D1-F89BA9EA44B4";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-016 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-018
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-016 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-016 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-017
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-017 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-018 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-017
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-016 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-016 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-016
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-016 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:root_joint_hierarchy_arrow_representation" 
		-p "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation";
	rename -uid "245289E3-46C4-D766-FF55-F081C0ACCF00";
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.46739519169468152 0.46739519169468152 0.46739519169468152 ;
	setAttr ".rp" -type "double3" 1.1102230246251565e-016 0.5 0 ;
	setAttr ".rpt" -type "double3" 0.49999999999999989 -0.5 0 ;
	setAttr ".sp" -type "double3" 2.3753411339122038e-016 1.0697585445564812 0 ;
	setAttr ".spt" -type "double3" -1.2651181092870475e-016 -0.56975854455648134 0 ;
lockNode -l 1 -lu 1;
createNode mesh -n "HingeJoint__instance_1_mirror:root_joint_hierarchy_arrow_representationShape" 
		-p "HingeJoint__instance_1_mirror:root_joint_hierarchy_arrow_representation";
	rename -uid "FBFBFD25-4C9D-1C68-5776-F48214EA0B02";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-008 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".uvst";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".o";
	setAttr ".ci";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0.33249366 1.0697585 -0.33249369 
		-2.8027111e-008 1.0697585 -0.4702169 -0.33249369 1.0697585 -0.33249369 -0.4702169 
		1.0697585 -1.4013556e-008 -0.33249369 1.0697585 0.33249366 -2.8027111e-008 1.0697585 
		0.4702169 0.33249369 1.0697585 0.33249369 0.4702169 1.0697585 -1.4013556e-008 2.3753411e-016 
		1.0697585 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 -0.25 -0.70710671 0 -0.25 -0.99999988
		 -0.70710671 -0.25 -0.70710671 -0.99999988 -0.25 0 -0.70710671 -0.25 0.70710671 0 -0.25 0.99999994
		 0.70710677 -0.25 0.70710677 1 -0.25 0 0 0.25 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd";
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".atm" no;
	setAttr ".vnm" 0;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2" 
		-p "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "001BAF40-4AFC-5B7B-C0E4-A7A54F362858";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 101.71749833614889 -172.21770590906019 123.13903722218836 ;
	setAttr ".rsrr" -type "double3" 90 -14.036243467926482 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2" 
		-p "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "0F2B9FBB-4CBB-3770-0437-B5AC570A368B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_1_mirror:hierarchyRepresentation_grp";
	rename -uid "4052B664-4A2A-A26C-F1A0-EFABD233321A";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "E35AD852-42C6-C157-89B5-348F8CAD7221";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representationShape" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation";
	rename -uid "03AE0467-47EE-7420-BA79-4C847FD32721";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-016 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-018
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-016 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-016 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-017
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-017 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-018 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-017
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-016 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-016 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-016
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-016 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_arrow_representation" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation";
	rename -uid "A7DA7666-4656-7D35-7E37-219283D303B0";
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.46739519169468152 0.46739519169468152 0.46739519169468152 ;
	setAttr ".rp" -type "double3" 1.1102230246251565e-016 0.5 0 ;
	setAttr ".rpt" -type "double3" 0.49999999999999989 -0.5 0 ;
	setAttr ".sp" -type "double3" 2.3753411339122038e-016 1.0697585445564812 0 ;
	setAttr ".spt" -type "double3" -1.2651181092870475e-016 -0.56975854455648134 0 ;
lockNode -l 1 -lu 1;
createNode mesh -n "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_arrow_representationShape" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_arrow_representation";
	rename -uid "98672B2D-48B1-9F7B-CE51-1FBAFA79E1B6";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-008 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".uvst";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".o";
	setAttr ".ci";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0.33249366 1.0697585 -0.33249369 
		-2.8027111e-008 1.0697585 -0.4702169 -0.33249369 1.0697585 -0.33249369 -0.4702169 
		1.0697585 -1.4013556e-008 -0.33249369 1.0697585 0.33249366 -2.8027111e-008 1.0697585 
		0.4702169 0.33249369 1.0697585 0.33249369 0.4702169 1.0697585 -1.4013556e-008 2.3753411e-016 
		1.0697585 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 -0.25 -0.70710671 0 -0.25 -0.99999988
		 -0.70710671 -0.25 -0.70710671 -0.99999988 -0.25 0 -0.70710671 -0.25 0.70710671 0 -0.25 0.99999994
		 0.70710677 -0.25 0.70710677 1 -0.25 0 0 0.25 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd";
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".atm" no;
	setAttr ".vnm" 0;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "71BC737D-427D-0A3F-9E42-0089A2753C2A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" -83.253060794539266 12.336989071114234 28.973182692166784 ;
	setAttr ".rst" -type "double3" -3.9999999033280145 2.2204460492503131e-016 -0.99999997583200395 ;
	setAttr ".rsrr" -type "double3" 89.999994626480969 14.036242816291576 8.1961017890253328e-015 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "69CC28A7-44E2-96D2-8ED2-479477035870";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:orientationControls_grp" 
		-p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "EC7EAEF1-428E-6A61-6E81-B8ABF462DE17";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:preferredAngle_representation_grp" 
		-p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "FFC5F91C-4AE6-D09A-E265-E0BCF246F023";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp" 
		-p "HingeJoint__instance_1_mirror:preferredAngle_representation_grp";
	rename -uid "A97BD536-4467-0DB2-C880-A6A7BA95E792";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp" -type "double3" -1.1920928955078125e-007 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".sp" -type "double3" -1.1920928955078125e-007 0.00014042854309082031 0.11461406946182251 ;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation" 
		-p "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "A3E511E3-4B79-0A66-6202-56B9CC5872F8";
	addAttr -ci true -sn "axis" -ln "axis" -min 0 -max 3 -en "+Y:-Y:+Z:-Z" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".t";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".axis";
lockNode -l 1 -lu 1;
createNode mesh -n "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representationShape" 
		-p "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation";
	rename -uid "5984A9B9-4CA9-412D-46BD-EAB56C64BC0C";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1070 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.7377643 0.1727457 0.75 0.25 0.73776412
		 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5
		 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427
		 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675
		 0.4227457 0.012235761 0.5 -1.1920929e-007 0.5772543 0.012235746 0.64694643 0.04774563
		 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968
		 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002
		 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792
		 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968
		 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5
		 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157
		 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968
		 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987
		 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516
		 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1
		 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999
		 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002 0.94999999 0.40000004
		 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999 0.50000006 1 0.50000006
		 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008 1 0.60000008 0.94999999
		 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011 0.94999999 1.000000119209
		 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001
		 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001
		 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006
		 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011
		 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001
		 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001
		 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006
		 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011
		 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001
		 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001
		 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006
		 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011
		 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001
		 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001
		 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006
		 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011
		 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001
		 0.69999993 0.1 0.69999993;
	setAttr ".uvst[0].uvsp[250:499]" 0.15000001 0.69999993 0.2 0.69999993 0.25
		 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993 0.45000005
		 0.69999993 0.50000006 0.69999993 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001
		 0.69999993 0.70000011 0.69999993 0.95000017 0.69999993 1.000000119209 0.69999993
		 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992
		 0.25 0.64999992 0.30000001 0.64999992 0.35000002 0.64999992 0.40000004 0.64999992
		 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007 0.64999992 0.60000008 0.64999992
		 0.6500001 0.64999992 0.70000011 0.64999992 0.95000017 0.64999992 1.000000119209 0.64999992
		 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999
		 0.25 0.5999999 0.30000001 0.5999999 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005
		 0.5999999 0.50000006 0.5999999 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001
		 0.5999999 0.70000011 0.5999999 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989
		 0.050000001 0.54999989 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989
		 0.30000001 0.54999989 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989
		 0.50000006 0.54999989 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989
		 0.70000011 0.54999989 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988
		 0.050000001 0.49999988 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988
		 0.30000001 0.49999988 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988
		 0.50000006 0.49999988 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988
		 0.70000011 0.49999988 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987
		 0.050000001 0.44999987 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987
		 0.30000001 0.44999987 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987
		 0.50000006 0.44999987 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987
		 0.70000011 0.44999987 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986
		 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986
		 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986
		 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986
		 0.70000011 0.39999986 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985
		 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985
		 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985
		 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985
		 0.70000011 0.34999985 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983
		 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983
		 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983
		 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983
		 0.70000011 0.29999983 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984
		 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984
		 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984
		 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984
		 0.70000011 0.24999984 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984
		 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984
		 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984
		 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984
		 0.70000011 0.19999984 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984
		 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984
		 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984
		 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984
		 0.70000011 0.14999984 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845
		 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25
		 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845
		 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845
		 0.6500001 0.099999845 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209
		 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844
		 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004
		 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844
		 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844
		 1.000000119209 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007 0.1 -1.5646219e-007
		 0.15000001 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007 0.30000001 -1.5646219e-007
		 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007 0.45000005 -1.5646219e-007
		 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007 0.60000008 -1.5646219e-007
		 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007;
	setAttr ".uvst[0].uvsp[500:749]" 0.95000017 -1.5646219e-007 1.000000119209
		 -1.5646219e-007 0 0 0.15838426 1.4050773e-016 0.30901742 0.95105654 0.15838476 1
		 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654 0 0 0.18460587 0 0.61803406 0.85065073
		 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-007 1 0 0.72654247 0 0 0.29869798
		 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1 0 0 0.15838529 0 0 0.18460587
		 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277 0 1.000000119209 0 0 0.99999946
		 2.7628249e-007 0.72654223 0 0 0.29869834 0 0.82442951 0.26787299 0.99999994 0.50952518
		 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-016 0.16653505 0 0.4596495 0.90211302
		 0.32491958 1 4.9568939e-007 1.4050772e-016 0.15838474 0 0.15838425 1 0 0.99999994
		 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1 0 0 0.72654068
		 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878 0 0 0.16653535
		 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205 1 0 0.79360431
		 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1 0 0 0.32492003
		 0.29311422 0.11195964 0.7377643 0.1727457 0.75 0.25 0.73776412 0.32725424 0.70225424
		 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5 0.5 0.42274573 0.48776418
		 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427 0.24999994 0.25 0.26223582
		 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675 0.4227457 0.012235761 0.5
		 -1.1920929e-007 0.5772543 0.012235746 0.64694643 0.04774563 0.70225441 0.1030536
		 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968 0.30000001 0.5
		 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002 0.5 0.49987689
		 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792 0.99958968
		 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968 0.47500005
		 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5 0.5000205 0.99958968
		 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157 0.99958968 0.59999996
		 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968 0.64999992 0.5 0.50012308
		 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987 0.5 0.50016415 0.99958968
		 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516 0.99958968 0.5 1 0.050000001
		 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1 0.94999999 0.15000001 1 0.15000001
		 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999 0.30000001 1 0.30000001 0.94999999
		 0.35000002 1 0.35000002 0.94999999 0.40000004 1 0.40000004 0.94999999 0.45000005
		 1 0.45000005 0.94999999 0.50000006 1 0.50000006 0.94999999 0.55000007 1 0.55000007
		 0.94999999 0.60000008 1 0.60000008 0.94999999 0.6500001 1 0.6500001 0.94999999 0.70000011
		 1 0.70000011 0.94999999 1.000000119209 1 0.95000017 1 0.95000017 0.94999999 1.000000119209
		 0.94999999 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998 0.15000001 0.89999998
		 0.2 0.89999998 0.25 0.89999998 0.30000001 0.89999998 0.35000002 0.89999998 0.40000004
		 0.89999998 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007 0.89999998 0.60000008
		 0.89999998 0.6500001 0.89999998 0.70000011 0.89999998 0.95000017 0.89999998 1.000000119209
		 0.89999998 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996 0.15000001 0.84999996
		 0.2 0.84999996 0.25 0.84999996 0.30000001 0.84999996 0.35000002 0.84999996 0.40000004
		 0.84999996 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007 0.84999996 0.60000008
		 0.84999996 0.6500001 0.84999996 0.70000011 0.84999996 0.95000017 0.84999996 1.000000119209
		 0.84999996 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995 0.15000001 0.79999995
		 0.2 0.79999995 0.25 0.79999995 0.30000001 0.79999995 0.35000002 0.79999995 0.40000004
		 0.79999995 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007 0.79999995 0.60000008
		 0.79999995 0.6500001 0.79999995 0.70000011 0.79999995 0.95000017 0.79999995 1.000000119209
		 0.79999995 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994 0.15000001 0.74999994
		 0.2 0.74999994 0.25 0.74999994 0.30000001 0.74999994 0.35000002 0.74999994 0.40000004
		 0.74999994 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007 0.74999994 0.60000008
		 0.74999994 0.6500001 0.74999994 0.70000011 0.74999994 0.95000017 0.74999994 1.000000119209
		 0.74999994 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993 0.15000001 0.69999993
		 0.2 0.69999993 0.25 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004
		 0.69999993;
	setAttr ".uvst[0].uvsp[750:999]" 0.45000005 0.69999993 0.50000006 0.69999993
		 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993
		 0.95000017 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992
		 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992
		 0.35000002 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992
		 0.55000007 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992
		 0.95000017 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999
		 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999
		 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999
		 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999
		 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989
		 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989
		 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989
		 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989
		 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988
		 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988
		 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988
		 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988
		 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987
		 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987
		 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987
		 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987
		 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986 0.050000001 0.39999986
		 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986 0.30000001 0.39999986
		 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986 0.50000006 0.39999986
		 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986 0.70000011 0.39999986
		 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985 0.050000001 0.34999985
		 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985
		 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985
		 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985
		 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983 0.050000001 0.29999983
		 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983
		 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983
		 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983
		 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984 0.050000001 0.24999984
		 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984
		 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984
		 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984
		 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984 0.050000001 0.19999984
		 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984
		 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984
		 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984
		 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984 0.050000001 0.14999984
		 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984
		 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984
		 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984
		 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845 0.050000001 0.099999845
		 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25 0.099999845 0.30000001
		 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845 0.45000005 0.099999845
		 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845 0.6500001 0.099999845
		 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209 0.099999845 0 0.049999844
		 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844 0.2 0.049999844 0.25
		 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004 0.049999844
		 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844 0.60000008 0.049999844
		 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844 1.000000119209
		 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007 0.1 -1.5646219e-007 0.15000001
		 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007 0.30000001 -1.5646219e-007
		 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007 0.45000005 -1.5646219e-007
		 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007 0.60000008 -1.5646219e-007
		 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007 0.95000017 -1.5646219e-007 1.000000119209
		 -1.5646219e-007 0 0 0.15838426 1.4050773e-016 0.30901742 0.95105654 0.15838476 1;
	setAttr ".uvst[0].uvsp[1000:1069]" 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654
		 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-007
		 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1
		 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277
		 0 1.000000119209 0 0 0.99999946 2.7628249e-007 0.72654223 0 0 0.29869834 0 0.82442951
		 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-016 0.16653505
		 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-007 1.4050772e-016 0.15838474 0 0.15838425
		 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1
		 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878
		 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205
		 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1
		 0 0 0.32492003 0.29311422 0.11195964;
	setAttr ".uvst";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".o";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 762 ".vt";
	setAttr ".vt[0:165]"  0.14265858 -2 -0.04635258 0.12135264 -2 -0.088167846
		 0.088167846 -2 -0.12135263 0.046352573 -2 -0.14265856 0 -2 -0.15000008 -0.046352573 -2 -0.14265855
		 -0.088167824 -2 -0.1213526 -0.12135259 -2 -0.088167816 -0.14265852 -2 -0.046352562
		 -0.15000004 -2 0 -0.14265852 -2 0.046352562 -0.12135258 -2 0.088167809 -0.088167809 -2 0.12135258
		 -0.046352562 -2 0.1426585 -4.4703485e-009 -2 0.15000002 0.046352547 -2 0.1426585
		 0.088167787 -2 0.12135256 0.12135255 -2 0.088167801 0.14265849 -2 0.04635255 0.15000001 -2 0
		 0.14265858 2 -0.04635258 0.12135264 2 -0.088167846 0.088167846 2 -0.12135263 0.046352573 2 -0.14265856
		 0 2 -0.15000008 -0.046352573 2 -0.14265855 -0.088167824 2 -0.1213526 -0.12135259 2 -0.088167816
		 -0.14265852 2 -0.046352562 -0.15000004 2 0 -0.14265852 2 0.046352562 -0.12135258 2 0.088167809
		 -0.088167809 2 0.12135258 -0.046352562 2 0.1426585 -4.4703485e-009 2 0.15000002 0.046352547 2 0.1426585
		 0.088167787 2 0.12135256 0.12135255 2 0.088167801 0.14265849 2 0.04635255 0.15000001 2 0
		 -0.0027888119 1.46116579 0.89826292 -0.0027888119 1.50792933 0.8064844 -0.0027888119 1.58076513 0.7336486
		 -0.0027888119 1.67254364 0.68688512 -0.0027888119 1.77428091 0.67077154 -0.0027888119 1.87601817 0.68688512
		 -0.0027888119 1.96779668 0.73364866 -0.0027888119 2.040632486 0.80648446 -0.0027888119 2.087395906 0.89826298
		 -0.0027888119 2.10350943 1.000000119209 -0.0027888119 2.087395906 1.10173738 -0.0027888119 2.040632486 1.19351578
		 -0.0027888119 1.96779656 1.26635158 -0.0027888119 1.87601817 1.31311512 -0.0027888119 1.77428091 1.32922864
		 -0.0027888119 1.67254376 1.313115 -0.0027888119 1.58076525 1.26635158 -0.0027888119 1.50792944 1.19351578
		 -0.0027888119 1.4611659 1.10173738 -0.0027888119 1.44505239 1.000000119209 0.45642692 1.77428091 1.000000119209
		 0.45642692 1.77402389 0.99991667 0.45642692 1.77406228 0.99984133 0.45642692 1.77412212 0.99978161
		 0.45642692 1.77419746 0.99974322 0.45642692 1.77428091 0.99972999 0.45642692 1.77436435 0.99974322
		 0.45642692 1.77443969 0.99978161 0.45642692 1.77449954 0.99984133 0.45642692 1.77453792 0.99991667
		 0.45642692 1.77455115 1.000000119209 0.45642692 1.77453792 1.000083565712 0.45642692 1.77449954 1.00015890598
		 0.45642692 1.77443969 1.00021874905 0.45642692 1.77436435 1.00025713444 0.45642692 1.77428091 1.00027036667
		 0.45642692 1.77419746 1.00025713444 0.45642692 1.77412212 1.00021874905 0.45642692 1.77406228 1.00015890598
		 0.45642692 1.77402389 1.000083565712 0.45642692 1.77401066 1.000000119209 0.85595143 1.77428091 -0.27811545
		 0.72811574 1.77428091 -0.52900702 0.52900702 1.77428091 -0.72811574 0.27811542 1.77428091 -0.85595131
		 0 1.77428091 -0.90000039 -0.27811542 1.77428091 -0.85595125 -0.5290069 1.77428091 -0.72811556
		 -0.7281155 1.77428091 -0.52900684 -0.85595107 1.77428091 -0.27811536 -0.90000021 1.77428091 0
		 -0.85595107 1.77428091 0.27811536 -0.72811544 1.77428091 0.52900684 -0.52900684 1.77428091 0.72811538
		 -0.27811536 1.77428091 0.85595095 -2.6822089e-008 1.77428091 0.9000001 0.89999998 1.77428091 0
		 0.86060625 1.80518258 -0.27962789 0.73207539 1.80518258 -0.5318839 0.5318839 1.80518258 -0.73207533
		 0.27962789 1.80518258 -0.86060613 0 1.80518258 -0.90489477 -0.27962789 1.80518258 -0.86060607
		 -0.53188378 1.80518258 -0.73207521 -0.73207515 1.80518258 -0.53188372 -0.8606059 1.80518258 -0.2796278
		 -0.90489459 1.80518258 0 -0.8606059 1.80518258 0.2796278 -0.7320751 1.80518258 0.53188366
		 -0.53188366 1.80518258 0.73207504 -0.2796278 1.80518258 0.86060578 -2.6967953e-008 1.80518258 0.90489447
		 0.90489435 1.80518258 0 0.87411499 1.83305943 -0.28401718 0.74356663 1.83305943 -0.54023278
		 0.54023278 1.83305943 -0.74356663 0.28401715 1.83305943 -0.87411493 0 1.83305943 -0.91909873
		 -0.28401715 1.83305943 -0.87411487 -0.54023266 1.83305943 -0.74356645 -0.74356639 1.83305943 -0.5402326
		 -0.87411469 1.83305943 -0.28401706 -0.91909856 1.83305943 0 -0.87411469 1.83305943 0.28401706
		 -0.74356633 1.83305943 0.54023254 -0.54023254 1.83305943 0.74356627 -0.28401706 1.83305943 0.87411457
		 -2.7391264e-008 1.83305943 0.91909844 0.91909832 1.83305943 0 0.89515543 1.85518265 -0.29085362
		 0.76146466 1.85518265 -0.55323642 0.55323642 1.85518265 -0.76146466 0.29085359 1.85518265 -0.89515531
		 0 1.85518265 -0.94122195 -0.29085359 1.85518265 -0.89515525 -0.55323631 1.85518265 -0.76146448
		 -0.76146442 1.85518265 -0.55323625 -0.89515507 1.85518265 -0.2908535 -0.94122171 1.85518265 0
		 -0.89515507 1.85518265 0.2908535 -0.76146436 1.85518265 0.55323619 -0.55323619 1.85518265 0.7614643
		 -0.2908535 1.85518265 0.89515495 -2.8050586e-008 1.85518265 0.94122159 0.94122148 1.85518265 0
		 0.92166787 1.86938655 -0.29946804 0.78401756 1.86938655 -0.56962204 0.56962204 1.86938655 -0.7840175
		 0.29946801 1.86938655 -0.92166775 0 1.86938655 -0.96909881 -0.29946801 1.86938655 -0.9216677
		 -0.56962192 1.86938655 -0.78401732 -0.78401726 1.86938655 -0.56962186 -0.92166752 1.86938655 -0.29946792
		 -0.96909857 1.86938655 0 -0.92166752 1.86938655 0.29946792 -0.78401721 1.86938655 0.5696218
		 -0.5696218 1.86938655 0.78401715 -0.29946792 1.86938655 0.9216674 -2.8881381e-008 1.86938655 0.96909845
		 0.96909833 1.86938655 0 0.95105714 1.87428093 -0.30901718 0.80901754 1.87428093 -0.5877856
		 0.5877856 1.87428093 -0.80901748 0.30901715 1.87428093 -0.95105702 0 1.87428093 -1.000000476837;
	setAttr ".vt[166:331]" -0.30901715 1.87428093 -0.95105696 -0.58778548 1.87428093 -0.8090173
		 -0.80901724 1.87428093 -0.58778542 -0.95105678 1.87428093 -0.30901706 -1.000000238419 1.87428093 0
		 -0.95105678 1.87428093 0.30901706 -0.80901718 1.87428093 0.58778536 -0.58778536 1.87428093 0.80901712
		 -0.30901706 1.87428093 0.95105666 -2.9802322e-008 1.87428093 1.000000119209 1 1.87428093 0
		 0.9804464 1.86938655 -0.31856632 0.83401752 1.86938655 -0.60594916 0.60594916 1.86938655 -0.83401746
		 0.31856629 1.86938655 -0.98044628 0 1.86938655 -1.030902147 -0.31856629 1.86938655 -0.98044622
		 -0.60594904 1.86938655 -0.83401728 -0.83401722 1.86938655 -0.60594898 -0.98044604 1.86938655 -0.3185662
		 -1.030901909 1.86938655 0 -0.98044604 1.86938655 0.3185662 -0.83401716 1.86938655 0.60594893
		 -0.60594893 1.86938655 0.8340171 -0.3185662 1.86938655 0.98044592 -3.0723264e-008 1.86938655 1.03090179
		 1.03090167 1.86938655 0 1.0069588423 1.85518265 -0.32718074 0.85657042 1.85518265 -0.62233478
		 0.62233478 1.85518265 -0.8565703 0.32718071 1.85518265 -1.0069587231 0 1.85518265 -1.058779001
		 -0.32718071 1.85518265 -1.0069587231 -0.62233466 1.85518265 -0.85657012 -0.85657007 1.85518265 -0.6223346
		 -1.0069584846 1.85518265 -0.32718062 -1.058778763 1.85518265 0 -1.0069584846 1.85518265 0.32718062
		 -0.85657001 1.85518265 0.62233454 -0.62233454 1.85518265 0.85656995 -0.32718062 1.85518265 1.0069583654
		 -3.1554059e-008 1.85518265 1.058778644 1.058778524 1.85518265 0 1.027999282 1.83305943 -0.33401722
		 0.87446845 1.83305943 -0.63533849 0.63533849 1.83305943 -0.87446839 0.33401719 1.83305943 -1.027999163
		 0 1.83305943 -1.080902219 -0.33401719 1.83305943 -1.027999163 -0.63533837 1.83305943 -0.87446821
		 -0.87446815 1.83305943 -0.63533831 -1.027998924 1.83305943 -0.33401707 -1.08090198 1.83305943 0
		 -1.027998924 1.83305943 0.33401707 -0.87446809 1.83305943 0.63533825 -0.63533825 1.83305943 0.87446803
		 -0.33401707 1.83305943 1.027998805 -3.2213382e-008 1.83305943 1.080901861 1.080901742 1.83305943 0
		 1.041508079 1.80518258 -0.33840647 0.88595968 1.80518258 -0.64368731 0.64368731 1.80518258 -0.88595963
		 0.33840641 1.80518258 -1.041507959 0 1.80518258 -1.095106125 -0.33840641 1.80518258 -1.04150784
		 -0.64368719 1.80518258 -0.88595939 -0.88595933 1.80518258 -0.64368713 -1.041507602 1.80518258 -0.33840632
		 -1.095105886 1.80518258 0 -1.041507602 1.80518258 0.33840632 -0.88595927 1.80518258 0.64368707
		 -0.64368707 1.80518258 0.88595921 -0.33840632 1.80518258 1.041507483 -3.2636692e-008 1.80518258 1.095105767
		 1.095105648 1.80518258 0 1.046162844 1.77428091 -0.33991891 0.88991934 1.77428091 -0.64656419
		 0.64656419 1.77428091 -0.88991922 0.33991888 1.77428091 -1.046162724 0 1.77428091 -1.1000005
		 -0.33991888 1.77428091 -1.046162724 -0.64656407 1.77428091 -0.88991904 -0.88991898 1.77428091 -0.64656401
		 -1.046162486 1.77428091 -0.33991876 -1.10000026 1.77428091 0 -1.046162486 1.77428091 0.33991876
		 -0.88991892 1.77428091 0.64656389 -0.64656389 1.77428091 0.88991886 -0.33991876 1.77428091 1.046162367
		 -3.2782555e-008 1.77428091 1.10000014 1.10000002 1.77428091 0 1.041508079 1.74337924 -0.33840647
		 0.88595968 1.74337924 -0.64368731 0.64368731 1.74337924 -0.88595963 0.33840641 1.74337924 -1.041507959
		 0 1.74337924 -1.095106125 -0.33840641 1.74337924 -1.04150784 -0.64368719 1.74337924 -0.88595939
		 -0.88595933 1.74337924 -0.64368713 -1.041507602 1.74337924 -0.33840632 -1.095105886 1.74337924 0
		 -1.041507602 1.74337924 0.33840632 -0.88595927 1.74337924 0.64368707 -0.64368707 1.74337924 0.88595921
		 -0.33840632 1.74337924 1.041507483 -3.2636692e-008 1.74337924 1.095105767 1.095105648 1.74337924 0
		 1.027999282 1.71550238 -0.33401722 0.87446845 1.71550238 -0.63533849 0.63533849 1.71550238 -0.87446839
		 0.33401719 1.71550238 -1.027999163 0 1.71550238 -1.080902219 -0.33401719 1.71550238 -1.027999163
		 -0.63533837 1.71550238 -0.87446821 -0.87446815 1.71550238 -0.63533831 -1.027998924 1.71550238 -0.33401707
		 -1.08090198 1.71550238 0 -1.027998924 1.71550238 0.33401707 -0.87446809 1.71550238 0.63533825
		 -0.63533825 1.71550238 0.87446803 -0.33401707 1.71550238 1.027998805 -3.2213382e-008 1.71550238 1.080901861
		 1.080901742 1.71550238 0 1.0069588423 1.69337916 -0.32718074 0.85657042 1.69337916 -0.62233478
		 0.62233478 1.69337916 -0.8565703 0.32718071 1.69337916 -1.0069587231 0 1.69337916 -1.058779001
		 -0.32718071 1.69337916 -1.0069587231 -0.62233466 1.69337916 -0.85657012 -0.85657007 1.69337916 -0.6223346
		 -1.0069584846 1.69337916 -0.32718062 -1.058778763 1.69337916 0 -1.0069584846 1.69337916 0.32718062
		 -0.85657001 1.69337916 0.62233454 -0.62233454 1.69337916 0.85656995 -0.32718062 1.69337916 1.0069583654
		 -3.1554059e-008 1.69337916 1.058778644 1.058778524 1.69337916 0 0.9804464 1.67917526 -0.31856632
		 0.83401752 1.67917526 -0.60594916 0.60594916 1.67917526 -0.83401746 0.31856629 1.67917526 -0.98044628
		 0 1.67917526 -1.030902147 -0.31856629 1.67917526 -0.98044622 -0.60594904 1.67917526 -0.83401728
		 -0.83401722 1.67917526 -0.60594898 -0.98044604 1.67917526 -0.3185662 -1.030901909 1.67917526 0
		 -0.98044604 1.67917526 0.3185662 -0.83401716 1.67917526 0.60594893 -0.60594893 1.67917526 0.8340171
		 -0.3185662 1.67917526 0.98044592 -3.0723264e-008 1.67917526 1.03090179 1.03090167 1.67917526 0
		 0.95105714 1.67428088 -0.30901718 0.80901754 1.67428088 -0.5877856 0.5877856 1.67428088 -0.80901748
		 0.30901715 1.67428088 -0.95105702 0 1.67428088 -1.000000476837 -0.30901715 1.67428088 -0.95105696
		 -0.58778548 1.67428088 -0.8090173 -0.80901724 1.67428088 -0.58778542 -0.95105678 1.67428088 -0.30901706
		 -1.000000238419 1.67428088 0 -0.95105678 1.67428088 0.30901706;
	setAttr ".vt[332:497]" -0.80901718 1.67428088 0.58778536 -0.58778536 1.67428088 0.80901712
		 -0.30901706 1.67428088 0.95105666 -2.9802322e-008 1.67428088 1.000000119209 1 1.67428088 0
		 0.92166781 1.67917526 -0.29946801 0.7840175 1.67917526 -0.56962198 0.56962198 1.67917526 -0.78401744
		 0.29946798 1.67917526 -0.9216677 0 1.67917526 -0.96909875 -0.29946798 1.67917526 -0.92166764
		 -0.56962192 1.67917526 -0.78401726 -0.78401721 1.67917526 -0.56962186 -0.92166746 1.67917526 -0.29946789
		 -0.96909851 1.67917526 0 -0.92166746 1.67917526 0.29946789 -0.78401715 1.67917526 0.5696218
		 -0.5696218 1.67917526 0.78401709 -0.29946789 1.67917526 0.92166734 -2.8881379e-008 1.67917526 0.96909839
		 0.96909827 1.67917526 0 0.89515537 1.69337916 -0.29085359 0.76146466 1.69337916 -0.55323642
		 0.55323642 1.69337916 -0.7614646 0.29085356 1.69337916 -0.89515525 0 1.69337916 -0.94122189
		 -0.29085356 1.69337916 -0.89515519 -0.55323631 1.69337916 -0.76146442 -0.76146436 1.69337916 -0.55323625
		 -0.89515501 1.69337916 -0.29085347 -0.94122165 1.69337916 0 -0.89515501 1.69337916 0.29085347
		 -0.7614643 1.69337916 0.55323619 -0.55323619 1.69337916 0.76146424 -0.29085347 1.69337916 0.89515489
		 -2.8050584e-008 1.69337916 0.94122154 0.94122142 1.69337916 0 0.87411493 1.71550238 -0.28401715
		 0.74356663 1.71550238 -0.54023272 0.54023272 1.71550238 -0.74356657 0.28401712 1.71550238 -0.87411487
		 0 1.71550238 -0.91909868 -0.28401712 1.71550238 -0.87411481 -0.5402326 1.71550238 -0.74356639
		 -0.74356633 1.71550238 -0.54023254 -0.87411463 1.71550238 -0.28401706 -0.9190985 1.71550238 0
		 -0.87411463 1.71550238 0.28401706 -0.74356627 1.71550238 0.54023248 -0.54023248 1.71550238 0.74356622
		 -0.28401706 1.71550238 0.87411451 -2.7391263e-008 1.71550238 0.91909838 0.91909826 1.71550238 0
		 0.86060619 1.74337924 -0.27962789 0.73207533 1.74337924 -0.53188384 0.53188384 1.74337924 -0.73207527
		 0.27962786 1.74337924 -0.86060607 0 1.74337924 -0.90489471 -0.27962786 1.74337924 -0.86060601
		 -0.53188372 1.74337924 -0.73207515 -0.7320751 1.74337924 -0.53188366 -0.86060584 1.74337924 -0.27962777
		 -0.90489453 1.74337924 0 -0.86060584 1.74337924 0.27962777 -0.73207504 1.74337924 0.5318836
		 -0.5318836 1.74337924 0.73207498 -0.27962777 1.74337924 0.86060572 -2.6967951e-008 1.74337924 0.90489441
		 0.90489429 1.74337924 0 -0.0027888119 -2.087115288 0.89826292 -0.0027888119 -2.040351629 0.8064844
		 -0.0027888119 -1.96751583 0.7336486 -0.0027888119 -1.87573731 0.68688512 -0.0027888119 -1.77400005 0.67077154
		 -0.0027888119 -1.67226279 0.68688512 -0.0027888119 -1.58048427 0.73364866 -0.0027888119 -1.50764847 0.80648446
		 -0.0027888119 -1.46088505 0.89826298 -0.0027888119 -1.44477141 1.000000119209 -0.0027888119 -1.46088505 1.10173738
		 -0.0027888119 -1.50764859 1.19351578 -0.0027888119 -1.58048439 1.26635158 -0.0027888119 -1.67226279 1.31311512
		 -0.0027888119 -1.77400005 1.32922864 -0.0027888119 -1.87573719 1.313115 -0.0027888119 -1.96751571 1.26635158
		 -0.0027888119 -2.040351391 1.19351578 -0.0027888119 -2.087115049 1.10173738 -0.0027888119 -2.10322857 1.000000119209
		 0.45642692 -1.77400005 1.000000119209 0.45642692 -1.77425706 0.99991667 0.45642692 -1.77421868 0.99984133
		 0.45642692 -1.77415884 0.99978161 0.45642692 -1.7740835 0.99974322 0.45642692 -1.77400005 0.99972999
		 0.45642692 -1.7739166 0.99974322 0.45642692 -1.77384126 0.99978161 0.45642692 -1.77378142 0.99984133
		 0.45642692 -1.77374303 0.99991667 0.45642692 -1.7737298 1.000000119209 0.45642692 -1.77374303 1.000083565712
		 0.45642692 -1.77378142 1.00015890598 0.45642692 -1.77384126 1.00021874905 0.45642692 -1.7739166 1.00025713444
		 0.45642692 -1.77400005 1.00027036667 0.45642692 -1.7740835 1.00025713444 0.45642692 -1.77415884 1.00021874905
		 0.45642692 -1.77421868 1.00015890598 0.45642692 -1.77425706 1.000083565712 0.45642692 -1.7742703 1.000000119209
		 0.85595143 -1.77400005 -0.27811545 0.72811574 -1.77400005 -0.52900702 0.52900702 -1.77400005 -0.72811574
		 0.27811542 -1.77400005 -0.85595131 0 -1.77400005 -0.90000039 -0.27811542 -1.77400005 -0.85595125
		 -0.5290069 -1.77400005 -0.72811556 -0.7281155 -1.77400005 -0.52900684 -0.85595107 -1.77400005 -0.27811536
		 -0.90000021 -1.77400005 0 -0.85595107 -1.77400005 0.27811536 -0.72811544 -1.77400005 0.52900684
		 -0.52900684 -1.77400005 0.72811538 -0.27811536 -1.77400005 0.85595095 -2.6822089e-008 -1.77400005 0.9000001
		 0.89999998 -1.77400005 0 0.86060625 -1.74309838 -0.27962789 0.73207539 -1.74309838 -0.5318839
		 0.5318839 -1.74309838 -0.73207533 0.27962789 -1.74309838 -0.86060613 0 -1.74309838 -0.90489477
		 -0.27962789 -1.74309838 -0.86060607 -0.53188378 -1.74309838 -0.73207521 -0.73207515 -1.74309838 -0.53188372
		 -0.8606059 -1.74309838 -0.2796278 -0.90489459 -1.74309838 0 -0.8606059 -1.74309838 0.2796278
		 -0.7320751 -1.74309838 0.53188366 -0.53188366 -1.74309838 0.73207504 -0.2796278 -1.74309838 0.86060578
		 -2.6967953e-008 -1.74309838 0.90489447 0.90489435 -1.74309838 0 0.87411499 -1.71522152 -0.28401718
		 0.74356663 -1.71522152 -0.54023278 0.54023278 -1.71522152 -0.74356663 0.28401715 -1.71522152 -0.87411493
		 0 -1.71522152 -0.91909873 -0.28401715 -1.71522152 -0.87411487 -0.54023266 -1.71522152 -0.74356645
		 -0.74356639 -1.71522152 -0.5402326 -0.87411469 -1.71522152 -0.28401706 -0.91909856 -1.71522152 0
		 -0.87411469 -1.71522152 0.28401706 -0.74356633 -1.71522152 0.54023254 -0.54023254 -1.71522152 0.74356627
		 -0.28401706 -1.71522152 0.87411457 -2.7391264e-008 -1.71522152 0.91909844 0.91909832 -1.71522152 0
		 0.89515543 -1.69309831 -0.29085362 0.76146466 -1.69309831 -0.55323642 0.55323642 -1.69309831 -0.76146466
		 0.29085359 -1.69309831 -0.89515531 0 -1.69309831 -0.94122195 -0.29085359 -1.69309831 -0.89515525
		 -0.55323631 -1.69309831 -0.76146448 -0.76146442 -1.69309831 -0.55323625;
	setAttr ".vt[498:663]" -0.89515507 -1.69309831 -0.2908535 -0.94122171 -1.69309831 0
		 -0.89515507 -1.69309831 0.2908535 -0.76146436 -1.69309831 0.55323619 -0.55323619 -1.69309831 0.7614643
		 -0.2908535 -1.69309831 0.89515495 -2.8050586e-008 -1.69309831 0.94122159 0.94122148 -1.69309831 0
		 0.92166787 -1.6788944 -0.29946804 0.78401756 -1.6788944 -0.56962204 0.56962204 -1.6788944 -0.7840175
		 0.29946801 -1.6788944 -0.92166775 0 -1.6788944 -0.96909881 -0.29946801 -1.6788944 -0.9216677
		 -0.56962192 -1.6788944 -0.78401732 -0.78401726 -1.6788944 -0.56962186 -0.92166752 -1.6788944 -0.29946792
		 -0.96909857 -1.6788944 0 -0.92166752 -1.6788944 0.29946792 -0.78401721 -1.6788944 0.5696218
		 -0.5696218 -1.6788944 0.78401715 -0.29946792 -1.6788944 0.9216674 -2.8881381e-008 -1.6788944 0.96909845
		 0.96909833 -1.6788944 0 0.95105714 -1.67400002 -0.30901718 0.80901754 -1.67400002 -0.5877856
		 0.5877856 -1.67400002 -0.80901748 0.30901715 -1.67400002 -0.95105702 0 -1.67400002 -1.000000476837
		 -0.30901715 -1.67400002 -0.95105696 -0.58778548 -1.67400002 -0.8090173 -0.80901724 -1.67400002 -0.58778542
		 -0.95105678 -1.67400002 -0.30901706 -1.000000238419 -1.67400002 0 -0.95105678 -1.67400002 0.30901706
		 -0.80901718 -1.67400002 0.58778536 -0.58778536 -1.67400002 0.80901712 -0.30901706 -1.67400002 0.95105666
		 -2.9802322e-008 -1.67400002 1.000000119209 1 -1.67400002 0 0.9804464 -1.6788944 -0.31856632
		 0.83401752 -1.6788944 -0.60594916 0.60594916 -1.6788944 -0.83401746 0.31856629 -1.6788944 -0.98044628
		 0 -1.6788944 -1.030902147 -0.31856629 -1.6788944 -0.98044622 -0.60594904 -1.6788944 -0.83401728
		 -0.83401722 -1.6788944 -0.60594898 -0.98044604 -1.6788944 -0.3185662 -1.030901909 -1.6788944 0
		 -0.98044604 -1.6788944 0.3185662 -0.83401716 -1.6788944 0.60594893 -0.60594893 -1.6788944 0.8340171
		 -0.3185662 -1.6788944 0.98044592 -3.0723264e-008 -1.6788944 1.03090179 1.03090167 -1.6788944 0
		 1.0069588423 -1.69309831 -0.32718074 0.85657042 -1.69309831 -0.62233478 0.62233478 -1.69309831 -0.8565703
		 0.32718071 -1.69309831 -1.0069587231 0 -1.69309831 -1.058779001 -0.32718071 -1.69309831 -1.0069587231
		 -0.62233466 -1.69309831 -0.85657012 -0.85657007 -1.69309831 -0.6223346 -1.0069584846 -1.69309831 -0.32718062
		 -1.058778763 -1.69309831 0 -1.0069584846 -1.69309831 0.32718062 -0.85657001 -1.69309831 0.62233454
		 -0.62233454 -1.69309831 0.85656995 -0.32718062 -1.69309831 1.0069583654 -3.1554059e-008 -1.69309831 1.058778644
		 1.058778524 -1.69309831 0 1.027999282 -1.71522152 -0.33401722 0.87446845 -1.71522152 -0.63533849
		 0.63533849 -1.71522152 -0.87446839 0.33401719 -1.71522152 -1.027999163 0 -1.71522152 -1.080902219
		 -0.33401719 -1.71522152 -1.027999163 -0.63533837 -1.71522152 -0.87446821 -0.87446815 -1.71522152 -0.63533831
		 -1.027998924 -1.71522152 -0.33401707 -1.08090198 -1.71522152 0 -1.027998924 -1.71522152 0.33401707
		 -0.87446809 -1.71522152 0.63533825 -0.63533825 -1.71522152 0.87446803 -0.33401707 -1.71522152 1.027998805
		 -3.2213382e-008 -1.71522152 1.080901861 1.080901742 -1.71522152 0 1.041508079 -1.74309838 -0.33840647
		 0.88595968 -1.74309838 -0.64368731 0.64368731 -1.74309838 -0.88595963 0.33840641 -1.74309838 -1.041507959
		 0 -1.74309838 -1.095106125 -0.33840641 -1.74309838 -1.04150784 -0.64368719 -1.74309838 -0.88595939
		 -0.88595933 -1.74309838 -0.64368713 -1.041507602 -1.74309838 -0.33840632 -1.095105886 -1.74309838 0
		 -1.041507602 -1.74309838 0.33840632 -0.88595927 -1.74309838 0.64368707 -0.64368707 -1.74309838 0.88595921
		 -0.33840632 -1.74309838 1.041507483 -3.2636692e-008 -1.74309838 1.095105767 1.095105648 -1.74309838 0
		 1.046162844 -1.77400005 -0.33991891 0.88991934 -1.77400005 -0.64656419 0.64656419 -1.77400005 -0.88991922
		 0.33991888 -1.77400005 -1.046162724 0 -1.77400005 -1.1000005 -0.33991888 -1.77400005 -1.046162724
		 -0.64656407 -1.77400005 -0.88991904 -0.88991898 -1.77400005 -0.64656401 -1.046162486 -1.77400005 -0.33991876
		 -1.10000026 -1.77400005 0 -1.046162486 -1.77400005 0.33991876 -0.88991892 -1.77400005 0.64656389
		 -0.64656389 -1.77400005 0.88991886 -0.33991876 -1.77400005 1.046162367 -3.2782555e-008 -1.77400005 1.10000014
		 1.10000002 -1.77400005 0 1.041508079 -1.80490172 -0.33840647 0.88595968 -1.80490172 -0.64368731
		 0.64368731 -1.80490172 -0.88595963 0.33840641 -1.80490172 -1.041507959 0 -1.80490172 -1.095106125
		 -0.33840641 -1.80490172 -1.04150784 -0.64368719 -1.80490172 -0.88595939 -0.88595933 -1.80490172 -0.64368713
		 -1.041507602 -1.80490172 -0.33840632 -1.095105886 -1.80490172 0 -1.041507602 -1.80490172 0.33840632
		 -0.88595927 -1.80490172 0.64368707 -0.64368707 -1.80490172 0.88595921 -0.33840632 -1.80490172 1.041507483
		 -3.2636692e-008 -1.80490172 1.095105767 1.095105648 -1.80490172 0 1.027999282 -1.83277857 -0.33401722
		 0.87446845 -1.83277857 -0.63533849 0.63533849 -1.83277857 -0.87446839 0.33401719 -1.83277857 -1.027999163
		 0 -1.83277857 -1.080902219 -0.33401719 -1.83277857 -1.027999163 -0.63533837 -1.83277857 -0.87446821
		 -0.87446815 -1.83277857 -0.63533831 -1.027998924 -1.83277857 -0.33401707 -1.08090198 -1.83277857 0
		 -1.027998924 -1.83277857 0.33401707 -0.87446809 -1.83277857 0.63533825 -0.63533825 -1.83277857 0.87446803
		 -0.33401707 -1.83277857 1.027998805 -3.2213382e-008 -1.83277857 1.080901861 1.080901742 -1.83277857 0
		 1.0069588423 -1.85490179 -0.32718074 0.85657042 -1.85490179 -0.62233478 0.62233478 -1.85490179 -0.8565703
		 0.32718071 -1.85490179 -1.0069587231 0 -1.85490179 -1.058779001 -0.32718071 -1.85490179 -1.0069587231
		 -0.62233466 -1.85490179 -0.85657012 -0.85657007 -1.85490179 -0.6223346 -1.0069584846 -1.85490179 -0.32718062
		 -1.058778763 -1.85490179 0 -1.0069584846 -1.85490179 0.32718062 -0.85657001 -1.85490179 0.62233454
		 -0.62233454 -1.85490179 0.85656995 -0.32718062 -1.85490179 1.0069583654;
	setAttr ".vt[664:761]" -3.1554059e-008 -1.85490179 1.058778644 1.058778524 -1.85490179 0
		 0.9804464 -1.8691057 -0.31856632 0.83401752 -1.8691057 -0.60594916 0.60594916 -1.8691057 -0.83401746
		 0.31856629 -1.8691057 -0.98044628 0 -1.8691057 -1.030902147 -0.31856629 -1.8691057 -0.98044622
		 -0.60594904 -1.8691057 -0.83401728 -0.83401722 -1.8691057 -0.60594898 -0.98044604 -1.8691057 -0.3185662
		 -1.030901909 -1.8691057 0 -0.98044604 -1.8691057 0.3185662 -0.83401716 -1.8691057 0.60594893
		 -0.60594893 -1.8691057 0.8340171 -0.3185662 -1.8691057 0.98044592 -3.0723264e-008 -1.8691057 1.03090179
		 1.03090167 -1.8691057 0 0.95105714 -1.87400007 -0.30901718 0.80901754 -1.87400007 -0.5877856
		 0.5877856 -1.87400007 -0.80901748 0.30901715 -1.87400007 -0.95105702 0 -1.87400007 -1.000000476837
		 -0.30901715 -1.87400007 -0.95105696 -0.58778548 -1.87400007 -0.8090173 -0.80901724 -1.87400007 -0.58778542
		 -0.95105678 -1.87400007 -0.30901706 -1.000000238419 -1.87400007 0 -0.95105678 -1.87400007 0.30901706
		 -0.80901718 -1.87400007 0.58778536 -0.58778536 -1.87400007 0.80901712 -0.30901706 -1.87400007 0.95105666
		 -2.9802322e-008 -1.87400007 1.000000119209 1 -1.87400007 0 0.92166781 -1.8691057 -0.29946801
		 0.7840175 -1.8691057 -0.56962198 0.56962198 -1.8691057 -0.78401744 0.29946798 -1.8691057 -0.9216677
		 0 -1.8691057 -0.96909875 -0.29946798 -1.8691057 -0.92166764 -0.56962192 -1.8691057 -0.78401726
		 -0.78401721 -1.8691057 -0.56962186 -0.92166746 -1.8691057 -0.29946789 -0.96909851 -1.8691057 0
		 -0.92166746 -1.8691057 0.29946789 -0.78401715 -1.8691057 0.5696218 -0.5696218 -1.8691057 0.78401709
		 -0.29946789 -1.8691057 0.92166734 -2.8881379e-008 -1.8691057 0.96909839 0.96909827 -1.8691057 0
		 0.89515537 -1.85490179 -0.29085359 0.76146466 -1.85490179 -0.55323642 0.55323642 -1.85490179 -0.7614646
		 0.29085356 -1.85490179 -0.89515525 0 -1.85490179 -0.94122189 -0.29085356 -1.85490179 -0.89515519
		 -0.55323631 -1.85490179 -0.76146442 -0.76146436 -1.85490179 -0.55323625 -0.89515501 -1.85490179 -0.29085347
		 -0.94122165 -1.85490179 0 -0.89515501 -1.85490179 0.29085347 -0.7614643 -1.85490179 0.55323619
		 -0.55323619 -1.85490179 0.76146424 -0.29085347 -1.85490179 0.89515489 -2.8050584e-008 -1.85490179 0.94122154
		 0.94122142 -1.85490179 0 0.87411493 -1.83277857 -0.28401715 0.74356663 -1.83277857 -0.54023272
		 0.54023272 -1.83277857 -0.74356657 0.28401712 -1.83277857 -0.87411487 0 -1.83277857 -0.91909868
		 -0.28401712 -1.83277857 -0.87411481 -0.5402326 -1.83277857 -0.74356639 -0.74356633 -1.83277857 -0.54023254
		 -0.87411463 -1.83277857 -0.28401706 -0.9190985 -1.83277857 0 -0.87411463 -1.83277857 0.28401706
		 -0.74356627 -1.83277857 0.54023248 -0.54023248 -1.83277857 0.74356622 -0.28401706 -1.83277857 0.87411451
		 -2.7391263e-008 -1.83277857 0.91909838 0.91909826 -1.83277857 0 0.86060619 -1.80490172 -0.27962789
		 0.73207533 -1.80490172 -0.53188384 0.53188384 -1.80490172 -0.73207527 0.27962786 -1.80490172 -0.86060607
		 0 -1.80490172 -0.90489471 -0.27962786 -1.80490172 -0.86060601 -0.53188372 -1.80490172 -0.73207515
		 -0.7320751 -1.80490172 -0.53188366 -0.86060584 -1.80490172 -0.27962777 -0.90489453 -1.80490172 0
		 -0.86060584 -1.80490172 0.27962777 -0.73207504 -1.80490172 0.5318836 -0.5318836 -1.80490172 0.73207498
		 -0.27962777 -1.80490172 0.86060572 -2.6967951e-008 -1.80490172 0.90489441 0.90489429 -1.80490172 0;
	setAttr -s 1494 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0
		 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0
		 56 57 0 57 58 0 58 59 0 59 40 0 40 61 1 41 62 1 42 63 1 43 64 1 44 65 1 45 66 1 46 67 1
		 47 68 1 48 69 1 49 70 1 50 71 1 51 72 1 52 73 1 53 74 1 54 75 1 55 76 1 56 77 1 57 78 1
		 58 79 1 59 80 1 61 60 0 62 60 0 63 60 0 64 60 0 65 60 0 66 60 0 67 60 0 68 60 0 69 60 0
		 70 60 0 71 60 0 72 60 0 73 60 0 74 60 0 75 60 0 76 60 0 77 60 0 78 60 0 79 60 0 80 60 0
		 62 61 0 63 62 0 64 63 0 65 64 0 66 65 0 67 66 0 68 67 0 69 68 0 70 69 0 71 70 0 72 71 0
		 73 72 0 74 73 0 75 74 0 76 75 0 77 76 0 78 77 0 79 78 0 80 79 0 61 80 0 81 82 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 96 81 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1
		 104 105 1 105 106 1 106 107 1 107 108 1;
	setAttr ".ed[166:331]" 108 109 1 109 110 1 110 111 1 112 97 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 128 113 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 143 1
		 144 129 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 160 145 1 161 162 1 162 163 1
		 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 176 161 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 192 177 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 208 193 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 224 209 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1
		 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1
		 240 225 1 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 256 241 1 257 258 1 258 259 1
		 259 260 1 260 261 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1
		 268 269 1 269 270 1 270 271 1 272 257 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1
		 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1;
	setAttr ".ed[332:497]" 285 286 1 286 287 1 288 273 1 289 290 1 290 291 1 291 292 1
		 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1
		 301 302 1 302 303 1 304 289 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1
		 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 320 305 1
		 321 322 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 336 321 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 351 1 352 337 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1
		 359 360 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 368 353 1
		 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1 377 378 1
		 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1 384 369 1 385 386 1 386 387 1 387 388 1
		 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1
		 397 398 1 398 399 1 400 385 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1
		 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 0
		 96 112 0 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1
		 105 121 1 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1 111 127 0 112 128 0 113 129 1
		 114 130 1 115 131 1 116 132 1 117 133 1 118 134 1 119 135 1 120 136 1 121 137 1 122 138 1
		 123 139 1 124 140 1 125 141 1 126 142 1 127 143 0 128 144 0 129 145 1 130 146 1 131 147 1
		 132 148 1 133 149 1 134 150 1 135 151 1 136 152 1 137 153 1 138 154 1;
	setAttr ".ed[498:663]" 139 155 1 140 156 1 141 157 1 142 158 1 143 159 0 144 160 0
		 145 161 1 146 162 1 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1 153 169 1
		 154 170 1 155 171 1 156 172 1 157 173 1 158 174 1 159 175 0 160 176 0 161 177 1 162 178 1
		 163 179 1 164 180 1 165 181 1 166 182 1 167 183 1 168 184 1 169 185 1 170 186 1 171 187 1
		 172 188 1 173 189 1 174 190 1 175 191 0 176 192 0 177 193 1 178 194 1 179 195 1 180 196 1
		 181 197 1 182 198 1 183 199 1 184 200 1 185 201 1 186 202 1 187 203 1 188 204 1 189 205 1
		 190 206 1 191 207 0 192 208 0 193 209 1 194 210 1 195 211 1 196 212 1 197 213 1 198 214 1
		 199 215 1 200 216 1 201 217 1 202 218 1 203 219 1 204 220 1 205 221 1 206 222 1 207 223 0
		 208 224 0 209 225 1 210 226 1 211 227 1 212 228 1 213 229 1 214 230 1 215 231 1 216 232 1
		 217 233 1 218 234 1 219 235 1 220 236 1 221 237 1 222 238 1 223 239 0 224 240 0 225 241 1
		 226 242 1 227 243 1 228 244 1 229 245 1 230 246 1 231 247 1 232 248 1 233 249 1 234 250 1
		 235 251 1 236 252 1 237 253 1 238 254 1 239 255 0 240 256 0 241 257 1 242 258 1 243 259 1
		 244 260 1 245 261 1 246 262 1 247 263 1 248 264 1 249 265 1 250 266 1 251 267 1 252 268 1
		 253 269 1 254 270 1 255 271 0 256 272 0 257 273 1 258 274 1 259 275 1 260 276 1 261 277 1
		 262 278 1 263 279 1 264 280 1 265 281 1 266 282 1 267 283 1 268 284 1 269 285 1 270 286 1
		 271 287 0 272 288 0 273 289 1 274 290 1 275 291 1 276 292 1 277 293 1 278 294 1 279 295 1
		 280 296 1 281 297 1 282 298 1 283 299 1 284 300 1 285 301 1 286 302 1 287 303 0 288 304 0
		 289 305 1 290 306 1 291 307 1 292 308 1 293 309 1 294 310 1 295 311 1 296 312 1 297 313 1
		 298 314 1 299 315 1 300 316 1 301 317 1 302 318 1 303 319 0 304 320 0;
	setAttr ".ed[664:829]" 305 321 1 306 322 1 307 323 1 308 324 1 309 325 1 310 326 1
		 311 327 1 312 328 1 313 329 1 314 330 1 315 331 1 316 332 1 317 333 1 318 334 1 319 335 0
		 320 336 0 321 337 1 322 338 1 323 339 1 324 340 1 325 341 1 326 342 1 327 343 1 328 344 1
		 329 345 1 330 346 1 331 347 1 332 348 1 333 349 1 334 350 1 335 351 0 336 352 0 337 353 1
		 338 354 1 339 355 1 340 356 1 341 357 1 342 358 1 343 359 1 344 360 1 345 361 1 346 362 1
		 347 363 1 348 364 1 349 365 1 350 366 1 351 367 0 352 368 0 353 369 1 354 370 1 355 371 1
		 356 372 1 357 373 1 358 374 1 359 375 1 360 376 1 361 377 1 362 378 1 363 379 1 364 380 1
		 365 381 1 366 382 1 367 383 0 368 384 0 369 385 1 370 386 1 371 387 1 372 388 1 373 389 1
		 374 390 1 375 391 1 376 392 1 377 393 1 378 394 1 379 395 1 380 396 1 381 397 1 382 398 1
		 383 399 0 384 400 0 385 81 1 386 82 1 387 83 1 388 84 1 389 85 1 390 86 1 391 87 1
		 392 88 1 393 89 1 394 90 1 395 91 1 396 92 1 397 93 1 398 94 1 399 95 0 400 96 0
		 160 352 0 336 176 0 320 192 0 304 208 0 288 224 0 272 240 0 144 368 0 128 384 0 112 400 0
		 191 303 0 319 175 0 335 159 0 207 287 0 223 271 0 351 143 0 367 127 0 383 111 0 401 402 0
		 402 403 0 403 404 0 404 405 0 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0 410 411 0
		 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0 419 420 0
		 420 401 0 401 422 1 402 423 1 403 424 1 404 425 1 405 426 1 406 427 1 407 428 1 408 429 1
		 409 430 1 410 431 1 411 432 1 412 433 1 413 434 1 414 435 1 415 436 1 416 437 1 417 438 1
		 418 439 1 419 440 1 420 441 1 422 421 0 423 421 0 424 421 0 425 421 0 426 421 0 427 421 0
		 428 421 0 429 421 0 430 421 0 431 421 0 432 421 0 433 421 0 434 421 0;
	setAttr ".ed[830:995]" 435 421 0 436 421 0 437 421 0 438 421 0 439 421 0 440 421 0
		 441 421 0 423 422 0 424 423 0 425 424 0 426 425 0 427 426 0 428 427 0 429 428 0 430 429 0
		 431 430 0 432 431 0 433 432 0 434 433 0 435 434 0 436 435 0 437 436 0 438 437 0 439 438 0
		 440 439 0 441 440 0 422 441 0 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1
		 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 457 442 1
		 458 459 1 459 460 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 473 458 1 474 475 1 475 476 1 476 477 1
		 477 478 1 478 479 1 479 480 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1
		 486 487 1 487 488 1 489 474 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1
		 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1 502 503 1 503 504 1 505 490 1
		 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1
		 515 516 1 516 517 1 517 518 1 518 519 1 519 520 1 521 506 1 522 523 1 523 524 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 537 522 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1
		 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1 553 538 1
		 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1 561 562 1 562 563 1
		 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 569 554 1 570 571 1 571 572 1 572 573 1
		 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1
		 582 583 1 583 584 1 585 570 1 586 587 1 587 588 1 588 589 1 589 590 1;
	setAttr ".ed[996:1161]" 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1
		 596 597 1 597 598 1 598 599 1 599 600 1 601 586 1 602 603 1 603 604 1 604 605 1 605 606 1
		 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1
		 615 616 1 617 602 1 618 619 1 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1
		 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1 630 631 1 631 632 1 633 618 1 634 635 1
		 635 636 1 636 637 1 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 648 1 649 634 1 650 651 1 651 652 1 652 653 1 653 654 1
		 654 655 1 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1
		 663 664 1 665 650 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 681 666 1 682 683 1
		 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1 691 692 1
		 692 693 1 693 694 1 694 695 1 695 696 1 697 682 1 698 699 1 699 700 1 700 701 1 701 702 1
		 702 703 1 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 711 712 1 713 698 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 727 728 1 729 714 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 745 730 1 746 747 1 747 748 1 748 749 1 749 750 1
		 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1
		 759 760 1 761 746 1 442 458 1 443 459 1 444 460 1 445 461 1 446 462 1;
	setAttr ".ed[1162:1327]" 447 463 1 448 464 1 449 465 1 450 466 1 451 467 1 452 468 1
		 453 469 1 454 470 1 455 471 1 456 472 0 457 473 0 458 474 1 459 475 1 460 476 1 461 477 1
		 462 478 1 463 479 1 464 480 1 465 481 1 466 482 1 467 483 1 468 484 1 469 485 1 470 486 1
		 471 487 1 472 488 0 473 489 0 474 490 1 475 491 1 476 492 1 477 493 1 478 494 1 479 495 1
		 480 496 1 481 497 1 482 498 1 483 499 1 484 500 1 485 501 1 486 502 1 487 503 1 488 504 0
		 489 505 0 490 506 1 491 507 1 492 508 1 493 509 1 494 510 1 495 511 1 496 512 1 497 513 1
		 498 514 1 499 515 1 500 516 1 501 517 1 502 518 1 503 519 1 504 520 0 505 521 0 506 522 1
		 507 523 1 508 524 1 509 525 1 510 526 1 511 527 1 512 528 1 513 529 1 514 530 1 515 531 1
		 516 532 1 517 533 1 518 534 1 519 535 1 520 536 0 521 537 0 522 538 1 523 539 1 524 540 1
		 525 541 1 526 542 1 527 543 1 528 544 1 529 545 1 530 546 1 531 547 1 532 548 1 533 549 1
		 534 550 1 535 551 1 536 552 0 537 553 0 538 554 1 539 555 1 540 556 1 541 557 1 542 558 1
		 543 559 1 544 560 1 545 561 1 546 562 1 547 563 1 548 564 1 549 565 1 550 566 1 551 567 1
		 552 568 0 553 569 0 554 570 1 555 571 1 556 572 1 557 573 1 558 574 1 559 575 1 560 576 1
		 561 577 1 562 578 1 563 579 1 564 580 1 565 581 1 566 582 1 567 583 1 568 584 0 569 585 0
		 570 586 1 571 587 1 572 588 1 573 589 1 574 590 1 575 591 1 576 592 1 577 593 1 578 594 1
		 579 595 1 580 596 1 581 597 1 582 598 1 583 599 1 584 600 0 585 601 0 586 602 1 587 603 1
		 588 604 1 589 605 1 590 606 1 591 607 1 592 608 1 593 609 1 594 610 1 595 611 1 596 612 1
		 597 613 1 598 614 1 599 615 1 600 616 0 601 617 0 602 618 1 603 619 1 604 620 1 605 621 1
		 606 622 1 607 623 1 608 624 1 609 625 1 610 626 1 611 627 1 612 628 1;
	setAttr ".ed[1328:1493]" 613 629 1 614 630 1 615 631 1 616 632 0 617 633 0 618 634 1
		 619 635 1 620 636 1 621 637 1 622 638 1 623 639 1 624 640 1 625 641 1 626 642 1 627 643 1
		 628 644 1 629 645 1 630 646 1 631 647 1 632 648 0 633 649 0 634 650 1 635 651 1 636 652 1
		 637 653 1 638 654 1 639 655 1 640 656 1 641 657 1 642 658 1 643 659 1 644 660 1 645 661 1
		 646 662 1 647 663 1 648 664 0 649 665 0 650 666 1 651 667 1 652 668 1 653 669 1 654 670 1
		 655 671 1 656 672 1 657 673 1 658 674 1 659 675 1 660 676 1 661 677 1 662 678 1 663 679 1
		 664 680 0 665 681 0 666 682 1 667 683 1 668 684 1 669 685 1 670 686 1 671 687 1 672 688 1
		 673 689 1 674 690 1 675 691 1 676 692 1 677 693 1 678 694 1 679 695 1 680 696 0 681 697 0
		 682 698 1 683 699 1 684 700 1 685 701 1 686 702 1 687 703 1 688 704 1 689 705 1 690 706 1
		 691 707 1 692 708 1 693 709 1 694 710 1 695 711 1 696 712 0 697 713 0 698 714 1 699 715 1
		 700 716 1 701 717 1 702 718 1 703 719 1 704 720 1 705 721 1 706 722 1 707 723 1 708 724 1
		 709 725 1 710 726 1 711 727 1 712 728 0 713 729 0 714 730 1 715 731 1 716 732 1 717 733 1
		 718 734 1 719 735 1 720 736 1 721 737 1 722 738 1 723 739 1 724 740 1 725 741 1 726 742 1
		 727 743 1 728 744 0 729 745 0 730 746 1 731 747 1 732 748 1 733 749 1 734 750 1 735 751 1
		 736 752 1 737 753 1 738 754 1 739 755 1 740 756 1 741 757 1 742 758 1 743 759 1 744 760 0
		 745 761 0 746 442 1 747 443 1 748 444 1 749 445 1 750 446 1 751 447 1 752 448 1 753 449 1
		 754 450 1 755 451 1 756 452 1 757 453 1 758 454 1 759 455 1 760 456 0 761 457 0 521 713 0
		 697 537 0 681 553 0 665 569 0 649 585 0 633 601 0 505 729 0 489 745 0 473 761 0 552 664 0
		 680 536 0 696 520 0 568 648 0 584 632 0 712 504 0 728 488 0 744 472 0;
	setAttr -s 742 -ch 2988 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81
		f 20 -80 -79 -78 -77 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61
		mu 0 20 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101
		f 4 60 81 120 -81
		mu 0 4 102 103 104 105
		f 4 61 82 121 -82
		mu 0 4 103 106 107 104
		f 4 62 83 122 -83
		mu 0 4 106 108 109 107
		f 4 63 84 123 -84
		mu 0 4 108 110 111 109
		f 4 64 85 124 -85
		mu 0 4 110 112 113 111
		f 4 65 86 125 -86
		mu 0 4 112 114 115 113
		f 4 66 87 126 -87
		mu 0 4 114 116 117 115
		f 4 67 88 127 -88
		mu 0 4 116 118 119 117
		f 4 68 89 128 -89
		mu 0 4 118 120 121 119
		f 4 69 90 129 -90
		mu 0 4 120 122 123 121
		f 4 70 91 130 -91
		mu 0 4 122 124 125 123
		f 4 71 92 131 -92
		mu 0 4 124 126 127 125
		f 4 72 93 132 -93
		mu 0 4 126 128 129 127
		f 4 73 94 133 -94
		mu 0 4 128 130 131 129
		f 4 74 95 134 -95
		mu 0 4 130 132 133 131
		f 4 75 96 135 -96
		mu 0 4 132 134 135 133
		f 4 76 97 136 -97
		mu 0 4 134 136 137 135
		f 4 77 98 137 -98
		mu 0 4 136 138 139 137
		f 4 78 99 138 -99
		mu 0 4 138 140 141 139
		f 4 79 80 139 -100
		mu 0 4 140 142 143 141
		f 3 -121 101 -101
		mu 0 3 105 104 144
		f 3 -122 102 -102
		mu 0 3 104 107 144
		f 3 -123 103 -103
		mu 0 3 107 109 144
		f 3 -124 104 -104
		mu 0 3 109 111 144
		f 3 -125 105 -105
		mu 0 3 111 113 144
		f 3 -126 106 -106
		mu 0 3 113 115 144
		f 3 -127 107 -107
		mu 0 3 115 117 144
		f 3 -128 108 -108
		mu 0 3 117 119 144
		f 3 -129 109 -109
		mu 0 3 119 121 144
		f 3 -130 110 -110
		mu 0 3 121 123 144
		f 3 -131 111 -111
		mu 0 3 123 125 144
		f 3 -132 112 -112
		mu 0 3 125 127 144
		f 3 -133 113 -113
		mu 0 3 127 129 144
		f 3 -134 114 -114
		mu 0 3 129 131 144
		f 3 -135 115 -115
		mu 0 3 131 133 144
		f 3 -136 116 -116
		mu 0 3 133 135 144
		f 3 -137 117 -117
		mu 0 3 135 137 144
		f 3 -138 118 -118
		mu 0 3 137 139 144
		f 3 -139 119 -119
		mu 0 3 139 141 144
		f 3 -140 100 -120
		mu 0 3 141 143 144
		f 4 -141 440 155 -442
		mu 0 4 145 146 147 148
		f 4 -142 441 156 -443
		mu 0 4 149 145 148 150
		f 4 -143 442 157 -444
		mu 0 4 151 149 150 152
		f 4 -144 443 158 -445
		mu 0 4 153 151 152 154
		f 4 -145 444 159 -446
		mu 0 4 155 153 154 156
		f 4 -146 445 160 -447
		mu 0 4 157 155 156 158
		f 4 -147 446 161 -448
		mu 0 4 159 157 158 160
		f 4 -148 447 162 -449
		mu 0 4 161 159 160 162
		f 4 -149 448 163 -450
		mu 0 4 163 161 162 164
		f 4 -150 449 164 -451
		mu 0 4 165 163 164 166
		f 4 -151 450 165 -452
		mu 0 4 167 165 166 168
		f 4 -152 451 166 -453
		mu 0 4 169 167 168 170
		f 4 -153 452 167 -454
		mu 0 4 171 169 170 172
		f 4 -154 453 168 -455
		mu 0 4 173 171 172 174
		f 4 -155 455 169 -441
		mu 0 4 175 176 177 178
		f 4 -156 456 170 -458
		mu 0 4 148 147 179 180
		f 4 -157 457 171 -459
		mu 0 4 150 148 180 181
		f 4 -158 458 172 -460
		mu 0 4 152 150 181 182
		f 4 -159 459 173 -461
		mu 0 4 154 152 182 183
		f 4 -160 460 174 -462
		mu 0 4 156 154 183 184
		f 4 -161 461 175 -463
		mu 0 4 158 156 184 185
		f 4 -162 462 176 -464
		mu 0 4 160 158 185 186
		f 4 -163 463 177 -465
		mu 0 4 162 160 186 187
		f 4 -164 464 178 -466
		mu 0 4 164 162 187 188
		f 4 -165 465 179 -467
		mu 0 4 166 164 188 189
		f 4 -166 466 180 -468
		mu 0 4 168 166 189 190
		f 4 -167 467 181 -469
		mu 0 4 170 168 190 191
		f 4 -168 468 182 -470
		mu 0 4 172 170 191 192
		f 4 -169 469 183 -471
		mu 0 4 174 172 192 193
		f 4 -170 471 184 -457
		mu 0 4 178 177 194 195
		f 4 -171 472 185 -474
		mu 0 4 180 179 196 197
		f 4 -172 473 186 -475
		mu 0 4 181 180 197 198
		f 4 -173 474 187 -476
		mu 0 4 182 181 198 199
		f 4 -174 475 188 -477
		mu 0 4 183 182 199 200
		f 4 -175 476 189 -478
		mu 0 4 184 183 200 201
		f 4 -176 477 190 -479
		mu 0 4 185 184 201 202
		f 4 -177 478 191 -480
		mu 0 4 186 185 202 203
		f 4 -178 479 192 -481
		mu 0 4 187 186 203 204
		f 4 -179 480 193 -482
		mu 0 4 188 187 204 205
		f 4 -180 481 194 -483
		mu 0 4 189 188 205 206
		f 4 -181 482 195 -484
		mu 0 4 190 189 206 207
		f 4 -182 483 196 -485
		mu 0 4 191 190 207 208
		f 4 -183 484 197 -486
		mu 0 4 192 191 208 209
		f 4 -184 485 198 -487
		mu 0 4 193 192 209 210
		f 4 -185 487 199 -473
		mu 0 4 195 194 211 212
		f 4 -186 488 200 -490
		mu 0 4 197 196 213 214
		f 4 -187 489 201 -491
		mu 0 4 198 197 214 215
		f 4 -188 490 202 -492
		mu 0 4 199 198 215 216
		f 4 -189 491 203 -493
		mu 0 4 200 199 216 217
		f 4 -190 492 204 -494
		mu 0 4 201 200 217 218
		f 4 -191 493 205 -495
		mu 0 4 202 201 218 219
		f 4 -192 494 206 -496
		mu 0 4 203 202 219 220
		f 4 -193 495 207 -497
		mu 0 4 204 203 220 221
		f 4 -194 496 208 -498
		mu 0 4 205 204 221 222
		f 4 -195 497 209 -499
		mu 0 4 206 205 222 223
		f 4 -196 498 210 -500
		mu 0 4 207 206 223 224
		f 4 -197 499 211 -501
		mu 0 4 208 207 224 225
		f 4 -198 500 212 -502
		mu 0 4 209 208 225 226
		f 4 -199 501 213 -503
		mu 0 4 210 209 226 227
		f 4 -200 503 214 -489
		mu 0 4 212 211 228 229
		f 4 -201 504 215 -506
		mu 0 4 214 213 230 231
		f 4 -202 505 216 -507
		mu 0 4 215 214 231 232
		f 4 -203 506 217 -508
		mu 0 4 216 215 232 233
		f 4 -204 507 218 -509
		mu 0 4 217 216 233 234
		f 4 -205 508 219 -510
		mu 0 4 218 217 234 235
		f 4 -206 509 220 -511
		mu 0 4 219 218 235 236
		f 4 -207 510 221 -512
		mu 0 4 220 219 236 237
		f 4 -208 511 222 -513
		mu 0 4 221 220 237 238
		f 4 -209 512 223 -514
		mu 0 4 222 221 238 239
		f 4 -210 513 224 -515
		mu 0 4 223 222 239 240
		f 4 -211 514 225 -516
		mu 0 4 224 223 240 241
		f 4 -212 515 226 -517
		mu 0 4 225 224 241 242
		f 4 -213 516 227 -518
		mu 0 4 226 225 242 243
		f 4 -214 517 228 -519
		mu 0 4 227 226 243 244
		f 4 -215 519 229 -505
		mu 0 4 229 228 245 246
		f 4 -216 520 230 -522
		mu 0 4 231 230 247 248
		f 4 -217 521 231 -523
		mu 0 4 232 231 248 249
		f 4 -218 522 232 -524
		mu 0 4 233 232 249 250
		f 4 -219 523 233 -525
		mu 0 4 234 233 250 251
		f 4 -220 524 234 -526
		mu 0 4 235 234 251 252
		f 4 -221 525 235 -527
		mu 0 4 236 235 252 253
		f 4 -222 526 236 -528
		mu 0 4 237 236 253 254
		f 4 -223 527 237 -529
		mu 0 4 238 237 254 255
		f 4 -224 528 238 -530
		mu 0 4 239 238 255 256
		f 4 -225 529 239 -531
		mu 0 4 240 239 256 257
		f 4 -226 530 240 -532
		mu 0 4 241 240 257 258
		f 4 -227 531 241 -533
		mu 0 4 242 241 258 259
		f 4 -228 532 242 -534
		mu 0 4 243 242 259 260
		f 4 -229 533 243 -535
		mu 0 4 244 243 260 261
		f 4 -230 535 244 -521
		mu 0 4 246 245 262 263
		f 4 -231 536 245 -538
		mu 0 4 248 247 264 265
		f 4 -232 537 246 -539
		mu 0 4 249 248 265 266
		f 4 -233 538 247 -540
		mu 0 4 250 249 266 267
		f 4 -234 539 248 -541
		mu 0 4 251 250 267 268
		f 4 -235 540 249 -542
		mu 0 4 252 251 268 269
		f 4 -236 541 250 -543
		mu 0 4 253 252 269 270
		f 4 -237 542 251 -544
		mu 0 4 254 253 270 271
		f 4 -238 543 252 -545
		mu 0 4 255 254 271 272
		f 4 -239 544 253 -546
		mu 0 4 256 255 272 273
		f 4 -240 545 254 -547
		mu 0 4 257 256 273 274
		f 4 -241 546 255 -548
		mu 0 4 258 257 274 275
		f 4 -242 547 256 -549
		mu 0 4 259 258 275 276
		f 4 -243 548 257 -550
		mu 0 4 260 259 276 277
		f 4 -244 549 258 -551
		mu 0 4 261 260 277 278
		f 4 -245 551 259 -537
		mu 0 4 263 262 279 280
		f 4 -246 552 260 -554
		mu 0 4 265 264 281 282
		f 4 -247 553 261 -555
		mu 0 4 266 265 282 283
		f 4 -248 554 262 -556
		mu 0 4 267 266 283 284
		f 4 -249 555 263 -557
		mu 0 4 268 267 284 285
		f 4 -250 556 264 -558
		mu 0 4 269 268 285 286
		f 4 -251 557 265 -559
		mu 0 4 270 269 286 287
		f 4 -252 558 266 -560
		mu 0 4 271 270 287 288
		f 4 -253 559 267 -561
		mu 0 4 272 271 288 289
		f 4 -254 560 268 -562
		mu 0 4 273 272 289 290
		f 4 -255 561 269 -563
		mu 0 4 274 273 290 291
		f 4 -256 562 270 -564
		mu 0 4 275 274 291 292
		f 4 -257 563 271 -565
		mu 0 4 276 275 292 293
		f 4 -258 564 272 -566
		mu 0 4 277 276 293 294
		f 4 -259 565 273 -567
		mu 0 4 278 277 294 295
		f 4 -260 567 274 -553
		mu 0 4 280 279 296 297
		f 4 -261 568 275 -570
		mu 0 4 282 281 298 299
		f 4 -262 569 276 -571
		mu 0 4 283 282 299 300
		f 4 -263 570 277 -572
		mu 0 4 284 283 300 301
		f 4 -264 571 278 -573
		mu 0 4 285 284 301 302
		f 4 -265 572 279 -574
		mu 0 4 286 285 302 303
		f 4 -266 573 280 -575
		mu 0 4 287 286 303 304
		f 4 -267 574 281 -576
		mu 0 4 288 287 304 305
		f 4 -268 575 282 -577
		mu 0 4 289 288 305 306
		f 4 -269 576 283 -578
		mu 0 4 290 289 306 307
		f 4 -270 577 284 -579
		mu 0 4 291 290 307 308
		f 4 -271 578 285 -580
		mu 0 4 292 291 308 309
		f 4 -272 579 286 -581
		mu 0 4 293 292 309 310
		f 4 -273 580 287 -582
		mu 0 4 294 293 310 311
		f 4 -274 581 288 -583
		mu 0 4 295 294 311 312
		f 4 -275 583 289 -569
		mu 0 4 297 296 313 314
		f 4 -276 584 290 -586
		mu 0 4 299 298 315 316
		f 4 -277 585 291 -587
		mu 0 4 300 299 316 317
		f 4 -278 586 292 -588
		mu 0 4 301 300 317 318
		f 4 -279 587 293 -589
		mu 0 4 302 301 318 319
		f 4 -280 588 294 -590
		mu 0 4 303 302 319 320
		f 4 -281 589 295 -591
		mu 0 4 304 303 320 321
		f 4 -282 590 296 -592
		mu 0 4 305 304 321 322
		f 4 -283 591 297 -593
		mu 0 4 306 305 322 323
		f 4 -284 592 298 -594
		mu 0 4 307 306 323 324
		f 4 -285 593 299 -595
		mu 0 4 308 307 324 325
		f 4 -286 594 300 -596
		mu 0 4 309 308 325 326
		f 4 -287 595 301 -597
		mu 0 4 310 309 326 327
		f 4 -288 596 302 -598
		mu 0 4 311 310 327 328
		f 4 -289 597 303 -599
		mu 0 4 312 311 328 329
		f 4 -290 599 304 -585
		mu 0 4 314 313 330 331
		f 4 -291 600 305 -602
		mu 0 4 316 315 332 333
		f 4 -292 601 306 -603
		mu 0 4 317 316 333 334
		f 4 -293 602 307 -604
		mu 0 4 318 317 334 335
		f 4 -294 603 308 -605
		mu 0 4 319 318 335 336
		f 4 -295 604 309 -606
		mu 0 4 320 319 336 337
		f 4 -296 605 310 -607
		mu 0 4 321 320 337 338
		f 4 -297 606 311 -608
		mu 0 4 322 321 338 339
		f 4 -298 607 312 -609
		mu 0 4 323 322 339 340
		f 4 -299 608 313 -610
		mu 0 4 324 323 340 341
		f 4 -300 609 314 -611
		mu 0 4 325 324 341 342
		f 4 -301 610 315 -612
		mu 0 4 326 325 342 343
		f 4 -302 611 316 -613
		mu 0 4 327 326 343 344
		f 4 -303 612 317 -614
		mu 0 4 328 327 344 345
		f 4 -304 613 318 -615
		mu 0 4 329 328 345 346
		f 4 -305 615 319 -601
		mu 0 4 331 330 347 348
		f 4 -306 616 320 -618
		mu 0 4 333 332 349 350
		f 4 -307 617 321 -619
		mu 0 4 334 333 350 351
		f 4 -308 618 322 -620
		mu 0 4 335 334 351 352
		f 4 -309 619 323 -621
		mu 0 4 336 335 352 353
		f 4 -310 620 324 -622
		mu 0 4 337 336 353 354
		f 4 -311 621 325 -623
		mu 0 4 338 337 354 355
		f 4 -312 622 326 -624
		mu 0 4 339 338 355 356
		f 4 -313 623 327 -625
		mu 0 4 340 339 356 357
		f 4 -314 624 328 -626
		mu 0 4 341 340 357 358
		f 4 -315 625 329 -627
		mu 0 4 342 341 358 359
		f 4 -316 626 330 -628
		mu 0 4 343 342 359 360
		f 4 -317 627 331 -629
		mu 0 4 344 343 360 361
		f 4 -318 628 332 -630
		mu 0 4 345 344 361 362
		f 4 -319 629 333 -631
		mu 0 4 346 345 362 363
		f 4 -320 631 334 -617
		mu 0 4 348 347 364 365
		f 4 -321 632 335 -634
		mu 0 4 350 349 366 367
		f 4 -322 633 336 -635
		mu 0 4 351 350 367 368
		f 4 -323 634 337 -636
		mu 0 4 352 351 368 369
		f 4 -324 635 338 -637
		mu 0 4 353 352 369 370
		f 4 -325 636 339 -638
		mu 0 4 354 353 370 371
		f 4 -326 637 340 -639
		mu 0 4 355 354 371 372
		f 4 -327 638 341 -640
		mu 0 4 356 355 372 373
		f 4 -328 639 342 -641
		mu 0 4 357 356 373 374
		f 4 -329 640 343 -642
		mu 0 4 358 357 374 375
		f 4 -330 641 344 -643
		mu 0 4 359 358 375 376
		f 4 -331 642 345 -644
		mu 0 4 360 359 376 377
		f 4 -332 643 346 -645
		mu 0 4 361 360 377 378
		f 4 -333 644 347 -646
		mu 0 4 362 361 378 379
		f 4 -334 645 348 -647
		mu 0 4 363 362 379 380
		f 4 -335 647 349 -633
		mu 0 4 365 364 381 382
		f 4 -336 648 350 -650
		mu 0 4 367 366 383 384
		f 4 -337 649 351 -651
		mu 0 4 368 367 384 385
		f 4 -338 650 352 -652
		mu 0 4 369 368 385 386
		f 4 -339 651 353 -653
		mu 0 4 370 369 386 387
		f 4 -340 652 354 -654
		mu 0 4 371 370 387 388
		f 4 -341 653 355 -655
		mu 0 4 372 371 388 389
		f 4 -342 654 356 -656
		mu 0 4 373 372 389 390
		f 4 -343 655 357 -657
		mu 0 4 374 373 390 391
		f 4 -344 656 358 -658
		mu 0 4 375 374 391 392
		f 4 -345 657 359 -659
		mu 0 4 376 375 392 393
		f 4 -346 658 360 -660
		mu 0 4 377 376 393 394
		f 4 -347 659 361 -661
		mu 0 4 378 377 394 395
		f 4 -348 660 362 -662
		mu 0 4 379 378 395 396
		f 4 -349 661 363 -663
		mu 0 4 380 379 396 397
		f 4 -350 663 364 -649
		mu 0 4 382 381 398 399
		f 4 -351 664 365 -666
		mu 0 4 384 383 400 401
		f 4 -352 665 366 -667
		mu 0 4 385 384 401 402
		f 4 -353 666 367 -668
		mu 0 4 386 385 402 403
		f 4 -354 667 368 -669
		mu 0 4 387 386 403 404
		f 4 -355 668 369 -670
		mu 0 4 388 387 404 405
		f 4 -356 669 370 -671
		mu 0 4 389 388 405 406
		f 4 -357 670 371 -672
		mu 0 4 390 389 406 407
		f 4 -358 671 372 -673
		mu 0 4 391 390 407 408
		f 4 -359 672 373 -674
		mu 0 4 392 391 408 409
		f 4 -360 673 374 -675
		mu 0 4 393 392 409 410
		f 4 -361 674 375 -676
		mu 0 4 394 393 410 411
		f 4 -362 675 376 -677
		mu 0 4 395 394 411 412
		f 4 -363 676 377 -678
		mu 0 4 396 395 412 413
		f 4 -364 677 378 -679
		mu 0 4 397 396 413 414
		f 4 -365 679 379 -665
		mu 0 4 399 398 415 416
		f 4 -366 680 380 -682
		mu 0 4 401 400 417 418
		f 4 -367 681 381 -683
		mu 0 4 402 401 418 419
		f 4 -368 682 382 -684
		mu 0 4 403 402 419 420
		f 4 -369 683 383 -685
		mu 0 4 404 403 420 421
		f 4 -370 684 384 -686
		mu 0 4 405 404 421 422
		f 4 -371 685 385 -687
		mu 0 4 406 405 422 423
		f 4 -372 686 386 -688
		mu 0 4 407 406 423 424
		f 4 -373 687 387 -689
		mu 0 4 408 407 424 425
		f 4 -374 688 388 -690
		mu 0 4 409 408 425 426
		f 4 -375 689 389 -691
		mu 0 4 410 409 426 427
		f 4 -376 690 390 -692
		mu 0 4 411 410 427 428
		f 4 -377 691 391 -693
		mu 0 4 412 411 428 429
		f 4 -378 692 392 -694
		mu 0 4 413 412 429 430
		f 4 -379 693 393 -695
		mu 0 4 414 413 430 431
		f 4 -380 695 394 -681
		mu 0 4 416 415 432 433
		f 4 -381 696 395 -698
		mu 0 4 418 417 434 435
		f 4 -382 697 396 -699
		mu 0 4 419 418 435 436
		f 4 -383 698 397 -700
		mu 0 4 420 419 436 437
		f 4 -384 699 398 -701
		mu 0 4 421 420 437 438
		f 4 -385 700 399 -702
		mu 0 4 422 421 438 439
		f 4 -386 701 400 -703
		mu 0 4 423 422 439 440
		f 4 -387 702 401 -704
		mu 0 4 424 423 440 441
		f 4 -388 703 402 -705
		mu 0 4 425 424 441 442
		f 4 -389 704 403 -706
		mu 0 4 426 425 442 443
		f 4 -390 705 404 -707
		mu 0 4 427 426 443 444
		f 4 -391 706 405 -708
		mu 0 4 428 427 444 445
		f 4 -392 707 406 -709
		mu 0 4 429 428 445 446
		f 4 -393 708 407 -710
		mu 0 4 430 429 446 447
		f 4 -394 709 408 -711
		mu 0 4 431 430 447 448
		f 4 -395 711 409 -697
		mu 0 4 433 432 449 450
		f 4 -396 712 410 -714
		mu 0 4 435 434 451 452
		f 4 -397 713 411 -715
		mu 0 4 436 435 452 453
		f 4 -398 714 412 -716
		mu 0 4 437 436 453 454
		f 4 -399 715 413 -717
		mu 0 4 438 437 454 455
		f 4 -400 716 414 -718
		mu 0 4 439 438 455 456
		f 4 -401 717 415 -719
		mu 0 4 440 439 456 457
		f 4 -402 718 416 -720
		mu 0 4 441 440 457 458
		f 4 -403 719 417 -721
		mu 0 4 442 441 458 459
		f 4 -404 720 418 -722
		mu 0 4 443 442 459 460
		f 4 -405 721 419 -723
		mu 0 4 444 443 460 461
		f 4 -406 722 420 -724
		mu 0 4 445 444 461 462
		f 4 -407 723 421 -725
		mu 0 4 446 445 462 463
		f 4 -408 724 422 -726
		mu 0 4 447 446 463 464
		f 4 -409 725 423 -727
		mu 0 4 448 447 464 465
		f 4 -410 727 424 -713
		mu 0 4 450 449 466 467
		f 4 -411 728 425 -730
		mu 0 4 452 451 468 469
		f 4 -412 729 426 -731
		mu 0 4 453 452 469 470
		f 4 -413 730 427 -732
		mu 0 4 454 453 470 471
		f 4 -414 731 428 -733
		mu 0 4 455 454 471 472
		f 4 -415 732 429 -734
		mu 0 4 456 455 472 473
		f 4 -416 733 430 -735
		mu 0 4 457 456 473 474
		f 4 -417 734 431 -736
		mu 0 4 458 457 474 475
		f 4 -418 735 432 -737
		mu 0 4 459 458 475 476
		f 4 -419 736 433 -738
		mu 0 4 460 459 476 477
		f 4 -420 737 434 -739
		mu 0 4 461 460 477 478
		f 4 -421 738 435 -740
		mu 0 4 462 461 478 479
		f 4 -422 739 436 -741
		mu 0 4 463 462 479 480
		f 4 -423 740 437 -742
		mu 0 4 464 463 480 481
		f 4 -424 741 438 -743
		mu 0 4 465 464 481 482
		f 4 -425 743 439 -729
		mu 0 4 467 466 483 484
		f 4 -426 744 140 -746
		mu 0 4 469 468 485 486
		f 4 -427 745 141 -747
		mu 0 4 470 469 486 487
		f 4 -428 746 142 -748
		mu 0 4 471 470 487 488
		f 4 -429 747 143 -749
		mu 0 4 472 471 488 489
		f 4 -430 748 144 -750
		mu 0 4 473 472 489 490
		f 4 -431 749 145 -751
		mu 0 4 474 473 490 491
		f 4 -432 750 146 -752
		mu 0 4 475 474 491 492
		f 4 -433 751 147 -753
		mu 0 4 476 475 492 493
		f 4 -434 752 148 -754
		mu 0 4 477 476 493 494
		f 4 -435 753 149 -755
		mu 0 4 478 477 494 495
		f 4 -436 754 150 -756
		mu 0 4 479 478 495 496
		f 4 -437 755 151 -757
		mu 0 4 480 479 496 497
		f 4 -438 756 152 -758
		mu 0 4 481 480 497 498
		f 4 -439 757 153 -759
		mu 0 4 482 481 498 499
		f 4 -440 759 154 -745
		mu 0 4 484 483 500 501
		f 4 -520 760 -696 761
		mu 0 4 502 503 504 505
		f 4 -536 -762 -680 762
		mu 0 4 506 507 508 509
		f 4 -664 763 -552 -763
		mu 0 4 510 511 512 513
		f 4 -568 -764 -648 764
		mu 0 4 514 515 516 517
		f 4 -632 765 -584 -765
		mu 0 4 518 519 520 521
		f 3 -600 -766 -616
		mu 0 3 522 523 524
		f 4 -504 766 -712 -761
		mu 0 4 525 526 527 528
		f 4 -728 -767 -488 767
		mu 0 4 529 530 531 532
		f 4 -472 768 -744 -768
		mu 0 4 533 534 535 536
		f 3 -760 -769 -456
		mu 0 3 537 538 539
		f 4 534 769 662 770
		mu 0 4 540 541 542 543
		f 4 518 -771 678 771
		mu 0 4 544 545 546 547
		f 4 550 772 646 -770
		mu 0 4 548 549 550 551
		f 4 630 -773 566 773
		mu 0 4 552 553 554 555
		f 4 582 598 614 -774
		mu 0 4 556 557 558 559
		f 4 694 774 502 -772
		mu 0 4 560 561 562 563
		f 4 486 -775 710 775
		mu 0 4 564 565 566 567
		f 4 726 776 470 -776
		mu 0 4 568 569 570 571
		f 4 454 -777 742 758
		mu 0 4 572 573 574 575
		f 20 -797 -796 -795 -794 -793 -792 -791 -790 -789 -788 -787 -786 -785 -784 -783 -782
		 -781 -780 -779 -778
		mu 0 20 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595
		f 4 777 798 837 -798
		mu 0 4 596 597 598 599
		f 4 778 799 838 -799
		mu 0 4 597 600 601 598
		f 4 779 800 839 -800
		mu 0 4 600 602 603 601
		f 4 780 801 840 -801
		mu 0 4 602 604 605 603
		f 4 781 802 841 -802
		mu 0 4 604 606 607 605
		f 4 782 803 842 -803
		mu 0 4 606 608 609 607
		f 4 783 804 843 -804
		mu 0 4 608 610 611 609
		f 4 784 805 844 -805
		mu 0 4 610 612 613 611
		f 4 785 806 845 -806
		mu 0 4 612 614 615 613
		f 4 786 807 846 -807
		mu 0 4 614 616 617 615
		f 4 787 808 847 -808
		mu 0 4 616 618 619 617
		f 4 788 809 848 -809
		mu 0 4 618 620 621 619
		f 4 789 810 849 -810
		mu 0 4 620 622 623 621
		f 4 790 811 850 -811
		mu 0 4 622 624 625 623
		f 4 791 812 851 -812
		mu 0 4 624 626 627 625
		f 4 792 813 852 -813
		mu 0 4 626 628 629 627
		f 4 793 814 853 -814
		mu 0 4 628 630 631 629
		f 4 794 815 854 -815
		mu 0 4 630 632 633 631
		f 4 795 816 855 -816
		mu 0 4 632 634 635 633
		f 4 796 797 856 -817
		mu 0 4 634 636 637 635
		f 3 -838 818 -818
		mu 0 3 599 598 638
		f 3 -839 819 -819
		mu 0 3 598 601 638
		f 3 -840 820 -820
		mu 0 3 601 603 638
		f 3 -841 821 -821
		mu 0 3 603 605 638
		f 3 -842 822 -822
		mu 0 3 605 607 638
		f 3 -843 823 -823
		mu 0 3 607 609 638
		f 3 -844 824 -824
		mu 0 3 609 611 638
		f 3 -845 825 -825
		mu 0 3 611 613 638
		f 3 -846 826 -826
		mu 0 3 613 615 638
		f 3 -847 827 -827
		mu 0 3 615 617 638
		f 3 -848 828 -828
		mu 0 3 617 619 638
		f 3 -849 829 -829
		mu 0 3 619 621 638
		f 3 -850 830 -830
		mu 0 3 621 623 638
		f 3 -851 831 -831
		mu 0 3 623 625 638
		f 3 -852 832 -832
		mu 0 3 625 627 638
		f 3 -853 833 -833
		mu 0 3 627 629 638
		f 3 -854 834 -834
		mu 0 3 629 631 638
		f 3 -855 835 -835
		mu 0 3 631 633 638
		f 3 -856 836 -836
		mu 0 3 633 635 638
		f 3 -857 817 -837
		mu 0 3 635 637 638
		f 4 -858 1157 872 -1159
		mu 0 4 639 640 641 642
		f 4 -859 1158 873 -1160
		mu 0 4 643 639 642 644
		f 4 -860 1159 874 -1161
		mu 0 4 645 643 644 646
		f 4 -861 1160 875 -1162
		mu 0 4 647 645 646 648
		f 4 -862 1161 876 -1163
		mu 0 4 649 647 648 650
		f 4 -863 1162 877 -1164
		mu 0 4 651 649 650 652
		f 4 -864 1163 878 -1165
		mu 0 4 653 651 652 654
		f 4 -865 1164 879 -1166
		mu 0 4 655 653 654 656
		f 4 -866 1165 880 -1167
		mu 0 4 657 655 656 658
		f 4 -867 1166 881 -1168
		mu 0 4 659 657 658 660
		f 4 -868 1167 882 -1169
		mu 0 4 661 659 660 662
		f 4 -869 1168 883 -1170
		mu 0 4 663 661 662 664
		f 4 -870 1169 884 -1171
		mu 0 4 665 663 664 666
		f 4 -871 1170 885 -1172
		mu 0 4 667 665 666 668
		f 4 -872 1172 886 -1158
		mu 0 4 669 670 671 672
		f 4 -873 1173 887 -1175
		mu 0 4 642 641 673 674
		f 4 -874 1174 888 -1176
		mu 0 4 644 642 674 675
		f 4 -875 1175 889 -1177
		mu 0 4 646 644 675 676
		f 4 -876 1176 890 -1178
		mu 0 4 648 646 676 677
		f 4 -877 1177 891 -1179
		mu 0 4 650 648 677 678
		f 4 -878 1178 892 -1180
		mu 0 4 652 650 678 679
		f 4 -879 1179 893 -1181
		mu 0 4 654 652 679 680
		f 4 -880 1180 894 -1182
		mu 0 4 656 654 680 681
		f 4 -881 1181 895 -1183
		mu 0 4 658 656 681 682
		f 4 -882 1182 896 -1184
		mu 0 4 660 658 682 683
		f 4 -883 1183 897 -1185
		mu 0 4 662 660 683 684
		f 4 -884 1184 898 -1186
		mu 0 4 664 662 684 685
		f 4 -885 1185 899 -1187
		mu 0 4 666 664 685 686
		f 4 -886 1186 900 -1188
		mu 0 4 668 666 686 687
		f 4 -887 1188 901 -1174
		mu 0 4 672 671 688 689
		f 4 -888 1189 902 -1191
		mu 0 4 674 673 690 691
		f 4 -889 1190 903 -1192
		mu 0 4 675 674 691 692
		f 4 -890 1191 904 -1193
		mu 0 4 676 675 692 693
		f 4 -891 1192 905 -1194
		mu 0 4 677 676 693 694
		f 4 -892 1193 906 -1195
		mu 0 4 678 677 694 695
		f 4 -893 1194 907 -1196
		mu 0 4 679 678 695 696
		f 4 -894 1195 908 -1197
		mu 0 4 680 679 696 697
		f 4 -895 1196 909 -1198
		mu 0 4 681 680 697 698
		f 4 -896 1197 910 -1199
		mu 0 4 682 681 698 699
		f 4 -897 1198 911 -1200
		mu 0 4 683 682 699 700
		f 4 -898 1199 912 -1201
		mu 0 4 684 683 700 701
		f 4 -899 1200 913 -1202
		mu 0 4 685 684 701 702
		f 4 -900 1201 914 -1203
		mu 0 4 686 685 702 703
		f 4 -901 1202 915 -1204
		mu 0 4 687 686 703 704
		f 4 -902 1204 916 -1190
		mu 0 4 689 688 705 706
		f 4 -903 1205 917 -1207
		mu 0 4 691 690 707 708
		f 4 -904 1206 918 -1208
		mu 0 4 692 691 708 709
		f 4 -905 1207 919 -1209
		mu 0 4 693 692 709 710
		f 4 -906 1208 920 -1210
		mu 0 4 694 693 710 711
		f 4 -907 1209 921 -1211
		mu 0 4 695 694 711 712
		f 4 -908 1210 922 -1212
		mu 0 4 696 695 712 713
		f 4 -909 1211 923 -1213
		mu 0 4 697 696 713 714
		f 4 -910 1212 924 -1214
		mu 0 4 698 697 714 715
		f 4 -911 1213 925 -1215
		mu 0 4 699 698 715 716
		f 4 -912 1214 926 -1216
		mu 0 4 700 699 716 717
		f 4 -913 1215 927 -1217
		mu 0 4 701 700 717 718
		f 4 -914 1216 928 -1218
		mu 0 4 702 701 718 719
		f 4 -915 1217 929 -1219
		mu 0 4 703 702 719 720
		f 4 -916 1218 930 -1220
		mu 0 4 704 703 720 721
		f 4 -917 1220 931 -1206
		mu 0 4 706 705 722 723
		f 4 -918 1221 932 -1223
		mu 0 4 708 707 724 725
		f 4 -919 1222 933 -1224
		mu 0 4 709 708 725 726
		f 4 -920 1223 934 -1225
		mu 0 4 710 709 726 727
		f 4 -921 1224 935 -1226
		mu 0 4 711 710 727 728
		f 4 -922 1225 936 -1227
		mu 0 4 712 711 728 729
		f 4 -923 1226 937 -1228
		mu 0 4 713 712 729 730
		f 4 -924 1227 938 -1229
		mu 0 4 714 713 730 731
		f 4 -925 1228 939 -1230
		mu 0 4 715 714 731 732
		f 4 -926 1229 940 -1231
		mu 0 4 716 715 732 733
		f 4 -927 1230 941 -1232
		mu 0 4 717 716 733 734
		f 4 -928 1231 942 -1233
		mu 0 4 718 717 734 735
		f 4 -929 1232 943 -1234
		mu 0 4 719 718 735 736
		f 4 -930 1233 944 -1235
		mu 0 4 720 719 736 737
		f 4 -931 1234 945 -1236
		mu 0 4 721 720 737 738
		f 4 -932 1236 946 -1222
		mu 0 4 723 722 739 740
		f 4 -933 1237 947 -1239
		mu 0 4 725 724 741 742
		f 4 -934 1238 948 -1240
		mu 0 4 726 725 742 743;
	setAttr ".fc[500:741]"
		f 4 -935 1239 949 -1241
		mu 0 4 727 726 743 744
		f 4 -936 1240 950 -1242
		mu 0 4 728 727 744 745
		f 4 -937 1241 951 -1243
		mu 0 4 729 728 745 746
		f 4 -938 1242 952 -1244
		mu 0 4 730 729 746 747
		f 4 -939 1243 953 -1245
		mu 0 4 731 730 747 748
		f 4 -940 1244 954 -1246
		mu 0 4 732 731 748 749
		f 4 -941 1245 955 -1247
		mu 0 4 733 732 749 750
		f 4 -942 1246 956 -1248
		mu 0 4 734 733 750 751
		f 4 -943 1247 957 -1249
		mu 0 4 735 734 751 752
		f 4 -944 1248 958 -1250
		mu 0 4 736 735 752 753
		f 4 -945 1249 959 -1251
		mu 0 4 737 736 753 754
		f 4 -946 1250 960 -1252
		mu 0 4 738 737 754 755
		f 4 -947 1252 961 -1238
		mu 0 4 740 739 756 757
		f 4 -948 1253 962 -1255
		mu 0 4 742 741 758 759
		f 4 -949 1254 963 -1256
		mu 0 4 743 742 759 760
		f 4 -950 1255 964 -1257
		mu 0 4 744 743 760 761
		f 4 -951 1256 965 -1258
		mu 0 4 745 744 761 762
		f 4 -952 1257 966 -1259
		mu 0 4 746 745 762 763
		f 4 -953 1258 967 -1260
		mu 0 4 747 746 763 764
		f 4 -954 1259 968 -1261
		mu 0 4 748 747 764 765
		f 4 -955 1260 969 -1262
		mu 0 4 749 748 765 766
		f 4 -956 1261 970 -1263
		mu 0 4 750 749 766 767
		f 4 -957 1262 971 -1264
		mu 0 4 751 750 767 768
		f 4 -958 1263 972 -1265
		mu 0 4 752 751 768 769
		f 4 -959 1264 973 -1266
		mu 0 4 753 752 769 770
		f 4 -960 1265 974 -1267
		mu 0 4 754 753 770 771
		f 4 -961 1266 975 -1268
		mu 0 4 755 754 771 772
		f 4 -962 1268 976 -1254
		mu 0 4 757 756 773 774
		f 4 -963 1269 977 -1271
		mu 0 4 759 758 775 776
		f 4 -964 1270 978 -1272
		mu 0 4 760 759 776 777
		f 4 -965 1271 979 -1273
		mu 0 4 761 760 777 778
		f 4 -966 1272 980 -1274
		mu 0 4 762 761 778 779
		f 4 -967 1273 981 -1275
		mu 0 4 763 762 779 780
		f 4 -968 1274 982 -1276
		mu 0 4 764 763 780 781
		f 4 -969 1275 983 -1277
		mu 0 4 765 764 781 782
		f 4 -970 1276 984 -1278
		mu 0 4 766 765 782 783
		f 4 -971 1277 985 -1279
		mu 0 4 767 766 783 784
		f 4 -972 1278 986 -1280
		mu 0 4 768 767 784 785
		f 4 -973 1279 987 -1281
		mu 0 4 769 768 785 786
		f 4 -974 1280 988 -1282
		mu 0 4 770 769 786 787
		f 4 -975 1281 989 -1283
		mu 0 4 771 770 787 788
		f 4 -976 1282 990 -1284
		mu 0 4 772 771 788 789
		f 4 -977 1284 991 -1270
		mu 0 4 774 773 790 791
		f 4 -978 1285 992 -1287
		mu 0 4 776 775 792 793
		f 4 -979 1286 993 -1288
		mu 0 4 777 776 793 794
		f 4 -980 1287 994 -1289
		mu 0 4 778 777 794 795
		f 4 -981 1288 995 -1290
		mu 0 4 779 778 795 796
		f 4 -982 1289 996 -1291
		mu 0 4 780 779 796 797
		f 4 -983 1290 997 -1292
		mu 0 4 781 780 797 798
		f 4 -984 1291 998 -1293
		mu 0 4 782 781 798 799
		f 4 -985 1292 999 -1294
		mu 0 4 783 782 799 800
		f 4 -986 1293 1000 -1295
		mu 0 4 784 783 800 801
		f 4 -987 1294 1001 -1296
		mu 0 4 785 784 801 802
		f 4 -988 1295 1002 -1297
		mu 0 4 786 785 802 803
		f 4 -989 1296 1003 -1298
		mu 0 4 787 786 803 804
		f 4 -990 1297 1004 -1299
		mu 0 4 788 787 804 805
		f 4 -991 1298 1005 -1300
		mu 0 4 789 788 805 806
		f 4 -992 1300 1006 -1286
		mu 0 4 791 790 807 808
		f 4 -993 1301 1007 -1303
		mu 0 4 793 792 809 810
		f 4 -994 1302 1008 -1304
		mu 0 4 794 793 810 811
		f 4 -995 1303 1009 -1305
		mu 0 4 795 794 811 812
		f 4 -996 1304 1010 -1306
		mu 0 4 796 795 812 813
		f 4 -997 1305 1011 -1307
		mu 0 4 797 796 813 814
		f 4 -998 1306 1012 -1308
		mu 0 4 798 797 814 815
		f 4 -999 1307 1013 -1309
		mu 0 4 799 798 815 816
		f 4 -1000 1308 1014 -1310
		mu 0 4 800 799 816 817
		f 4 -1001 1309 1015 -1311
		mu 0 4 801 800 817 818
		f 4 -1002 1310 1016 -1312
		mu 0 4 802 801 818 819
		f 4 -1003 1311 1017 -1313
		mu 0 4 803 802 819 820
		f 4 -1004 1312 1018 -1314
		mu 0 4 804 803 820 821
		f 4 -1005 1313 1019 -1315
		mu 0 4 805 804 821 822
		f 4 -1006 1314 1020 -1316
		mu 0 4 806 805 822 823
		f 4 -1007 1316 1021 -1302
		mu 0 4 808 807 824 825
		f 4 -1008 1317 1022 -1319
		mu 0 4 810 809 826 827
		f 4 -1009 1318 1023 -1320
		mu 0 4 811 810 827 828
		f 4 -1010 1319 1024 -1321
		mu 0 4 812 811 828 829
		f 4 -1011 1320 1025 -1322
		mu 0 4 813 812 829 830
		f 4 -1012 1321 1026 -1323
		mu 0 4 814 813 830 831
		f 4 -1013 1322 1027 -1324
		mu 0 4 815 814 831 832
		f 4 -1014 1323 1028 -1325
		mu 0 4 816 815 832 833
		f 4 -1015 1324 1029 -1326
		mu 0 4 817 816 833 834
		f 4 -1016 1325 1030 -1327
		mu 0 4 818 817 834 835
		f 4 -1017 1326 1031 -1328
		mu 0 4 819 818 835 836
		f 4 -1018 1327 1032 -1329
		mu 0 4 820 819 836 837
		f 4 -1019 1328 1033 -1330
		mu 0 4 821 820 837 838
		f 4 -1020 1329 1034 -1331
		mu 0 4 822 821 838 839
		f 4 -1021 1330 1035 -1332
		mu 0 4 823 822 839 840
		f 4 -1022 1332 1036 -1318
		mu 0 4 825 824 841 842
		f 4 -1023 1333 1037 -1335
		mu 0 4 827 826 843 844
		f 4 -1024 1334 1038 -1336
		mu 0 4 828 827 844 845
		f 4 -1025 1335 1039 -1337
		mu 0 4 829 828 845 846
		f 4 -1026 1336 1040 -1338
		mu 0 4 830 829 846 847
		f 4 -1027 1337 1041 -1339
		mu 0 4 831 830 847 848
		f 4 -1028 1338 1042 -1340
		mu 0 4 832 831 848 849
		f 4 -1029 1339 1043 -1341
		mu 0 4 833 832 849 850
		f 4 -1030 1340 1044 -1342
		mu 0 4 834 833 850 851
		f 4 -1031 1341 1045 -1343
		mu 0 4 835 834 851 852
		f 4 -1032 1342 1046 -1344
		mu 0 4 836 835 852 853
		f 4 -1033 1343 1047 -1345
		mu 0 4 837 836 853 854
		f 4 -1034 1344 1048 -1346
		mu 0 4 838 837 854 855
		f 4 -1035 1345 1049 -1347
		mu 0 4 839 838 855 856
		f 4 -1036 1346 1050 -1348
		mu 0 4 840 839 856 857
		f 4 -1037 1348 1051 -1334
		mu 0 4 842 841 858 859
		f 4 -1038 1349 1052 -1351
		mu 0 4 844 843 860 861
		f 4 -1039 1350 1053 -1352
		mu 0 4 845 844 861 862
		f 4 -1040 1351 1054 -1353
		mu 0 4 846 845 862 863
		f 4 -1041 1352 1055 -1354
		mu 0 4 847 846 863 864
		f 4 -1042 1353 1056 -1355
		mu 0 4 848 847 864 865
		f 4 -1043 1354 1057 -1356
		mu 0 4 849 848 865 866
		f 4 -1044 1355 1058 -1357
		mu 0 4 850 849 866 867
		f 4 -1045 1356 1059 -1358
		mu 0 4 851 850 867 868
		f 4 -1046 1357 1060 -1359
		mu 0 4 852 851 868 869
		f 4 -1047 1358 1061 -1360
		mu 0 4 853 852 869 870
		f 4 -1048 1359 1062 -1361
		mu 0 4 854 853 870 871
		f 4 -1049 1360 1063 -1362
		mu 0 4 855 854 871 872
		f 4 -1050 1361 1064 -1363
		mu 0 4 856 855 872 873
		f 4 -1051 1362 1065 -1364
		mu 0 4 857 856 873 874
		f 4 -1052 1364 1066 -1350
		mu 0 4 859 858 875 876
		f 4 -1053 1365 1067 -1367
		mu 0 4 861 860 877 878
		f 4 -1054 1366 1068 -1368
		mu 0 4 862 861 878 879
		f 4 -1055 1367 1069 -1369
		mu 0 4 863 862 879 880
		f 4 -1056 1368 1070 -1370
		mu 0 4 864 863 880 881
		f 4 -1057 1369 1071 -1371
		mu 0 4 865 864 881 882
		f 4 -1058 1370 1072 -1372
		mu 0 4 866 865 882 883
		f 4 -1059 1371 1073 -1373
		mu 0 4 867 866 883 884
		f 4 -1060 1372 1074 -1374
		mu 0 4 868 867 884 885
		f 4 -1061 1373 1075 -1375
		mu 0 4 869 868 885 886
		f 4 -1062 1374 1076 -1376
		mu 0 4 870 869 886 887
		f 4 -1063 1375 1077 -1377
		mu 0 4 871 870 887 888
		f 4 -1064 1376 1078 -1378
		mu 0 4 872 871 888 889
		f 4 -1065 1377 1079 -1379
		mu 0 4 873 872 889 890
		f 4 -1066 1378 1080 -1380
		mu 0 4 874 873 890 891
		f 4 -1067 1380 1081 -1366
		mu 0 4 876 875 892 893
		f 4 -1068 1381 1082 -1383
		mu 0 4 878 877 894 895
		f 4 -1069 1382 1083 -1384
		mu 0 4 879 878 895 896
		f 4 -1070 1383 1084 -1385
		mu 0 4 880 879 896 897
		f 4 -1071 1384 1085 -1386
		mu 0 4 881 880 897 898
		f 4 -1072 1385 1086 -1387
		mu 0 4 882 881 898 899
		f 4 -1073 1386 1087 -1388
		mu 0 4 883 882 899 900
		f 4 -1074 1387 1088 -1389
		mu 0 4 884 883 900 901
		f 4 -1075 1388 1089 -1390
		mu 0 4 885 884 901 902
		f 4 -1076 1389 1090 -1391
		mu 0 4 886 885 902 903
		f 4 -1077 1390 1091 -1392
		mu 0 4 887 886 903 904
		f 4 -1078 1391 1092 -1393
		mu 0 4 888 887 904 905
		f 4 -1079 1392 1093 -1394
		mu 0 4 889 888 905 906
		f 4 -1080 1393 1094 -1395
		mu 0 4 890 889 906 907
		f 4 -1081 1394 1095 -1396
		mu 0 4 891 890 907 908
		f 4 -1082 1396 1096 -1382
		mu 0 4 893 892 909 910
		f 4 -1083 1397 1097 -1399
		mu 0 4 895 894 911 912
		f 4 -1084 1398 1098 -1400
		mu 0 4 896 895 912 913
		f 4 -1085 1399 1099 -1401
		mu 0 4 897 896 913 914
		f 4 -1086 1400 1100 -1402
		mu 0 4 898 897 914 915
		f 4 -1087 1401 1101 -1403
		mu 0 4 899 898 915 916
		f 4 -1088 1402 1102 -1404
		mu 0 4 900 899 916 917
		f 4 -1089 1403 1103 -1405
		mu 0 4 901 900 917 918
		f 4 -1090 1404 1104 -1406
		mu 0 4 902 901 918 919
		f 4 -1091 1405 1105 -1407
		mu 0 4 903 902 919 920
		f 4 -1092 1406 1106 -1408
		mu 0 4 904 903 920 921
		f 4 -1093 1407 1107 -1409
		mu 0 4 905 904 921 922
		f 4 -1094 1408 1108 -1410
		mu 0 4 906 905 922 923
		f 4 -1095 1409 1109 -1411
		mu 0 4 907 906 923 924
		f 4 -1096 1410 1110 -1412
		mu 0 4 908 907 924 925
		f 4 -1097 1412 1111 -1398
		mu 0 4 910 909 926 927
		f 4 -1098 1413 1112 -1415
		mu 0 4 912 911 928 929
		f 4 -1099 1414 1113 -1416
		mu 0 4 913 912 929 930
		f 4 -1100 1415 1114 -1417
		mu 0 4 914 913 930 931
		f 4 -1101 1416 1115 -1418
		mu 0 4 915 914 931 932
		f 4 -1102 1417 1116 -1419
		mu 0 4 916 915 932 933
		f 4 -1103 1418 1117 -1420
		mu 0 4 917 916 933 934
		f 4 -1104 1419 1118 -1421
		mu 0 4 918 917 934 935
		f 4 -1105 1420 1119 -1422
		mu 0 4 919 918 935 936
		f 4 -1106 1421 1120 -1423
		mu 0 4 920 919 936 937
		f 4 -1107 1422 1121 -1424
		mu 0 4 921 920 937 938
		f 4 -1108 1423 1122 -1425
		mu 0 4 922 921 938 939
		f 4 -1109 1424 1123 -1426
		mu 0 4 923 922 939 940
		f 4 -1110 1425 1124 -1427
		mu 0 4 924 923 940 941
		f 4 -1111 1426 1125 -1428
		mu 0 4 925 924 941 942
		f 4 -1112 1428 1126 -1414
		mu 0 4 927 926 943 944
		f 4 -1113 1429 1127 -1431
		mu 0 4 929 928 945 946
		f 4 -1114 1430 1128 -1432
		mu 0 4 930 929 946 947
		f 4 -1115 1431 1129 -1433
		mu 0 4 931 930 947 948
		f 4 -1116 1432 1130 -1434
		mu 0 4 932 931 948 949
		f 4 -1117 1433 1131 -1435
		mu 0 4 933 932 949 950
		f 4 -1118 1434 1132 -1436
		mu 0 4 934 933 950 951
		f 4 -1119 1435 1133 -1437
		mu 0 4 935 934 951 952
		f 4 -1120 1436 1134 -1438
		mu 0 4 936 935 952 953
		f 4 -1121 1437 1135 -1439
		mu 0 4 937 936 953 954
		f 4 -1122 1438 1136 -1440
		mu 0 4 938 937 954 955
		f 4 -1123 1439 1137 -1441
		mu 0 4 939 938 955 956
		f 4 -1124 1440 1138 -1442
		mu 0 4 940 939 956 957
		f 4 -1125 1441 1139 -1443
		mu 0 4 941 940 957 958
		f 4 -1126 1442 1140 -1444
		mu 0 4 942 941 958 959
		f 4 -1127 1444 1141 -1430
		mu 0 4 944 943 960 961
		f 4 -1128 1445 1142 -1447
		mu 0 4 946 945 962 963
		f 4 -1129 1446 1143 -1448
		mu 0 4 947 946 963 964
		f 4 -1130 1447 1144 -1449
		mu 0 4 948 947 964 965
		f 4 -1131 1448 1145 -1450
		mu 0 4 949 948 965 966
		f 4 -1132 1449 1146 -1451
		mu 0 4 950 949 966 967
		f 4 -1133 1450 1147 -1452
		mu 0 4 951 950 967 968
		f 4 -1134 1451 1148 -1453
		mu 0 4 952 951 968 969
		f 4 -1135 1452 1149 -1454
		mu 0 4 953 952 969 970
		f 4 -1136 1453 1150 -1455
		mu 0 4 954 953 970 971
		f 4 -1137 1454 1151 -1456
		mu 0 4 955 954 971 972
		f 4 -1138 1455 1152 -1457
		mu 0 4 956 955 972 973
		f 4 -1139 1456 1153 -1458
		mu 0 4 957 956 973 974
		f 4 -1140 1457 1154 -1459
		mu 0 4 958 957 974 975
		f 4 -1141 1458 1155 -1460
		mu 0 4 959 958 975 976
		f 4 -1142 1460 1156 -1446
		mu 0 4 961 960 977 978
		f 4 -1143 1461 857 -1463
		mu 0 4 963 962 979 980
		f 4 -1144 1462 858 -1464
		mu 0 4 964 963 980 981
		f 4 -1145 1463 859 -1465
		mu 0 4 965 964 981 982
		f 4 -1146 1464 860 -1466
		mu 0 4 966 965 982 983
		f 4 -1147 1465 861 -1467
		mu 0 4 967 966 983 984
		f 4 -1148 1466 862 -1468
		mu 0 4 968 967 984 985
		f 4 -1149 1467 863 -1469
		mu 0 4 969 968 985 986
		f 4 -1150 1468 864 -1470
		mu 0 4 970 969 986 987
		f 4 -1151 1469 865 -1471
		mu 0 4 971 970 987 988
		f 4 -1152 1470 866 -1472
		mu 0 4 972 971 988 989
		f 4 -1153 1471 867 -1473
		mu 0 4 973 972 989 990
		f 4 -1154 1472 868 -1474
		mu 0 4 974 973 990 991
		f 4 -1155 1473 869 -1475
		mu 0 4 975 974 991 992
		f 4 -1156 1474 870 -1476
		mu 0 4 976 975 992 993
		f 4 -1157 1476 871 -1462
		mu 0 4 978 977 994 995
		f 4 -1237 1477 -1413 1478
		mu 0 4 996 997 998 999
		f 4 -1253 -1479 -1397 1479
		mu 0 4 1000 1001 1002 1003
		f 4 -1381 1480 -1269 -1480
		mu 0 4 1004 1005 1006 1007
		f 4 -1285 -1481 -1365 1481
		mu 0 4 1008 1009 1010 1011
		f 4 -1349 1482 -1301 -1482
		mu 0 4 1012 1013 1014 1015
		f 3 -1317 -1483 -1333
		mu 0 3 1016 1017 1018
		f 4 -1221 1483 -1429 -1478
		mu 0 4 1019 1020 1021 1022
		f 4 -1445 -1484 -1205 1484
		mu 0 4 1023 1024 1025 1026
		f 4 -1189 1485 -1461 -1485
		mu 0 4 1027 1028 1029 1030
		f 3 -1477 -1486 -1173
		mu 0 3 1031 1032 1033
		f 4 1251 1486 1379 1487
		mu 0 4 1034 1035 1036 1037
		f 4 1235 -1488 1395 1488
		mu 0 4 1038 1039 1040 1041
		f 4 1267 1489 1363 -1487
		mu 0 4 1042 1043 1044 1045
		f 4 1347 -1490 1283 1490
		mu 0 4 1046 1047 1048 1049
		f 4 1299 1315 1331 -1491
		mu 0 4 1050 1051 1052 1053
		f 4 1411 1491 1219 -1489
		mu 0 4 1054 1055 1056 1057
		f 4 1203 -1492 1427 1492
		mu 0 4 1058 1059 1060 1061
		f 4 1443 1493 1187 -1493
		mu 0 4 1062 1063 1064 1065
		f 4 1171 -1494 1459 1475
		mu 0 4 1066 1067 1068 1069;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd";
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".atm" no;
	setAttr ".vnm" 0;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2" 
		-p "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "26016731-4D63-28E0-2ED8-889EAF176108";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 81.501162558849131 12.336552336259199 28.972181676629909 ;
	setAttr ".rst" -type "double3" -4.0000838536638188 -0.00014028699970913833 -1.114277707018517 ;
	setAttr ".rsrr" -type "double3" 7.3962782727447006e-005 14.031544144754204 1.5084540732561732e-005 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2" 
		-p "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "08D57D09-4482-E366-0F7A-82B668DB2DF2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hook_grp" -p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "40087BB9-4CC3-AFF1-8805-C28C8FFFFB53";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:hook_root_joint" -p "HingeJoint__instance_1_mirror:hook_grp";
	rename -uid "B8AEC8F3-483D-E795-A310-EB86CA38B521";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".jo";
	setAttr ".ssc";
	setAttr ".is";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:hook_target_joint" -p "HingeJoint__instance_1_mirror:hook_root_joint";
	rename -uid "272BCC25-4790-39EF-417B-81B0A1A6E53C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.0010000000474974513 2.2204460492503122e-019 0 ;
	setAttr ".t";
	setAttr ".ty";
	setAttr ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
lockNode -l 1 -lu 1;
createNode ikEffector -n "HingeJoint__instance_1_mirror:hook_root_joint_ikEffector" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint";
	rename -uid "9768A5BD-4CDD-72B2-1DC5-F4AAE401AB8E";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".hd" yes;
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint";
	rename -uid "07B45BAE-4348-D1FD-AE04-E39FE0586EA4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:unhookedTarget" -p "HingeJoint__instance_1_mirror:hook_grp";
	rename -uid "57B7745B-460C-150D-7EC9-AEB5862C73D1";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:unhookedTargetShape" -p "HingeJoint__instance_1_mirror:unhookedTarget";
	rename -uid "3BAF730B-4FC7-92B5-7611-3DB9B7B50E06";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "unhookedTarget_pointConstraint2" -p "HingeJoint__instance_1_mirror:unhookedTarget";
	rename -uid "9B432E39-4F27-7120-AEC5-13A1E50A3F52";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".o" -type "double3" 0 0.001 0 ;
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode ikHandle -n "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle" 
		-p "HingeJoint__instance_1_mirror:hook_grp";
	rename -uid "5C63EE31-46E9-59F3-86F9-AB96851D10D5";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".pv";
	setAttr ".roc" yes;
lockNode -l 1 -lu 1;
createNode poleVectorConstraint -n "hook_root_joint_ikHandle_poleVectorConstraint2" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle";
	rename -uid "E65F467F-48DF-054E-AE93-8BB1D59A650E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_joint_ikHandle_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 0 1 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle";
	rename -uid "7F574933-4D94-B47A-9A01-CD9AE107392D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_target_joint_endPosLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 1.4444474582904269e-034 0.0009999999999999998 -6.6174449548094606e-027 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator" 
		-p "HingeJoint__instance_1_mirror:hook_grp";
	rename -uid "9B9A66E2-418B-6A5C-DB97-B28C27939BEC";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocatorShape" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator";
	rename -uid "5A23CD89-401C-566C-E5CE-B9A515D0476F";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator";
	rename -uid "9AC7C3EB-4270-99A2-1F43-DDB5B70CA166";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator" 
		-p "HingeJoint__instance_1_mirror:hook_grp";
	rename -uid "0A780B20-496F-09D6-50EF-5090EF106F16";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocatorShape" 
		-p "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator";
	rename -uid "91467C72-49F2-A605-8A1B-99B9F56DFFA3";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "HingeJoint__instance_1_mirror:hook_pointConstraint" 
		-p "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator";
	rename -uid "F9A05C2C-4584-3010-BF0E-69BFE26E5665";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "unhookedTargetW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocator" 
		-p "HingeJoint__instance_1_mirror:hook_grp";
	rename -uid "5F9A255B-498D-0913-AB53-A1B94261C2B9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocatorShape" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocator";
	rename -uid "2057D573-4652-2E63-C3C7-9683457944B4";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_1_mirror:hook_grp";
	rename -uid "9E6F3DCE-4C15-651D-A392-A1AEFFC6D212";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "1752750C-41B3-140B-E06E-2C8E063155C6";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1_mirror:hook_root_joint_hook_representationShape" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation";
	rename -uid "2CFC1D9F-4102-3432-095D-749879BEB605";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-016 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-018
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-016 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-017
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-016 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-017
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-017 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-018
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-018 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-017
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-016 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-017
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-016 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-016
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-016 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-017
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "7ED3CB02-459C-0B12-80A3-16994DFE3FBF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".rsrr" -type "double3" 0 0 89.999999999999986 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode scaleConstraint -n "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2" 
		-p "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "11B8F8EE-4152-9A0E-A722-DD9CD4760F29";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "D3705A01-4895-AFD0-2FCE-E68506443429";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator" 
		-p "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "1F888802-4DCE-95E0-8E72-CCA4A3D998E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0.5 6.123233995736766e-017 ;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocatorShape" 
		-p "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator";
	rename -uid "10A1BFEF-4C19-2186-3CF7-009301CF3160";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2" 
		-p "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "617972A4-49EE-826C-664C-209397F2A725";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 180 0 0 ;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "C206ACE4-47CE-EADE-EF1C-B19A502CDB29";
	setAttr ".t";
	setAttr ".r";
	setAttr ".ro";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "D07B0D1C-4FED-EBB4-A435-BBB368A2B228";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocatorShape" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator";
	rename -uid "FA65B407-40FA-78F7-9045-A498A59E2378";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode parentConstraint -n "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "42D43C0E-4DD2-A980-3AD1-0EA3768B3543";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".lr" -type "double3" 180 0 0 ;
	setAttr ".rst" -type "double3" -4 -2.4651903288156619e-032 -1 ;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator" 
		-p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "B0607434-404B-FA07-3F47-74A2C9B49C7B";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:IK_root_joint_positionLocatorShape" 
		-p "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator";
	rename -uid "DF03B3A0-4210-B795-1BD1-3EBFE4AB6C35";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:IK_root_joint" -p "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator";
	rename -uid "EC2C5150-4E89-FB64-DD8E-C89DEF2E59DB";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".r" -type "double3" -114.51393589231236 -0.00049863540471983391 56.06016931629113 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -14.036243467926482 0 ;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:IK_hinge_joint" -p "HingeJoint__instance_1_mirror:IK_root_joint";
	rename -uid "E4070634-4070-1058-37F4-E59DF9BF1FA3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.3850116729736328 -9.1156734738362388e-007 6.6476629712042268e-007 ;
	setAttr ".t";
	setAttr ".r" -type "double3" 1.2796000875581977e-005 115.69868973655032 -4.4193384972100207e-005 ;
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -28.072486935852961 0 ;
	setAttr ".jo";
	setAttr ".ssc";
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:IK_end_joint" -p "HingeJoint__instance_1_mirror:IK_hinge_joint";
	rename -uid "8DCD789A-4839-8B15-EB10-36AC38946AEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6803088188171387 9.1156734543509701e-007 -8.5143203154558478e-006 ;
	setAttr ".t";
	setAttr ".ty";
	setAttr ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364705878271e-007 14.036243467926484 6.5568815353554109e-015 ;
lockNode -l 1 -lu 1;
createNode ikEffector -n "HingeJoint__instance_1_mirror:IK_root_joint_ikEffector" 
		-p "HingeJoint__instance_1_mirror:IK_hinge_joint";
	rename -uid "4C799D5B-4900-5A39-2EA4-5C9A4CC92101";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".hd" yes;
lockNode -l 1 -lu 1;
createNode pointConstraint -n "IK_root_joint_positionLocator_pointConstraint2" -p
		 "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator";
	rename -uid "0959C6C1-48BE-BEF2-0AFD-02BACA2E1E98";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator" 
		-p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "747EA534-48DC-D684-55A4-3A8A8FFA862B";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocatorShape" 
		-p "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator";
	rename -uid "F062F98B-47C8-AE1E-4B73-B4ACF0A4AEDC";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "IK_hinge_joint_positionLocator_pointConstraint2" 
		-p "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator";
	rename -uid "E40294F5-4123-703C-D746-4B89244CA00A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -4 -2.4651903288156619e-032 -1 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator" 
		-p "HingeJoint__instance_1_mirror:module_grp";
	rename -uid "E22F5880-400B-F065-1398-30BA2E39D91E";
	setAttr ".v" no;
	setAttr ".t";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocatorShape" 
		-p "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator";
	rename -uid "0F298308-4BCB-D6A7-BD6D-EEB4AA83D5D7";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode ikHandle -n "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle" -p
		 "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator";
	rename -uid "C497D2E6-4DE6-B152-D069-7DA9B2A3FDEA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.00017116285764018357 2.6645098481119581e-015 -5.8841820305133297e-015 ;
	setAttr ".pv";
	setAttr ".roc" yes;
lockNode -l 1 -lu 1;
createNode poleVectorConstraint -n "IK_root_joint_ikHandle_poleVectorConstraint2" 
		-p "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle";
	rename -uid "29302D7B-4534-9EEC-F893-13B92B6EE4E6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_hinge_joint_positionLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -4.00004 4.9683 -0.999994 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode pointConstraint -n "IK_root_joint_ikHandle_positionLocator_pointConstraint2" 
		-p "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator";
	rename -uid "23EC550B-4613-FAD0-715D-7BBF02D25C0A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg";
	setAttr ".rst" -type "double3" -8 6.0684932812713692e-032 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:module_transform";
	rename -uid "6145DB2E-430C-2787-D4E3-C0BC1C910ED4";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ro";
	setAttr ".s";
	setAttr ".rp";
	setAttr ".rpt";
	setAttr ".aal" -type "attributeAlias" {"globalScale","scaleY"} ;
lockNode -l 1 -lu 1;
createNode mesh -n "HingeJoint__instance_1_mirror:module_transformShape" -p "HingeJoint__instance_1_mirror:module_transform";
	rename -uid "4901F794-4DAB-6E67-3ACF-79BF0DCE6A7B";
	setAttr -k off ".v";
	setAttr ".iog";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".uvst";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".o";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1 -4.3673398e-007 -1.48870528 0 4.3673398e-007 -1.48870528 0 -4.3673398e-007 1.48870528 0
		 4.3673398e-007 1.48870528 0 1.48870528 -4.3673398e-007 0 1.48870528 4.3673398e-007 0
		 -1.48870528 -4.3673398e-007 0 -1.48870528 4.3673398e-007 0 3.3055887e-016 -4.3673398e-007 -1.48870528
		 3.3055905e-016 4.3673398e-007 -1.48870528 -3.3055905e-016 -4.3673398e-007 1.48870528
		 -3.3055887e-016 4.3673398e-007 1.48870528;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 8 10 0 9 11 0 12 13 0 14 15 0 12 14 0
		 13 15 0 16 17 0 18 19 0 16 18 0 17 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 15 -14 -15
		mu 0 4 14 15 16 17
		f 4 16 19 -18 -19
		mu 0 4 18 19 20 21
		f 4 20 23 -22 -23
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd";
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".atm" no;
	setAttr ".vnm" 0;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:root_joint_translation_control" 
		-p "HingeJoint__instance_1_mirror:module_transform";
	rename -uid "91DF95AE-4CAA-09CE-F5BF-BFA3158B6783";
	setAttr -l on -k off ".v";
	setAttr ".r";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro";
	setAttr ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1_mirror:root_joint_translation_controlShape" 
		-p "HingeJoint__instance_1_mirror:root_joint_translation_control";
	rename -uid "38F3432C-4F99-0B13-4D57-188C2CE0A776";
	setAttr -k off ".v";
	setAttr ".iog";
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
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-016 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-017
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-016 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-016 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-016
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-016 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		2.051909376318187e-016 -6.284284658528814e-017 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-017 2.1934926354574312e-016
		-0.86720244749154174 6.5353909630129502e-017 -0.8672024474915413
		-5.0851507246572639e-016 8.7348995692220465e-017 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-017 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-016
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-016 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-017 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-017
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-017 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:hinge_joint_translation_control" 
		-p "HingeJoint__instance_1_mirror:module_transform";
	rename -uid "D207CD7D-42DC-5C6C-F060-FD9C97436B5C";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4 -6.1268587782868611 0.99999999999999944 ;
	setAttr ".r";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro";
	setAttr ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1_mirror:hinge_joint_translation_controlShape" 
		-p "HingeJoint__instance_1_mirror:hinge_joint_translation_control";
	rename -uid "248C2EC1-4230-331C-8BEC-14B8ED895D6E";
	setAttr -k off ".v";
	setAttr ".iog";
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
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-016 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-017
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-016 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-016 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-016
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-016 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		2.051909376318187e-016 -6.284284658528814e-017 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-017 2.1934926354574312e-016
		-0.86720244749154174 6.5353909630129502e-017 -0.8672024474915413
		-5.0851507246572639e-016 8.7348995692220465e-017 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-017 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-016
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-016 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-017 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-017
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-017 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:end_joint_translation_control" 
		-p "HingeJoint__instance_1_mirror:module_transform";
	rename -uid "03D33DD1-493E-8E08-2F6A-E699968289AE";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8 -3.912069306389625 2.2204460492503131e-016 ;
	setAttr ".r";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp";
	setAttr ".rpt";
lockNode -l 1 -lu 1;
createNode nurbsSurface -n "HingeJoint__instance_1_mirror:end_joint_translation_controlShape" 
		-p "HingeJoint__instance_1_mirror:end_joint_translation_control";
	rename -uid "586C2BA2-44D9-9C46-6E15-EBADA43855A7";
	setAttr -k off ".v";
	setAttr ".iog";
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
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		9.596474681976929e-017 -1 -2.5316183359690662e-016
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-016 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-017
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-016 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-017
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-016 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-016
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-016 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-016
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		2.051909376318187e-016 -6.284284658528814e-017 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-017 2.1934926354574312e-016
		-0.86720244749154174 6.5353909630129502e-017 -0.8672024474915413
		-5.0851507246572639e-016 8.7348995692220465e-017 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-017 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-017 2.901104977298788e-016
		0.86720244749154163 -4.0847760523197208e-017 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-017 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-016
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-016 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-016
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-017 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-017
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-017 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-016
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		1.739967336636337e-016 1 -1.6799646886496759e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
lockNode -l 1 -lu 1;
createNode parentConstraint -n "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint" 
		-p "HingeJoint__instance_1_mirror:module_transform";
	rename -uid "6E240616-43C3-F8C5-34EA-CFBBC7C218E5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transform_mirrorHelperW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 0 0 ;
	setAttr ".rst" -type "double3" -2.5784465329337358 0 0 ;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
lockNode -l 1 ;
createNode transform -n "HingeJoint__instance_1:module_transformmirror_scale_grp";
	rename -uid "8BF17F3F-44E5-4B8C-03E4-52A33F94BB67";
	setAttr ".s" -type "double3" -1 1 1 ;
lockNode -l 1 ;
createNode transform -n "HingeJoint__instance_1:module_transform_mirrorHelper" -p
		 "HingeJoint__instance_1:module_transformmirror_scale_grp";
	rename -uid "09E47E97-4D3A-B8F0-9407-11857B74B44F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".aal" -type "attributeAlias" {"globalScale","scaleY"} ;
lockNode -l 1 ;
createNode container -n "HingeJoint__instance_1:module_container";
	rename -uid "8C1CEFB1-437E-D223-5829-109693BA2CBD";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 49 ".boc";
	setAttr -s 13 ".ish";
	setAttr ".ish[24]" yes;
	setAttr ".ish[25]" yes;
	setAttr ".ish[26]" yes;
	setAttr ".ish[27]" yes;
	setAttr ".ish[28]" yes;
	setAttr ".ish[29]" yes;
	setAttr ".ish[30]" yes;
	setAttr ".ish[31]" yes;
	setAttr ".ish[32]" yes;
	setAttr ".ish[33]" yes;
	setAttr ".ish[34]" yes;
	setAttr ".ish[35]" yes;
	setAttr ".ish[48]" yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/04/07 18:17:05";
	setAttr ".aal" -type "attributeAlias" {"root_joint_R","borderConnections[0]","end_joint_R"
		,"borderConnections[10]","end_joint_RX","borderConnections[11]","end_joint_RY","borderConnections[12]"
		,"end_joint_RZ","borderConnections[13]","end_joint_rotateOrder","borderConnections[14]"
		,"moduleTransform_T","borderConnections[15]","moduleTransform_TX","borderConnections[16]"
		,"moduleTransform_TY","borderConnections[17]","moduleTransform_TZ","borderConnections[18]"
		,"moduleTransform_R","borderConnections[19]","root_joint_RX","borderConnections[1]"
		,"moduleTransform_RX","borderConnections[20]","moduleTransform_RY","borderConnections[21]"
		,"moduleTransform_RZ","borderConnections[22]","moduleTransform_globalScale","borderConnections[23]"
		,"root_joint_T","borderConnections[24]","root_joint_TX","borderConnections[25]","root_joint_TY"
		,"borderConnections[26]","root_joint_TZ","borderConnections[27]","hinge_joint_T","borderConnections[28]"
		,"hinge_joint_TX","borderConnections[29]","root_joint_RY","borderConnections[2]","hinge_joint_TY"
		,"borderConnections[30]","hinge_joint_TZ","borderConnections[31]","end_joint_T","borderConnections[32]"
		,"end_joint_TX","borderConnections[33]","end_joint_TY","borderConnections[34]","end_joint_TZ"
		,"borderConnections[35]","IK_root_joint_R","borderConnections[36]","IK_root_joint_RX"
		,"borderConnections[37]","IK_root_joint_RY","borderConnections[38]","IK_root_joint_RZ"
		,"borderConnections[39]","root_joint_RZ","borderConnections[3]","IK_hinge_joint_R"
		,"borderConnections[40]","IK_hinge_joint_RX","borderConnections[41]","IK_hinge_joint_RY"
		,"borderConnections[42]","IK_hinge_joint_RZ","borderConnections[43]","IK_end_joint_R"
		,"borderConnections[44]","IK_end_joint_RX","borderConnections[45]","IK_end_joint_RY"
		,"borderConnections[46]","IK_end_joint_RZ","borderConnections[47]","IK_hinge_joint_preferredAngle_representation_axis"
		,"borderConnections[48]","root_joint_rotateOrder","borderConnections[4]","hinge_joint_R"
		,"borderConnections[5]","hinge_joint_RX","borderConnections[6]","hinge_joint_RY","borderConnections[7]"
		,"hinge_joint_RZ","borderConnections[8]","hinge_joint_rotateOrder","borderConnections[9]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1_mirror:module_container";
	rename -uid "E02D9AB4-43D2-A0F5-9816-30A4F1C73883";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 34 ".boc";
	setAttr -s 13 ".ish";
	setAttr ".ish[24]" yes;
	setAttr ".ish[25]" yes;
	setAttr ".ish[26]" yes;
	setAttr ".ish[27]" yes;
	setAttr ".ish[28]" yes;
	setAttr ".ish[29]" yes;
	setAttr ".ish[30]" yes;
	setAttr ".ish[31]" yes;
	setAttr ".ish[32]" yes;
	setAttr ".ish[33]" yes;
	setAttr ".ish[34]" yes;
	setAttr ".ish[35]" yes;
	setAttr ".ish[48]" yes;
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/04/07 18:17:24";
	setAttr ".aal" -type "attributeAlias" {"root_joint_R","borderConnections[0]","end_joint_R"
		,"borderConnections[10]","end_joint_RX","borderConnections[11]","end_joint_RY","borderConnections[12]"
		,"end_joint_RZ","borderConnections[13]","end_joint_rotateOrder","borderConnections[14]"
		,"moduleTransform_T","borderConnections[15]","moduleTransform_TX","borderConnections[16]"
		,"moduleTransform_TY","borderConnections[17]","moduleTransform_TZ","borderConnections[18]"
		,"moduleTransform_R","borderConnections[19]","root_joint_RX","borderConnections[1]"
		,"moduleTransform_RX","borderConnections[20]","moduleTransform_RY","borderConnections[21]"
		,"moduleTransform_RZ","borderConnections[22]","moduleTransform_globalScale","borderConnections[23]"
		,"root_joint_T","borderConnections[24]","root_joint_TX","borderConnections[25]","root_joint_TY"
		,"borderConnections[26]","root_joint_TZ","borderConnections[27]","hinge_joint_T","borderConnections[28]"
		,"hinge_joint_TX","borderConnections[29]","root_joint_RY","borderConnections[2]","hinge_joint_TY"
		,"borderConnections[30]","hinge_joint_TZ","borderConnections[31]","end_joint_T","borderConnections[32]"
		,"end_joint_TX","borderConnections[33]","end_joint_TY","borderConnections[34]","end_joint_TZ"
		,"borderConnections[35]","IK_root_joint_R","borderConnections[36]","IK_root_joint_RX"
		,"borderConnections[37]","IK_root_joint_RY","borderConnections[38]","IK_root_joint_RZ"
		,"borderConnections[39]","root_joint_RZ","borderConnections[3]","IK_hinge_joint_R"
		,"borderConnections[40]","IK_hinge_joint_RX","borderConnections[41]","IK_hinge_joint_RY"
		,"borderConnections[42]","IK_hinge_joint_RZ","borderConnections[43]","IK_end_joint_R"
		,"borderConnections[44]","IK_end_joint_RX","borderConnections[45]","IK_end_joint_RY"
		,"borderConnections[46]","IK_end_joint_RZ","borderConnections[47]","IK_hinge_joint_preferredAngle_representation_axis"
		,"borderConnections[48]","root_joint_rotateOrder","borderConnections[4]","hinge_joint_R"
		,"borderConnections[5]","hinge_joint_RX","borderConnections[6]","hinge_joint_RY","borderConnections[7]"
		,"hinge_joint_RZ","borderConnections[8]","hinge_joint_rotateOrder","borderConnections[9]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:root_joint_translation_control_container";
	rename -uid "7A2CBE90-414E-6665-5F68-DC90E84E4C7E";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"root_joint_T","borderConnections[0]","root_joint_TX"
		,"borderConnections[1]","root_joint_TY","borderConnections[2]","root_joint_TZ","borderConnections[3]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:hinge_joint_translation_control_container";
	rename -uid "329B364D-4E3B-9D59-4EC1-AEBD9C9DCD1B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"hinge_joint_T","borderConnections[0]","hinge_joint_TX"
		,"borderConnections[1]","hinge_joint_TY","borderConnections[2]","hinge_joint_TZ","borderConnections[3]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:end_joint_translation_control_container";
	rename -uid "CA2F4207-4462-C088-7FC9-E086D98F7B05";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"end_joint_T","borderConnections[0]","end_joint_TX"
		,"borderConnections[1]","end_joint_TY","borderConnections[2]","end_joint_TZ","borderConnections[3]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:hook_container";
	rename -uid "9C01153B-4BE0-CDC9-7CC9-5691D84FEFAD";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 8 ".boc";
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/04/07 18:17:09";
	setAttr ".aal" -type "attributeAlias" {"hook_root_joint_R","borderConnections[0]"
		,"hook_root_joint_RX","borderConnections[1]","hook_root_joint_RY","borderConnections[2]"
		,"hook_root_joint_RZ","borderConnections[3]","hook_target_joint_R","borderConnections[4]"
		,"hook_target_joint_RX","borderConnections[5]","hook_target_joint_RY","borderConnections[6]"
		,"hook_target_joint_RZ","borderConnections[7]"} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:root_joint_hierarchy_representation_container";
	rename -uid "0CC1B33F-4CAA-4B39-54C4-3493C1764FCC";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:hinge_joint_hierarchy_representation_container";
	rename -uid "BAFD0E89-4101-5BA8-5900-62BC66A12C2C";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_container";
	rename -uid "83BCF72A-4B5A-DBF8-341E-11B2AF2D14A5";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/21 21:13:27";
	setAttr ".aal" -type "attributeAlias" {"axis","borderConnections[0]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:root_joint_ikHandle_scaleFactor";
	rename -uid "BB1B9AD3-45C0-2566-CE40-5DA98B406E3A";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:hinge_joint_scaleMultiply";
	rename -uid "0D0B9491-463E-21FD-7407-AE93C3D0E5E9";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:hinge_joint_ikHandle_scaleFactor";
	rename -uid "C9CBC0CF-4CCF-401D-7648-3DB89E9F6219";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:end_joint_scaleMultiply";
	rename -uid "A3B354B8-4079-56CC-1A21-258C6D580801";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "437FC754-4D65-F71A-B201-C6AA3A60572E";
	setAttr ".ihi" 0;
	setAttr -s 74 ".hyp";
createNode distanceBetween -n "HingeJoint__instance_1:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator";
	rename -uid "99DD33DF-46DC-A848-735F-3491817A2499";
lockNode -l 1 -lu 1;
createNode distanceBetween -n "HingeJoint__instance_1:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator";
	rename -uid "92179FE6-4DF5-320A-1763-A4B66517D93B";
lockNode -l 1 -lu 1;
createNode distanceBetween -n "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator";
	rename -uid "7A1CE1E5-47A4-38EA-6F50-8289E4E9F117";
lockNode -l 1 -lu 1;
createNode distanceBetween -n "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator";
	rename -uid "8E136074-4FAF-EC87-DBBE-5584FE5EDDA5";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor";
	rename -uid "FFC15580-496C-8AD8-7974-A389D4A5C48C";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue";
	rename -uid "8B1A2F74-4B58-9D1D-52D4-CA8CC1D3BFBA";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor";
	rename -uid "5A311231-49B6-5E04-47F0-4388947E11AA";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue";
	rename -uid "06D39B6F-4846-C3DA-AA94-599C07890D89";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "22A0AFDC-4944-EEF9-16DC-13A9BC7F03F9";
createNode materialInfo -n "materialInfo1";
	rename -uid "AD4FE921-41B4-8B86-456F-0D8001B73543";
createNode shadingEngine -n "HingeJoint__instance_1:root_joint_m_translation_control_SG";
	rename -uid "D54D9040-4DDF-EAF3-761A-13A5E35CAEDA";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode lambert -n "HingeJoint__instance_1:root_joint_m_translation_control";
	rename -uid "1848F91D-486E-679A-B8F3-E2B3C4635F83";
	setAttr ".c" -type "float3" 0.75800002 0.050785981 0.1018231 ;
lockNode -l 1 -lu 1;
createNode materialInfo -n "translation_control_materialInfo1";
	rename -uid "05D27CEE-4706-8101-C083-03B459ABDAD0";
createNode shadingEngine -n "HingeJoint__instance_1:hinge_joint_m_translation_control_SG";
	rename -uid "75B22405-433C-4F5B-9A86-A5984089A3EA";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode lambert -n "HingeJoint__instance_1:hinge_joint_m_translation_control";
	rename -uid "6240900D-4358-2943-CE0F-4F921686D7BA";
	setAttr ".c" -type "float3" 0.75800002 0.050785981 0.1018231 ;
lockNode -l 1 -lu 1;
createNode materialInfo -n "translation_control_materialInfo2";
	rename -uid "4276F50A-416C-3BE4-7BF0-E9A6130A2663";
createNode shadingEngine -n "HingeJoint__instance_1:end_joint_m_translation_control_SG";
	rename -uid "C67E54F3-453B-9E73-9B5B-A3810DD10D9A";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode lambert -n "HingeJoint__instance_1:end_joint_m_translation_control";
	rename -uid "44CD9FE1-4F07-9497-215B-929AC6A51322";
	setAttr ".c" -type "float3" 0.75800002 0.050785981 0.1018231 ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "translation_control_hyperLayout1";
	rename -uid "CFA339F2-442B-002B-3DA4-F9A78580DD86";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode hyperLayout -n "translation_control_hyperLayout2";
	rename -uid "B245512F-437C-3AD7-58B5-85B87D7875F2";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode hyperLayout -n "translation_control_hyperLayout3";
	rename -uid "D6E3EDBD-4D65-1752-8546-788DD4C99818";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode container -n "HingeJoint__instance_1:hook_root_joint_hook_representation_container";
	rename -uid "B6E56E83-432C-BB36-DD79-AC8B0ACCC26B";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:hook_root_joint_ikHandle_scaleFactor";
	rename -uid "FD0175FD-467F-83BC-1E36-9BAF1700D3AA";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 0.001 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:hook_target_joint_scaleMultiply";
	rename -uid "72F31862-4CED-FD1D-5CC9-BF919CB77376";
	setAttr ".i1" -type "float3" 0.001 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout2";
	rename -uid "40B386E7-42D6-90E8-512F-BD95AA5F253B";
	setAttr ".ihi" 0;
	setAttr -s 23 ".hyp";
createNode distanceBetween -n "HingeJoint__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator";
	rename -uid "151BF99C-4A76-5875-FFBD-84AB4FF44851";
lockNode -l 1 -lu 1;
createNode lambert -n "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation";
	rename -uid "13B436E3-4BCF-CF75-49DE-A3917FB0014B";
	setAttr ".c" -type "float3" 0.595788 0.69519699 0.75800002 ;
lockNode -l 1 -lu 1;
createNode shadingEngine -n "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation_SG";
	rename -uid "F577CB67-4B66-8B0A-4E34-EDB25B69F8B5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hook_representation_hyperLayout1";
	rename -uid "2FF8490D-4067-4CB6-0542-F58878C81E26";
	setAttr ".ihi" 0;
	setAttr -s 7 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "hook_representation_materialInfo1";
	rename -uid "3B67CE5A-40A5-6271-70FA-99B8A8A41AD2";
createNode lambert -n "HingeJoint__instance_1:root_joint_m_hierarchyRepresentation";
	rename -uid "B0CDD2AC-49EA-2069-120C-948B6C5D747D";
	setAttr ".c" -type "float3" 0.85100001 0.74200565 0.677396 ;
lockNode -l 1 -lu 1;
createNode shadingEngine -n "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG";
	rename -uid "2817D6DE-44D2-2A42-5DBC-2299CCA1ADFE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hierarchy_representation_hyperLayout1";
	rename -uid "6BE88FAB-435A-AFAE-B157-3AB332B5A8E9";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "hierarchy_representation_materialInfo1";
	rename -uid "D7FF1510-4F2F-340E-2AF6-E99C3E5EB8B3";
createNode lambert -n "HingeJoint__instance_1:hinge_joint_m_hierarchyRepresentation";
	rename -uid "666679A0-427C-5BE3-2D22-70BEF4F072B9";
	setAttr ".c" -type "float3" 0.85100001 0.74200565 0.677396 ;
lockNode -l 1 -lu 1;
createNode shadingEngine -n "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG";
	rename -uid "F3E2BFAD-4598-3D63-4EEE-36BA03E1ACEB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hierarchy_representation_hyperLayout2";
	rename -uid "DDFB75A1-4F65-3236-FDFF-9BA26ED32763";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "hierarchy_representation_materialInfo2";
	rename -uid "BF391172-4E28-AA06-F16E-AE979F062518";
createNode animCurveUA -n "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_rotateX";
	rename -uid "1C1BFCF9-4757-4A2F-709E-24ABD0EE00CD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 180 2 90 3 -90;
	setAttr ".kbd";
	setAttr ".kyts";
	setAttr ".kit";
	setAttr ".kot";
	setAttr ".ktl";
	setAttr ".kwl";
	setAttr ".kix";
	setAttr ".kiy";
	setAttr ".kox";
	setAttr ".koy";
lockNode -l 1 -lu 1;
createNode shadingEngine -n "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_SG";
	rename -uid "DEB47D5A-4E1F-EC7B-327A-7AADB1EE1075";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "preferredAngle_representation_hyperLayout1";
	rename -uid "29F20A7F-461B-BB8B-E89A-ABB66AF2B107";
	setAttr ".ihi" 0;
	setAttr -s 8 ".hyp";
	setAttr ".hyp[0].x" 583;
	setAttr ".hyp[0].y" -264;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 376;
	setAttr ".hyp[1].y" -334;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 108;
	setAttr ".hyp[2].y" -158;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 399;
	setAttr ".hyp[3].y" -32;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" -53;
	setAttr ".hyp[4].y" -463;
	setAttr ".hyp[4].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "HingeJoint__instance_1:IK_hinge_joint_m_preferredAngle_representation";
	rename -uid "C8C11CED-4860-67D1-070D-CA881BC31A21";
	setAttr ".c" -type "float3" 0.90200001 0.79193944 0.094710015 ;
lockNode -l 1 -lu 1;
createNode materialInfo -n "preferredAngle_representation_materialInfo1";
	rename -uid "B0FB344E-4E91-DA22-0C72-3A8EB1ACF6D9";
createNode container -n "HingeJoint__instance_1_mirror:root_joint_translation_control_container";
	rename -uid "CEF08356-4C69-3E56-EFBF-62B757BDE0EB";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"root_joint_T","borderConnections[0]","root_joint_TX"
		,"borderConnections[1]","root_joint_TY","borderConnections[2]","root_joint_TZ","borderConnections[3]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1_mirror:end_joint_translation_control_container";
	rename -uid "672B18F8-4C15-0466-A683-F3966A99C7AC";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"end_joint_T","borderConnections[0]","end_joint_TX"
		,"borderConnections[1]","end_joint_TY","borderConnections[2]","end_joint_TZ","borderConnections[3]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1_mirror:hook_container";
	rename -uid "FE6D9097-4A3F-2CE7-E652-89B61832CA23";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 8 ".boc";
	setAttr ".ctor" -type "string" "XTRMIZZ";
	setAttr ".cdat" -type "string" "2017/04/07 18:17:24";
	setAttr ".aal" -type "attributeAlias" {"hook_root_joint_R","borderConnections[0]"
		,"hook_root_joint_RX","borderConnections[1]","hook_root_joint_RY","borderConnections[2]"
		,"hook_root_joint_RZ","borderConnections[3]","hook_target_joint_R","borderConnections[4]"
		,"hook_target_joint_RX","borderConnections[5]","hook_target_joint_RY","borderConnections[6]"
		,"hook_target_joint_RZ","borderConnections[7]"} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_container";
	rename -uid "93593CDF-400A-5A61-DBCC-AC8118D95B54";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_container";
	rename -uid "95474BD7-44B2-4EED-1E3C-F484B6B06789";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_container";
	rename -uid "58617FE0-4117-DBF3-9330-83B662B40B99";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/21 21:13:27";
	setAttr ".aal" -type "attributeAlias" {"axis","borderConnections[0]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:root_joint_ikHandle_scaleFactor";
	rename -uid "8078BB39-4EB9-9F5C-0550-41BED496115C";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:hinge_joint_scaleMultiply";
	rename -uid "B1089967-44CC-E96F-09E3-0F877C9582BA";
	setAttr ".i1" -type "float3" -4.1231055 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_scaleFactor";
	rename -uid "4934F6E6-4762-E0DB-7C8F-89B53D08F9AF";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:end_joint_scaleMultiply";
	rename -uid "A33E199E-40EE-842A-6B00-17A7B17212F6";
	setAttr ".i1" -type "float3" -4.1231055 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor";
	rename -uid "C97EA7D6-43C0-DA10-BD25-3D95F4B5BB0C";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" -6.4563389 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue";
	rename -uid "005E54A4-4576-C228-5AA0-668D759C0F8F";
	setAttr ".i1" -type "float3" 6.4563389 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor";
	rename -uid "72FF5973-4D23-CBA9-450A-DB8D4B9EBFE0";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" -6.4563451 1 1 ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue";
	rename -uid "1F1AF553-42C8-7415-7DE8-F09C69C3F574";
	setAttr ".i1" -type "float3" 6.4563451 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container";
	rename -uid "4D9A9FEC-45D0-643A-6E48-8CB81645DE19";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"hinge_joint_T","borderConnections[0]","hinge_joint_TX"
		,"borderConnections[1]","hinge_joint_TY","borderConnections[2]","hinge_joint_TZ","borderConnections[3]"
		} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout3";
	rename -uid "7D6A44DC-445F-1533-C67F-7AAEBF47AC15";
	setAttr ".ihi" 0;
	setAttr -s 74 ".hyp";
createNode distanceBetween -n "HingeJoint__instance_1_mirror:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator";
	rename -uid "EC4010BC-4124-BB50-0195-B6B88A9B77CB";
lockNode -l 1 -lu 1;
createNode distanceBetween -n "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator";
	rename -uid "819C800A-4D34-6D57-A5E3-459AE95FE745";
lockNode -l 1 -lu 1;
createNode distanceBetween -n "HingeJoint__instance_1_mirror:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator";
	rename -uid "5BFAE241-4CE7-A05F-77AA-AC8BEB317D1A";
lockNode -l 1 -lu 1;
createNode distanceBetween -n "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator";
	rename -uid "738AE484-47D3-4586-260B-169C2B698F10";
lockNode -l 1 -lu 1;
createNode shadingEngine -n "HingeJoint__instance_1_mirror:root_joint_m_translation_control_SG";
	rename -uid "EDE2E0C5-471B-86CD-6365-C1895AA63D0E";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "translation_control_hyperLayout4";
	rename -uid "73D157A9-4FDC-8931-162E-B98511302A44";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "HingeJoint__instance_1_mirror:root_joint_m_translation_control";
	rename -uid "7EA0F894-44EF-2710-DDCF-9A969AD2D23C";
	setAttr ".c" -type "float3" 0.75800002 0.050785981 0.1018231 ;
lockNode -l 1 -lu 1;
createNode materialInfo -n "translation_control_materialInfo3";
	rename -uid "9F2B2EC4-466D-FD4B-07EF-0184532F4A6A";
createNode shadingEngine -n "HingeJoint__instance_1_mirror:end_joint_m_translation_control_SG";
	rename -uid "31FDF422-48BE-78DC-BE85-5CAF470DDDB3";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "translation_control_hyperLayout6";
	rename -uid "1D66A33F-4CFA-2AAA-4D67-96A3B7043182";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "HingeJoint__instance_1_mirror:end_joint_m_translation_control";
	rename -uid "CC1D2AFE-4EB0-30BA-3FBD-9E90ADF4701E";
	setAttr ".c" -type "float3" 0.75800002 0.050785981 0.1018231 ;
lockNode -l 1 -lu 1;
createNode materialInfo -n "translation_control_materialInfo5";
	rename -uid "0CEDDCAC-43A8-8F49-6189-BE8B5F90FEF5";
createNode container -n "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_container";
	rename -uid "F36831E8-4FFF-8991-BF3D-76A7C3670790";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:hook_target_joint_scaleMultiply";
	rename -uid "85A04C80-4393-7348-95D2-23987C1A2C1B";
	setAttr ".i1" -type "float3" 0.001 0 0 ;
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_scaleFactor";
	rename -uid "B74F585F-4919-C726-5654-F1B17BCD3477";
	setAttr ".op" 2;
	setAttr ".i1";
	setAttr ".i2" -type "float3" 0.001 1 1 ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout4";
	rename -uid "6260DBDF-4F59-D574-0460-2082DDB0B62A";
	setAttr ".ihi" 0;
	setAttr -s 23 ".hyp";
createNode distanceBetween -n "HingeJoint__instance_1_mirror:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator";
	rename -uid "1DFDBE0E-47F2-9D98-7BEE-6ABE128B8D1F";
lockNode -l 1 -lu 1;
createNode lambert -n "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation";
	rename -uid "872DBB39-48CC-4A0C-CF3A-E9A7611F5AB2";
	setAttr ".c" -type "float3" 0.595788 0.69519699 0.75800002 ;
lockNode -l 1 -lu 1;
createNode shadingEngine -n "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation_SG";
	rename -uid "7E2B2976-485E-7BBD-67D6-6BBA7CCF4DDA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hook_representation_hyperLayout2";
	rename -uid "96AAB3A7-4B0A-CE5A-5971-AA826316A734";
	setAttr ".ihi" 0;
	setAttr -s 7 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "hook_representation_materialInfo2";
	rename -uid "6DEF82C4-4477-779A-9495-438AC3A1AC28";
createNode lambert -n "HingeJoint__instance_1_mirror:root_joint_m_hierarchyRepresentation";
	rename -uid "DCEF7681-4FB4-91E3-FD89-0B9D02ACB032";
	setAttr ".c" -type "float3" 0.85100001 0.74200565 0.677396 ;
lockNode -l 1 -lu 1;
createNode shadingEngine -n "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG";
	rename -uid "A12371F4-45DF-915C-0253-2FBE3B5EB4CD";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hierarchy_representation_hyperLayout3";
	rename -uid "D6834264-4CB0-CC05-F0EE-29BCF7609F8A";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "hierarchy_representation_materialInfo3";
	rename -uid "C4948357-4610-D0D7-3C02-EABBBAD99830";
createNode lambert -n "HingeJoint__instance_1_mirror:hinge_joint_m_hierarchyRepresentation";
	rename -uid "51927DCF-4645-8A23-BF14-F5BD8DD81FC0";
	setAttr ".c" -type "float3" 0.85100001 0.74200565 0.677396 ;
lockNode -l 1 -lu 1;
createNode shadingEngine -n "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG";
	rename -uid "F557D96B-4F73-6B2C-D8C7-CC8A276A333C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hierarchy_representation_hyperLayout4";
	rename -uid "B9466055-4BCE-3915-9C42-D4A727DC4748";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "hierarchy_representation_materialInfo4";
	rename -uid "4C7937E7-40C9-FDC1-2414-CC88A11A48BE";
createNode shadingEngine -n "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_SG";
	rename -uid "B5BC171C-46C6-4E4D-73C1-5BBDC1D5F688";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode lambert -n "HingeJoint__instance_1_mirror:IK_hinge_joint_m_preferredAngle_representation";
	rename -uid "68F8A55B-4A88-3E91-62EE-DD931704C432";
	setAttr ".c" -type "float3" 0.90200001 0.79193944 0.094710015 ;
lockNode -l 1 -lu 1;
createNode animCurveUA -n "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_rotateX";
	rename -uid "610451BF-4A30-8D56-6078-AEB5364AF001";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 180 2 90 3 -90;
	setAttr ".kbd";
	setAttr ".kyts";
	setAttr ".kit";
	setAttr ".kot";
	setAttr ".ktl";
	setAttr ".kwl";
	setAttr ".kix";
	setAttr ".kiy";
	setAttr ".kox";
	setAttr ".koy";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "preferredAngle_representation_hyperLayout2";
	rename -uid "4ABBE154-45FF-6529-F73D-2999BC522C64";
	setAttr ".ihi" 0;
	setAttr -s 8 ".hyp";
	setAttr ".hyp[0].x" 583;
	setAttr ".hyp[0].y" -264;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 376;
	setAttr ".hyp[1].y" -334;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 108;
	setAttr ".hyp[2].y" -158;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 399;
	setAttr ".hyp[3].y" -32;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" -53;
	setAttr ".hyp[4].y" -463;
	setAttr ".hyp[4].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "translation_control_materialInfo4";
	rename -uid "06CE42A7-428D-6CDE-3FD4-CD835F009104";
createNode shadingEngine -n "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control_SG";
	rename -uid "A3967FDD-4241-364D-4846-648ABC49D133";
	setAttr ".ro" yes;
lockNode -l 1 -lu 1;
createNode lambert -n "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control";
	rename -uid "FA8EFCF6-4D73-1C0B-475B-A4BA1A487186";
	setAttr ".c" -type "float3" 0.75800002 0.050785981 0.1018231 ;
lockNode -l 1 -lu 1;
createNode materialInfo -n "preferredAngle_representation_materialInfo2";
	rename -uid "F172C4C4-4E63-816C-2ACE-B28FE605D1BC";
createNode expression -n "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression";
	rename -uid "AB064BC3-4E07-3C01-A3FC-4FAE3711667F";
	setAttr -k on ".nds";
	setAttr -s 6 ".in";
	setAttr -s 6 ".in";
	setAttr -s 6 ".out";
	setAttr ".ixp" -type "string" "namespace -setNamespace \":\";\n$worldSpacePos = `xform -q -ws -translation HingeJoint__instance_1:module_transform`; \n$worldSpaceOrient = `xform -q -ws -rotation HingeJoint__instance_1:module_transform`; \n.O[0] = .I[0];\n.O[1] = .I[1];\n.O[2] = .I[2];\n.O[3] = .I[3];\n.O[4] = .I[4];\n.O[5] = .I[5];\n.O[0] = $worldSpacePos[0];\n.O[3] = $worldSpaceOrient[0]; \n.O[1] = $worldSpacePos[1];\n.O[4] = $worldSpaceOrient[1]; \n.O[2] = $worldSpacePos[2];\n.O[5] = $worldSpaceOrient[2];";
lockNode -l 1 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "8B6459E0-451B-D21C-574F-EE9A0E0AF441";
	setAttr ".cf" 57.295779513082323;
lockNode -l 1 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "9EA905CB-4453-4840-37E4-F697253FC48C";
	setAttr ".cf" 57.295779513082323;
lockNode -l 1 ;
createNode unitConversion -n "unitConversion5";
	rename -uid "272607E7-4B16-28AE-09BD-E6BAD0D981E6";
	setAttr ".cf" 57.295779513082323;
lockNode -l 1 ;
createNode unitConversion -n "unitConversion2";
	rename -uid "9156ECF1-4512-9800-326C-97A7E9787440";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 ;
createNode unitConversion -n "unitConversion4";
	rename -uid "D5E0AAA5-41CC-8959-F01B-4DAF1E027081";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 ;
createNode unitConversion -n "unitConversion6";
	rename -uid "36D32C4B-4E82-ADC2-7019-85A386C918C7";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 ;
createNode hyperLayout -n "translation_control_hyperLayout5";
	rename -uid "3166B21F-4F22-04BD-96FB-5AA072C8C836";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1BF840AA-47C5-5BCF-ACF9-EC95FF0F8DF2";
	setAttr -s 16 ".lnk";
	setAttr -s 16 ".slnk";
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
	setAttr -s 16 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 18 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 30 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
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
connectAttr "HingeJoint__instance_1:root_joint__pointConstraint.ctx" "HingeJoint__instance_1:root_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint__pointConstraint.cty" "HingeJoint__instance_1:root_joint.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint__pointConstraint.ctz" "HingeJoint__instance_1:root_joint.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.s" "HingeJoint__instance_1:hinge_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_scaleMultiply.ox" "HingeJoint__instance_1:hinge_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.s" "HingeJoint__instance_1:end_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_scaleMultiply.ox" "HingeJoint__instance_1:end_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.tx" "HingeJoint__instance_1:hinge_joint_ikEffector.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.ty" "HingeJoint__instance_1:hinge_joint_ikEffector.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.tz" "HingeJoint__instance_1:hinge_joint_ikEffector.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.pim" "HingeJoint__instance_1:root_joint__pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.rp" "HingeJoint__instance_1:root_joint__pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.rpt" "HingeJoint__instance_1:root_joint__pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.t" "HingeJoint__instance_1:root_joint__pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rp" "HingeJoint__instance_1:root_joint__pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rpt" "HingeJoint__instance_1:root_joint__pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.pm" "HingeJoint__instance_1:root_joint__pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint__pointConstraint.w0" "HingeJoint__instance_1:root_joint__pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.tx" "HingeJoint__instance_1:root_joint_ikEffector.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.ty" "HingeJoint__instance_1:root_joint_ikEffector.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.tz" "HingeJoint__instance_1:root_joint_ikEffector.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.msg" "HingeJoint__instance_1:root_joint_ikHandle.hsj"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikEffector.hp" "HingeJoint__instance_1:root_joint_ikHandle.hee"
		 -l on;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_1:root_joint_ikHandle.hsv" -l
		 on;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.ctx" "HingeJoint__instance_1:root_joint_ikHandle.pvx"
		 -l on;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.cty" "HingeJoint__instance_1:root_joint_ikHandle.pvy"
		 -l on;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.ctz" "HingeJoint__instance_1:root_joint_ikHandle.pvz"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_1:root_joint_ikHandle.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_1:root_joint_ikHandle.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_1:root_joint_ikHandle.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle.pim" "root_joint_ikHandle_poleVectorConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.pm" "root_joint_ikHandle_poleVectorConstraint1.ps"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.t" "root_joint_ikHandle_poleVectorConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator.t" "root_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator.rp" "root_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator.rpt" "root_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator.pm" "root_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		 -l on;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.w0" "root_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle.pim" "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle.rp" "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle.rpt" "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator.t" "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator.rp" "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator.rpt" "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator.pm" "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_1:root_joint_rootPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_1:root_joint_rootPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_1:root_joint_rootPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator.pim" "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator.rp" "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator.rpt" "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.t" "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.rp" "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.rpt" "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.pm" "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.ctx" "HingeJoint__instance_1:hinge_joint_endPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.cty" "HingeJoint__instance_1:hinge_joint_endPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.ctz" "HingeJoint__instance_1:hinge_joint_endPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator.pim" "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator.rp" "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator.rpt" "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.t" "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.rp" "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.rpt" "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.pm" "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.w0" "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.msg" "HingeJoint__instance_1:hinge_joint_ikHandle.hsj"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikEffector.hp" "HingeJoint__instance_1:hinge_joint_ikHandle.hee"
		 -l on;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_1:hinge_joint_ikHandle.hsv" -l
		 on;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.ctx" "HingeJoint__instance_1:hinge_joint_ikHandle.pvx"
		 -l on;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.cty" "HingeJoint__instance_1:hinge_joint_ikHandle.pvy"
		 -l on;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.ctz" "HingeJoint__instance_1:hinge_joint_ikHandle.pvz"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_1:hinge_joint_ikHandle.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_1:hinge_joint_ikHandle.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_1:hinge_joint_ikHandle.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle.pim" "hinge_joint_ikHandle_poleVectorConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.pm" "hinge_joint_ikHandle_poleVectorConstraint1.ps"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.t" "hinge_joint_ikHandle_poleVectorConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator.t" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator.rp" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator.rpt" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator.pm" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		 -l on;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.w0" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle.pim" "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle.rp" "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle.rpt" "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator.t" "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator.rp" "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator.rpt" "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator.pm" "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_1:hinge_joint_rootPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_1:hinge_joint_rootPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_1:hinge_joint_rootPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator.pim" "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator.rp" "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator.rpt" "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.t" "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.rp" "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.rpt" "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.pm" "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.ctx" "HingeJoint__instance_1:end_joint_endPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.cty" "HingeJoint__instance_1:end_joint_endPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.ctz" "HingeJoint__instance_1:end_joint_endPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator.pim" "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator.rp" "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator.rpt" "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.t" "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.rp" "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.rpt" "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.pm" "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.w0" "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.ctx" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.tx"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cty" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.ty"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.ctz" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.tz"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crx" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.rx"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cry" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.ry"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crz" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.tx" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.sx"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.csy" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.sy"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.csz" "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.sz"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.ro" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cro"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.pim" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.rp" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.rpt" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.t" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.rp" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.rpt" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.r" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.ro" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.s" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.pm" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.jo" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.ssc" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.is" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tis"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.w0" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.pim" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.s" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.pm" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.w0" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.ctx" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.tx"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cty" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.ty"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.ctz" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.tz"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crx" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.rx"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cry" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.ry"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crz" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.tx" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.sx"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.csy" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.sy"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.csz" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.sz"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.ro" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cro"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.pim" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.rp" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.rpt" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.t" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.rp" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.rpt" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.r" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.ro" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.s" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.pm" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.jo" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.ssc" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.is" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tis"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.w0" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.pim" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.s" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.pm" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.w0" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctx" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.tx"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cty" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.ty"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctz" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.tz"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crx" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.rx"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cry" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.ry"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crz" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.rz"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csx" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.sx"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csy" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.sy"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csz" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.sz"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_rotateX.o" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation.rx"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.ro" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cro"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.pim" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.rp" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.rpt" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.t" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.rp" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.rpt" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.r" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.ro" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.s" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.pm" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.jo" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tjo"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.ssc" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tsc"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.is" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tis"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.w0" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.pim" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.s" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.pm" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tpm"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.w0" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_pointConstraint.ctx" "HingeJoint__instance_1:hook_root_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_pointConstraint.cty" "HingeJoint__instance_1:hook_root_joint.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_pointConstraint.ctz" "HingeJoint__instance_1:hook_root_joint.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.s" "HingeJoint__instance_1:hook_target_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_scaleMultiply.ox" "HingeJoint__instance_1:hook_target_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint.tx" "HingeJoint__instance_1:hook_root_joint_ikEffector.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint.ty" "HingeJoint__instance_1:hook_root_joint_ikEffector.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint.tz" "HingeJoint__instance_1:hook_root_joint_ikEffector.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.pim" "HingeJoint__instance_1:hook_root_joint_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.rp" "HingeJoint__instance_1:hook_root_joint_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.rpt" "HingeJoint__instance_1:hook_root_joint_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.t" "HingeJoint__instance_1:hook_root_joint_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rp" "HingeJoint__instance_1:hook_root_joint_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rpt" "HingeJoint__instance_1:hook_root_joint_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.pm" "HingeJoint__instance_1:hook_root_joint_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_pointConstraint.w0" "HingeJoint__instance_1:hook_root_joint_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "unhookedTarget_pointConstraint1.ctx" "HingeJoint__instance_1:unhookedTarget.tx"
		 -l on;
connectAttr "unhookedTarget_pointConstraint1.cty" "HingeJoint__instance_1:unhookedTarget.ty"
		 -l on;
connectAttr "unhookedTarget_pointConstraint1.ctz" "HingeJoint__instance_1:unhookedTarget.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:unhookedTarget.pim" "unhookedTarget_pointConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:unhookedTarget.rp" "unhookedTarget_pointConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:unhookedTarget.rpt" "unhookedTarget_pointConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.t" "unhookedTarget_pointConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rp" "unhookedTarget_pointConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rpt" "unhookedTarget_pointConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.pm" "unhookedTarget_pointConstraint1.tg[0].tpm"
		 -l on;
connectAttr "unhookedTarget_pointConstraint1.w0" "unhookedTarget_pointConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.msg" "HingeJoint__instance_1:hook_root_joint_ikHandle.hsj"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikEffector.hp" "HingeJoint__instance_1:hook_root_joint_ikHandle.hee"
		 -l on;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_1:hook_root_joint_ikHandle.hsv"
		 -l on;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.ctx" "HingeJoint__instance_1:hook_root_joint_ikHandle.pvx"
		 -l on;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.cty" "HingeJoint__instance_1:hook_root_joint_ikHandle.pvy"
		 -l on;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.ctz" "HingeJoint__instance_1:hook_root_joint_ikHandle.pvz"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_1:hook_root_joint_ikHandle.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_1:hook_root_joint_ikHandle.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_1:hook_root_joint_ikHandle.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle.pim" "hook_root_joint_ikHandle_poleVectorConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.pm" "hook_root_joint_ikHandle_poleVectorConstraint1.ps"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.t" "hook_root_joint_ikHandle_poleVectorConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocator.t" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocator.rp" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocator.rpt" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocator.pm" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		 -l on;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.w0" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle.pim" "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle.rp" "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle.rpt" "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocator.t" "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocator.rp" "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocator.rpt" "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocator.pm" "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_1:hook_root_joint_rootPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_1:hook_root_joint_rootPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_1:hook_root_joint_rootPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator.pim" "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator.rp" "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator.rpt" "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.t" "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.rp" "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.rpt" "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.pm" "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_pointConstraint.ctx" "HingeJoint__instance_1:hook_target_joint_endPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_pointConstraint.cty" "HingeJoint__instance_1:hook_target_joint_endPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_pointConstraint.ctz" "HingeJoint__instance_1:hook_target_joint_endPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocator.pim" "HingeJoint__instance_1:hook_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocator.rp" "HingeJoint__instance_1:hook_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocator.rpt" "HingeJoint__instance_1:hook_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:unhookedTarget.t" "HingeJoint__instance_1:hook_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:unhookedTarget.rp" "HingeJoint__instance_1:hook_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:unhookedTarget.rpt" "HingeJoint__instance_1:hook_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:unhookedTarget.pm" "HingeJoint__instance_1:hook_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_pointConstraint.w0" "HingeJoint__instance_1:hook_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.ctx" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.tx"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.cty" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.ty"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.ctz" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.tz"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.crx" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.rx"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.cry" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.ry"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.crz" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint.tx" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.sx"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.csy" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.sy"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.csz" "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.sz"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.ro" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.cro"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.pim" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.rp" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.rpt" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.t" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.rp" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.rpt" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.r" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.ro" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.s" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.pm" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.jo" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.ssc" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.is" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tis"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.w0" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.pim" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.s" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.pm" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.w0" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctx" "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cty" "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctz" "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crx" "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cry" "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crz" "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cro"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.t" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rp" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rpt" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.r" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.ro" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.s" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.pm" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.w0" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tw"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctx" "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cty" "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctz" "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crx" "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cry" "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crz" "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cro"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.t" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.rp" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.rpt" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.r" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.ro" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.s" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.pm" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.w0" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tw"
		 -l on;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.ctx" "HingeJoint__instance_1:IK_root_joint_positionLocator.tx"
		 -l on;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.cty" "HingeJoint__instance_1:IK_root_joint_positionLocator.ty"
		 -l on;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.ctz" "HingeJoint__instance_1:IK_root_joint_positionLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint.s" "HingeJoint__instance_1:IK_hinge_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.ox" "HingeJoint__instance_1:IK_hinge_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.s" "HingeJoint__instance_1:IK_end_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.ox" "HingeJoint__instance_1:IK_end_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_end_joint.tx" "HingeJoint__instance_1:IK_root_joint_ikEffector.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_end_joint.ty" "HingeJoint__instance_1:IK_root_joint_ikEffector.ty"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_end_joint.tz" "HingeJoint__instance_1:IK_root_joint_ikEffector.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_positionLocator.pim" "IK_root_joint_positionLocator_pointConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_positionLocator.rp" "IK_root_joint_positionLocator_pointConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_positionLocator.rpt" "IK_root_joint_positionLocator_pointConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.t" "IK_root_joint_positionLocator_pointConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rp" "IK_root_joint_positionLocator_pointConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.rpt" "IK_root_joint_positionLocator_pointConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.pm" "IK_root_joint_positionLocator_pointConstraint1.tg[0].tpm"
		 -l on;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.w0" "IK_root_joint_positionLocator_pointConstraint1.tg[0].tw"
		 -l on;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.ctx" "HingeJoint__instance_1:IK_hinge_joint_positionLocator.tx"
		 -l on;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.cty" "HingeJoint__instance_1:IK_hinge_joint_positionLocator.ty"
		 -l on;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.ctz" "HingeJoint__instance_1:IK_hinge_joint_positionLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocator.pim" "IK_hinge_joint_positionLocator_pointConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocator.rp" "IK_hinge_joint_positionLocator_pointConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocator.rpt" "IK_hinge_joint_positionLocator_pointConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.t" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.rp" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.rpt" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.pm" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].tpm"
		 -l on;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.w0" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].tw"
		 -l on;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.ctx" "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator.tx"
		 -l on;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.cty" "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator.ty"
		 -l on;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.ctz" "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint.msg" "HingeJoint__instance_1:IK_root_joint_ikHandle.hsj"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikEffector.hp" "HingeJoint__instance_1:IK_root_joint_ikHandle.hee"
		 -l on;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_1:IK_root_joint_ikHandle.hsv"
		 -l on;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.ctx" "HingeJoint__instance_1:IK_root_joint_ikHandle.pvx"
		 -l on;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.cty" "HingeJoint__instance_1:IK_root_joint_ikHandle.pvy"
		 -l on;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.ctz" "HingeJoint__instance_1:IK_root_joint_ikHandle.pvz"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikHandle.pim" "IK_root_joint_ikHandle_poleVectorConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint.pm" "IK_root_joint_ikHandle_poleVectorConstraint1.ps"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint.t" "IK_root_joint_ikHandle_poleVectorConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocator.t" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocator.rp" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocator.rpt" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocator.pm" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		 -l on;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.w0" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator.pim" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator.rp" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.crp"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator.rpt" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.crt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.t" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.rp" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.rpt" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.pm" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].tpm"
		 -l on;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.w0" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.sy" "HingeJoint__instance_1:module_transform.sx"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.sy" "HingeJoint__instance_1:module_transform.sz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint__pointConstraint.ctx" "HingeJoint__instance_1_mirror:root_joint.tx"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint__pointConstraint.cty" "HingeJoint__instance_1_mirror:root_joint.ty"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint__pointConstraint.ctz" "HingeJoint__instance_1_mirror:root_joint.tz"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint.s" "HingeJoint__instance_1_mirror:hinge_joint.is"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_scaleMultiply.ox" "HingeJoint__instance_1_mirror:hinge_joint.tx"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.s" "HingeJoint__instance_1_mirror:end_joint.is"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_scaleMultiply.ox" "HingeJoint__instance_1_mirror:end_joint.tx"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint.tx" "HingeJoint__instance_1_mirror:hinge_joint_ikEffector.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint.ty" "HingeJoint__instance_1_mirror:hinge_joint_ikEffector.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint.tz" "HingeJoint__instance_1_mirror:hinge_joint_ikEffector.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.pim" "HingeJoint__instance_1_mirror:root_joint__pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.rp" "HingeJoint__instance_1_mirror:root_joint__pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.rpt" "HingeJoint__instance_1_mirror:root_joint__pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.t" "HingeJoint__instance_1_mirror:root_joint__pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rp" "HingeJoint__instance_1_mirror:root_joint__pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rpt" "HingeJoint__instance_1_mirror:root_joint__pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.pm" "HingeJoint__instance_1_mirror:root_joint__pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint__pointConstraint.w0" "HingeJoint__instance_1_mirror:root_joint__pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.tx" "HingeJoint__instance_1_mirror:root_joint_ikEffector.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.ty" "HingeJoint__instance_1_mirror:root_joint_ikEffector.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.tz" "HingeJoint__instance_1_mirror:root_joint_ikEffector.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.msg" "HingeJoint__instance_1_mirror:root_joint_ikHandle.hsj"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikEffector.hp" "HingeJoint__instance_1_mirror:root_joint_ikHandle.hee"
		 -l on;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_1_mirror:root_joint_ikHandle.hsv"
		 -l on;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.ctx" "HingeJoint__instance_1_mirror:root_joint_ikHandle.pvx"
		 -l on;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.cty" "HingeJoint__instance_1_mirror:root_joint_ikHandle.pvy"
		 -l on;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.ctz" "HingeJoint__instance_1_mirror:root_joint_ikHandle.pvz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_1_mirror:root_joint_ikHandle.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_1_mirror:root_joint_ikHandle.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_1_mirror:root_joint_ikHandle.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle.pim" "root_joint_ikHandle_poleVectorConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.pm" "root_joint_ikHandle_poleVectorConstraint2.ps"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.t" "root_joint_ikHandle_poleVectorConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator.t" "root_joint_ikHandle_poleVectorConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator.rp" "root_joint_ikHandle_poleVectorConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator.rpt" "root_joint_ikHandle_poleVectorConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator.pm" "root_joint_ikHandle_poleVectorConstraint2.tg[0].tpm"
		 -l on;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.w0" "root_joint_ikHandle_poleVectorConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle.pim" "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle.rp" "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle.rpt" "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.t" "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.rp" "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.rpt" "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.pm" "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator.pim" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator.rp" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator.rpt" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.t" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.rp" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.rpt" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.pm" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.ctx" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.cty" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.ctz" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.pim" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.rp" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.rpt" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.t" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.rp" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.rpt" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.pm" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.w0" "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.msg" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.hsj"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikEffector.hp" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.hee"
		 -l on;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.hsv"
		 -l on;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint2.ctx" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.pvx"
		 -l on;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint2.cty" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.pvy"
		 -l on;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint2.ctz" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.pvz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.pim" "hinge_joint_ikHandle_poleVectorConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.pm" "hinge_joint_ikHandle_poleVectorConstraint2.ps"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.t" "hinge_joint_ikHandle_poleVectorConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator.t" "hinge_joint_ikHandle_poleVectorConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator.rp" "hinge_joint_ikHandle_poleVectorConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator.rpt" "hinge_joint_ikHandle_poleVectorConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator.pm" "hinge_joint_ikHandle_poleVectorConstraint2.tg[0].tpm"
		 -l on;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint2.w0" "hinge_joint_ikHandle_poleVectorConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.pim" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.rp" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.rpt" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator.t" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator.rp" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator.rpt" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator.pm" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator.pim" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator.rp" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator.rpt" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.t" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.rp" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.rpt" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.pm" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.ctx" "HingeJoint__instance_1_mirror:end_joint_endPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.cty" "HingeJoint__instance_1_mirror:end_joint_endPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.ctz" "HingeJoint__instance_1_mirror:end_joint_endPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator.pim" "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator.rp" "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator.rpt" "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.t" "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.rp" "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.rpt" "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.pm" "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.w0" "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.ctx" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.tx"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.cty" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.ty"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.ctz" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.tz"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.crx" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.rx"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.cry" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.ry"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.crz" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.tx" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.sx"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.csy" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.sy"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.csz" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.sz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.ro" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.cro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.pim" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.rp" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.rpt" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.t" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.rp" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.rpt" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.r" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.ro" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.s" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.pm" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.jo" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tjo"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.ssc" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tsc"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint.is" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tis"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.w0" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.pim" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.s" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.pm" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.tg[0].tpm"
		 -l on;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.w0" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.tg[0].tw"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.ctx" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.tx"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.cty" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.ty"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.ctz" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.tz"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.crx" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.rx"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.cry" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.ry"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.crz" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint.tx" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.sx"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.csy" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.sy"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.csz" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.sz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.ro" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.cro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.pim" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.rp" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.rpt" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.t" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.rp" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.rpt" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.r" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.ro" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.s" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.pm" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.jo" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tjo"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.ssc" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tsc"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint.is" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tis"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.w0" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.pim" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.s" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.pm" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.tg[0].tpm"
		 -l on;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.w0" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.tg[0].tw"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.ctx" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.tx"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.cty" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.ty"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.ctz" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.tz"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.crx" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.rx"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.cry" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.ry"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.crz" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.rz"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.csx" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.sx"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.csy" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.sy"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.csz" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.sz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_rotateX.o" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation.rx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.ro" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.cro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.pim" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.rp" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.rpt" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.t" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.rp" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.rpt" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.r" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.ro" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.s" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.pm" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.jo" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].tjo"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.ssc" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].tsc"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.is" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].tis"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.w0" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.pim" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.s" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.pm" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.tg[0].tpm"
		 -l on;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.w0" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.ctx" "HingeJoint__instance_1_mirror:hook_root_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.cty" "HingeJoint__instance_1_mirror:hook_root_joint.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.ctz" "HingeJoint__instance_1_mirror:hook_root_joint.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.s" "HingeJoint__instance_1_mirror:hook_target_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_scaleMultiply.ox" "HingeJoint__instance_1_mirror:hook_target_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.tx" "HingeJoint__instance_1_mirror:hook_root_joint_ikEffector.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.ty" "HingeJoint__instance_1_mirror:hook_root_joint_ikEffector.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.tz" "HingeJoint__instance_1_mirror:hook_root_joint_ikEffector.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.pim" "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.rp" "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.rpt" "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.t" "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rp" "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rpt" "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.pm" "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.w0" "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "unhookedTarget_pointConstraint2.ctx" "HingeJoint__instance_1_mirror:unhookedTarget.tx"
		 -l on;
connectAttr "unhookedTarget_pointConstraint2.cty" "HingeJoint__instance_1_mirror:unhookedTarget.ty"
		 -l on;
connectAttr "unhookedTarget_pointConstraint2.ctz" "HingeJoint__instance_1_mirror:unhookedTarget.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:unhookedTarget.pim" "unhookedTarget_pointConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:unhookedTarget.rp" "unhookedTarget_pointConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:unhookedTarget.rpt" "unhookedTarget_pointConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.t" "unhookedTarget_pointConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rp" "unhookedTarget_pointConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rpt" "unhookedTarget_pointConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.pm" "unhookedTarget_pointConstraint2.tg[0].tpm"
		 -l on;
connectAttr "unhookedTarget_pointConstraint2.w0" "unhookedTarget_pointConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.msg" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.hsj"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikEffector.hp" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.hee"
		 -l on;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.hsv"
		 -l on;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.ctx" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.pvx"
		 -l on;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.cty" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.pvy"
		 -l on;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.ctz" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.pvz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.pim" "hook_root_joint_ikHandle_poleVectorConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.pm" "hook_root_joint_ikHandle_poleVectorConstraint2.ps"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.t" "hook_root_joint_ikHandle_poleVectorConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocator.t" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocator.rp" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocator.rpt" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocator.pm" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].tpm"
		 -l on;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.w0" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.pim" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.rp" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.rpt" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.t" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.rp" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.rpt" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.pm" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator.pim" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator.rp" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator.rpt" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.t" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.rp" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.rpt" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.pm" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_pointConstraint.ctx" "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_pointConstraint.cty" "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_pointConstraint.ctz" "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.pim" "HingeJoint__instance_1_mirror:hook_pointConstraint.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.rp" "HingeJoint__instance_1_mirror:hook_pointConstraint.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.rpt" "HingeJoint__instance_1_mirror:hook_pointConstraint.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:unhookedTarget.t" "HingeJoint__instance_1_mirror:hook_pointConstraint.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:unhookedTarget.rp" "HingeJoint__instance_1_mirror:hook_pointConstraint.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:unhookedTarget.rpt" "HingeJoint__instance_1_mirror:hook_pointConstraint.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:unhookedTarget.pm" "HingeJoint__instance_1_mirror:hook_pointConstraint.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_pointConstraint.w0" "HingeJoint__instance_1_mirror:hook_pointConstraint.tg[0].tw"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.ctx" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.tx"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.cty" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.ty"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.ctz" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.tz"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.crx" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.rx"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.cry" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.ry"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.crz" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.tx" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.sx"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.csy" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.sy"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.csz" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.sz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.ro" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.cro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.pim" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.rp" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.rpt" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.t" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.rp" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.rpt" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.r" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.ro" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.s" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.pm" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tpm"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.jo" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tjo"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.ssc" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tsc"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.is" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tis"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.w0" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.pim" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.s" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.pm" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.tg[0].tpm"
		 -l on;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.w0" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.tg[0].tw"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.ctx" "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cty" "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.ctz" "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crx" "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cry" "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crz" "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.t" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rp" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rpt" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.r" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.ro" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.s" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.pm" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tpm"
		 -l on;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.w0" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tw"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.ctx" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cty" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.ctz" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crx" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cry" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crz" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.t" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.rp" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.rpt" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.r" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tr"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.ro" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tro"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.s" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].ts"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.pm" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tpm"
		 -l on;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.w0" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tw"
		 -l on;
connectAttr "IK_root_joint_positionLocator_pointConstraint2.ctx" "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator.tx"
		 -l on;
connectAttr "IK_root_joint_positionLocator_pointConstraint2.cty" "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator.ty"
		 -l on;
connectAttr "IK_root_joint_positionLocator_pointConstraint2.ctz" "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.s" "HingeJoint__instance_1_mirror:IK_hinge_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.ox" "HingeJoint__instance_1_mirror:IK_hinge_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.s" "HingeJoint__instance_1_mirror:IK_end_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.ox" "HingeJoint__instance_1_mirror:IK_end_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_end_joint.tx" "HingeJoint__instance_1_mirror:IK_root_joint_ikEffector.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_end_joint.ty" "HingeJoint__instance_1_mirror:IK_root_joint_ikEffector.ty"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_end_joint.tz" "HingeJoint__instance_1_mirror:IK_root_joint_ikEffector.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator.pim" "IK_root_joint_positionLocator_pointConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator.rp" "IK_root_joint_positionLocator_pointConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator.rpt" "IK_root_joint_positionLocator_pointConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.t" "IK_root_joint_positionLocator_pointConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rp" "IK_root_joint_positionLocator_pointConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.rpt" "IK_root_joint_positionLocator_pointConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.pm" "IK_root_joint_positionLocator_pointConstraint2.tg[0].tpm"
		 -l on;
connectAttr "IK_root_joint_positionLocator_pointConstraint2.w0" "IK_root_joint_positionLocator_pointConstraint2.tg[0].tw"
		 -l on;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint2.ctx" "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.tx"
		 -l on;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint2.cty" "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.ty"
		 -l on;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint2.ctz" "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.pim" "IK_hinge_joint_positionLocator_pointConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.rp" "IK_hinge_joint_positionLocator_pointConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.rpt" "IK_hinge_joint_positionLocator_pointConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.t" "IK_hinge_joint_positionLocator_pointConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.rp" "IK_hinge_joint_positionLocator_pointConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.rpt" "IK_hinge_joint_positionLocator_pointConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.pm" "IK_hinge_joint_positionLocator_pointConstraint2.tg[0].tpm"
		 -l on;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint2.w0" "IK_hinge_joint_positionLocator_pointConstraint2.tg[0].tw"
		 -l on;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint2.ctx" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator.tx"
		 -l on;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint2.cty" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator.ty"
		 -l on;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint2.ctz" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator.tz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.msg" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle.hsj"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikEffector.hp" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle.hee"
		 -l on;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle.hsv"
		 -l on;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint2.ctx" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle.pvx"
		 -l on;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint2.cty" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle.pvy"
		 -l on;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint2.ctz" "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle.pvz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle.pim" "IK_root_joint_ikHandle_poleVectorConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.pm" "IK_root_joint_ikHandle_poleVectorConstraint2.ps"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.t" "IK_root_joint_ikHandle_poleVectorConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.t" "IK_root_joint_ikHandle_poleVectorConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.rp" "IK_root_joint_ikHandle_poleVectorConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.rpt" "IK_root_joint_ikHandle_poleVectorConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.pm" "IK_root_joint_ikHandle_poleVectorConstraint2.tg[0].tpm"
		 -l on;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint2.w0" "IK_root_joint_ikHandle_poleVectorConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator.pim" "IK_root_joint_ikHandle_positionLocator_pointConstraint2.cpim"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator.rp" "IK_root_joint_ikHandle_positionLocator_pointConstraint2.crp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator.rpt" "IK_root_joint_ikHandle_positionLocator_pointConstraint2.crt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.t" "IK_root_joint_ikHandle_positionLocator_pointConstraint2.tg[0].tt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.rp" "IK_root_joint_ikHandle_positionLocator_pointConstraint2.tg[0].trp"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.rpt" "IK_root_joint_ikHandle_positionLocator_pointConstraint2.tg[0].trt"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.pm" "IK_root_joint_ikHandle_positionLocator_pointConstraint2.tg[0].tpm"
		 -l on;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint2.w0" "IK_root_joint_ikHandle_positionLocator_pointConstraint2.tg[0].tw"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.ctx" "HingeJoint__instance_1_mirror:module_transform.tx"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.cty" "HingeJoint__instance_1_mirror:module_transform.ty"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.ctz" "HingeJoint__instance_1_mirror:module_transform.tz"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.crx" "HingeJoint__instance_1_mirror:module_transform.rx"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.cry" "HingeJoint__instance_1_mirror:module_transform.ry"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.crz" "HingeJoint__instance_1_mirror:module_transform.rz"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform.sy" "HingeJoint__instance_1_mirror:module_transform.sx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.sy" "HingeJoint__instance_1_mirror:module_transform.sz"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.ro" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.cro"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform.pim" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.cpim"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform.rp" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.crp"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform.rpt" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.crt"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.t" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.rp" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.rpt" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.r" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.tg[0].tr"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.ro" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.tg[0].tro"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.s" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.tg[0].ts"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.pm" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.w0" "HingeJoint__instance_1_mirror:module_transform_symmetryMoveConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.sy" "HingeJoint__instance_1:module_transform_mirrorHelper.sx"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper.sy" "HingeJoint__instance_1:module_transform_mirrorHelper.sz"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.out[0]" "HingeJoint__instance_1:module_transform_mirrorHelper.tx"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.out[1]" "HingeJoint__instance_1:module_transform_mirrorHelper.ty"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.out[2]" "HingeJoint__instance_1:module_transform_mirrorHelper.tz"
		;
connectAttr "unitConversion2.o" "HingeJoint__instance_1:module_transform_mirrorHelper.rx"
		;
connectAttr "unitConversion4.o" "HingeJoint__instance_1:module_transform_mirrorHelper.ry"
		;
connectAttr "unitConversion6.o" "HingeJoint__instance_1:module_transform_mirrorHelper.rz"
		;
connectAttr "HingeJoint__instance_1:root_joint.r" "HingeJoint__instance_1:module_container.boc[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.rx" "HingeJoint__instance_1:module_container.boc[1]"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.ry" "HingeJoint__instance_1:module_container.boc[2]"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.rz" "HingeJoint__instance_1:module_container.boc[3]"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint.ro" "HingeJoint__instance_1:module_container.boc[4]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.r" "HingeJoint__instance_1:module_container.boc[5]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.rx" "HingeJoint__instance_1:module_container.boc[6]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.ry" "HingeJoint__instance_1:module_container.boc[7]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.rz" "HingeJoint__instance_1:module_container.boc[8]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint.ro" "HingeJoint__instance_1:module_container.boc[9]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.r" "HingeJoint__instance_1:module_container.boc[10]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.rx" "HingeJoint__instance_1:module_container.boc[11]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.ry" "HingeJoint__instance_1:module_container.boc[12]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.rz" "HingeJoint__instance_1:module_container.boc[13]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint.ro" "HingeJoint__instance_1:module_container.boc[14]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.t" "HingeJoint__instance_1:module_container.boc[15]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.tx" "HingeJoint__instance_1:module_container.boc[16]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.ty" "HingeJoint__instance_1:module_container.boc[17]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.tz" "HingeJoint__instance_1:module_container.boc[18]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.r" "HingeJoint__instance_1:module_container.boc[19]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.rx" "HingeJoint__instance_1:module_container.boc[20]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.ry" "HingeJoint__instance_1:module_container.boc[21]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.rz" "HingeJoint__instance_1:module_container.boc[22]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_transform.sy" "HingeJoint__instance_1:module_container.boc[23]"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_container.boc[0]" "HingeJoint__instance_1:module_container.boc[24]"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_container.boc[1]" "HingeJoint__instance_1:module_container.boc[25]"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_container.boc[2]" "HingeJoint__instance_1:module_container.boc[26]"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_container.boc[3]" "HingeJoint__instance_1:module_container.boc[27]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_container.boc[0]" "HingeJoint__instance_1:module_container.boc[28]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_container.boc[1]" "HingeJoint__instance_1:module_container.boc[29]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_container.boc[2]" "HingeJoint__instance_1:module_container.boc[30]"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_container.boc[3]" "HingeJoint__instance_1:module_container.boc[31]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control_container.boc[0]" "HingeJoint__instance_1:module_container.boc[32]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control_container.boc[1]" "HingeJoint__instance_1:module_container.boc[33]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control_container.boc[2]" "HingeJoint__instance_1:module_container.boc[34]"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control_container.boc[3]" "HingeJoint__instance_1:module_container.boc[35]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint.r" "HingeJoint__instance_1:module_container.boc[36]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint.rx" "HingeJoint__instance_1:module_container.boc[37]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint.ry" "HingeJoint__instance_1:module_container.boc[38]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint.rz" "HingeJoint__instance_1:module_container.boc[39]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.r" "HingeJoint__instance_1:module_container.boc[40]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.rx" "HingeJoint__instance_1:module_container.boc[41]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.ry" "HingeJoint__instance_1:module_container.boc[42]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.rz" "HingeJoint__instance_1:module_container.boc[43]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_end_joint.r" "HingeJoint__instance_1:module_container.boc[44]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_end_joint.rx" "HingeJoint__instance_1:module_container.boc[45]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_end_joint.ry" "HingeJoint__instance_1:module_container.boc[46]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_end_joint.rz" "HingeJoint__instance_1:module_container.boc[47]"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_container.boc[0]" "HingeJoint__instance_1:module_container.boc[48]"
		 -l on;
connectAttr "hyperLayout1.msg" "HingeJoint__instance_1:module_container.hl" -l on
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform.t" "HingeJoint__instance_1_mirror:module_container.boc[15]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.tx" "HingeJoint__instance_1_mirror:module_container.boc[16]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.ty" "HingeJoint__instance_1_mirror:module_container.boc[17]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.tz" "HingeJoint__instance_1_mirror:module_container.boc[18]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.r" "HingeJoint__instance_1_mirror:module_container.boc[19]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.rx" "HingeJoint__instance_1_mirror:module_container.boc[20]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.ry" "HingeJoint__instance_1_mirror:module_container.boc[21]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.rz" "HingeJoint__instance_1_mirror:module_container.boc[22]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_transform.sy" "HingeJoint__instance_1_mirror:module_container.boc[23]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_container.boc[0]" "HingeJoint__instance_1_mirror:module_container.boc[24]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_container.boc[1]" "HingeJoint__instance_1_mirror:module_container.boc[25]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_container.boc[2]" "HingeJoint__instance_1_mirror:module_container.boc[26]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_container.boc[3]" "HingeJoint__instance_1_mirror:module_container.boc[27]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.boc[0]" "HingeJoint__instance_1_mirror:module_container.boc[28]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.boc[1]" "HingeJoint__instance_1_mirror:module_container.boc[29]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.boc[2]" "HingeJoint__instance_1_mirror:module_container.boc[30]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.boc[3]" "HingeJoint__instance_1_mirror:module_container.boc[31]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control_container.boc[0]" "HingeJoint__instance_1_mirror:module_container.boc[32]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control_container.boc[1]" "HingeJoint__instance_1_mirror:module_container.boc[33]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control_container.boc[2]" "HingeJoint__instance_1_mirror:module_container.boc[34]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control_container.boc[3]" "HingeJoint__instance_1_mirror:module_container.boc[35]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.r" "HingeJoint__instance_1_mirror:module_container.boc[36]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.rx" "HingeJoint__instance_1_mirror:module_container.boc[37]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.ry" "HingeJoint__instance_1_mirror:module_container.boc[38]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.rz" "HingeJoint__instance_1_mirror:module_container.boc[39]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.r" "HingeJoint__instance_1_mirror:module_container.boc[40]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.rx" "HingeJoint__instance_1_mirror:module_container.boc[41]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.ry" "HingeJoint__instance_1_mirror:module_container.boc[42]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.rz" "HingeJoint__instance_1_mirror:module_container.boc[43]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_end_joint.r" "HingeJoint__instance_1_mirror:module_container.boc[44]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_end_joint.rx" "HingeJoint__instance_1_mirror:module_container.boc[45]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_end_joint.ry" "HingeJoint__instance_1_mirror:module_container.boc[46]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_end_joint.rz" "HingeJoint__instance_1_mirror:module_container.boc[47]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_container.boc[0]" "HingeJoint__instance_1_mirror:module_container.boc[48]"
		 -l on;
connectAttr "hyperLayout3.msg" "HingeJoint__instance_1_mirror:module_container.hl"
		 -l on;
connectAttr "translation_control_hyperLayout1.msg" "HingeJoint__instance_1:root_joint_translation_control_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.t" "HingeJoint__instance_1:root_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.tx" "HingeJoint__instance_1:root_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.ty" "HingeJoint__instance_1:root_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.tz" "HingeJoint__instance_1:root_joint_translation_control_container.boc[3]"
		;
connectAttr "translation_control_hyperLayout2.msg" "HingeJoint__instance_1:hinge_joint_translation_control_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.t" "HingeJoint__instance_1:hinge_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.tx" "HingeJoint__instance_1:hinge_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.ty" "HingeJoint__instance_1:hinge_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.tz" "HingeJoint__instance_1:hinge_joint_translation_control_container.boc[3]"
		;
connectAttr "translation_control_hyperLayout3.msg" "HingeJoint__instance_1:end_joint_translation_control_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.t" "HingeJoint__instance_1:end_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.tx" "HingeJoint__instance_1:end_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.ty" "HingeJoint__instance_1:end_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.tz" "HingeJoint__instance_1:end_joint_translation_control_container.boc[3]"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint.r" "HingeJoint__instance_1:hook_container.boc[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.rx" "HingeJoint__instance_1:hook_container.boc[1]"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.ry" "HingeJoint__instance_1:hook_container.boc[2]"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint.rz" "HingeJoint__instance_1:hook_container.boc[3]"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint.r" "HingeJoint__instance_1:hook_container.boc[4]"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint.rx" "HingeJoint__instance_1:hook_container.boc[5]"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint.ry" "HingeJoint__instance_1:hook_container.boc[6]"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint.rz" "HingeJoint__instance_1:hook_container.boc[7]"
		 -l on;
connectAttr "hyperLayout2.msg" "HingeJoint__instance_1:hook_container.hl" -l on;
connectAttr "hierarchy_representation_hyperLayout1.msg" "HingeJoint__instance_1:root_joint_hierarchy_representation_container.hl"
		 -l on;
connectAttr "hierarchy_representation_hyperLayout2.msg" "HingeJoint__instance_1:hinge_joint_hierarchy_representation_container.hl"
		 -l on;
connectAttr "preferredAngle_representation_hyperLayout1.msg" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation.axis" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.d" "HingeJoint__instance_1:root_joint_ikHandle_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_1:hinge_joint_scaleMultiply.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.d" "HingeJoint__instance_1:hinge_joint_ikHandle_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_1:end_joint_scaleMultiply.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:module_grp.msg" "hyperLayout1.hyp[0].dn";
connectAttr "HingeJoint__instance_1:joints_grp.msg" "hyperLayout1.hyp[1].dn";
connectAttr "HingeJoint__instance_1:hierarchyRepresentation_grp.msg" "hyperLayout1.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1:orientationControls_grp.msg" "hyperLayout1.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:preferredAngle_representation_grp.msg" "hyperLayout1.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint.msg" "hyperLayout1.hyp[5].dn";
connectAttr "HingeJoint__instance_1:hinge_joint.msg" "hyperLayout1.hyp[6].dn";
connectAttr "HingeJoint__instance_1:end_joint.msg" "hyperLayout1.hyp[7].dn";
connectAttr "HingeJoint__instance_1:module_transform.msg" "hyperLayout1.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_1:module_transformShape.msg" "hyperLayout1.hyp[9].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_container.msg" "hyperLayout1.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_container.msg" "hyperLayout1.hyp[11].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_translation_control_container.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint__pointConstraint.msg" "hyperLayout1.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_1:hook_container.msg" "hyperLayout1.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle.msg" "hyperLayout1.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_ikEffector.msg" "hyperLayout1.hyp[17].dn"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout1.hyp[18].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator.msg" "hyperLayout1.hyp[19].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator.msg" "hyperLayout1.hyp[20].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocator_pointConstraint.msg" "hyperLayout1.hyp[21].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle_pointConstraint.msg" "hyperLayout1.hyp[22].dn"
		;
connectAttr "HingeJoint__instance_1:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.msg" "hyperLayout1.hyp[23].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle_scaleFactor.msg" "hyperLayout1.hyp[24].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_scaleMultiply.msg" "hyperLayout1.hyp[25].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocatorShape.msg" "hyperLayout1.hyp[26].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocatorShape.msg" "hyperLayout1.hyp[27].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout1.hyp[28].dn"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.msg" "hyperLayout1.hyp[29].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocator_pointConstraint.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocator.msg" "hyperLayout1.hyp[31].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout1.hyp[32].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representation_container.msg" "hyperLayout1.hyp[33].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle.msg" "hyperLayout1.hyp[34].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_ikEffector.msg" "hyperLayout1.hyp[35].dn"
		;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout1.hyp[36].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator.msg" "hyperLayout1.hyp[37].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator.msg" "hyperLayout1.hyp[38].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocator_pointConstraint.msg" "hyperLayout1.hyp[39].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle_pointConstraint.msg" "hyperLayout1.hyp[40].dn"
		;
connectAttr "HingeJoint__instance_1:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.msg" "hyperLayout1.hyp[41].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle_scaleFactor.msg" "hyperLayout1.hyp[42].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_scaleMultiply.msg" "hyperLayout1.hyp[43].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocatorShape.msg" "hyperLayout1.hyp[44].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocatorShape.msg" "hyperLayout1.hyp[45].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout1.hyp[46].dn"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.msg" "hyperLayout1.hyp[47].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocator_pointConstraint.msg" "hyperLayout1.hyp[48].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocator.msg" "hyperLayout1.hyp[49].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout1.hyp[50].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representation_container.msg" "hyperLayout1.hyp[51].dn"
		;
connectAttr "HingeJoint__instance_1:IK_root_joint.msg" "hyperLayout1.hyp[52].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint.msg" "hyperLayout1.hyp[53].dn"
		;
connectAttr "HingeJoint__instance_1:IK_end_joint.msg" "hyperLayout1.hyp[54].dn";
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.msg" "hyperLayout1.hyp[55].dn"
		;
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.msg" "hyperLayout1.hyp[56].dn"
		;
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.msg" "hyperLayout1.hyp[57].dn"
		;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.msg" "hyperLayout1.hyp[58].dn"
		;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.msg" "hyperLayout1.hyp[59].dn"
		;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.msg" "hyperLayout1.hyp[60].dn"
		;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikHandle.msg" "hyperLayout1.hyp[61].dn"
		;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikEffector.msg" "hyperLayout1.hyp[62].dn"
		;
connectAttr "HingeJoint__instance_1:IK_root_joint_positionLocator.msg" "hyperLayout1.hyp[63].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocator.msg" "hyperLayout1.hyp[64].dn"
		;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocator.msg" "hyperLayout1.hyp[65].dn"
		;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout1.hyp[66].dn"
		;
connectAttr "HingeJoint__instance_1:IK_root_joint_positionLocatorShape.msg" "hyperLayout1.hyp[67].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocatorShape.msg" "hyperLayout1.hyp[68].dn"
		;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocatorShape.msg" "hyperLayout1.hyp[69].dn"
		;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.msg" "hyperLayout1.hyp[70].dn"
		;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.msg" "hyperLayout1.hyp[71].dn"
		;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.msg" "hyperLayout1.hyp[72].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_container.msg" "hyperLayout1.hyp[73].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_rootPosLocatorShape.wp" "HingeJoint__instance_1:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_endPosLocatorShape.wp" "HingeJoint__instance_1:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_rootPosLocatorShape.wp" "HingeJoint__instance_1:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_endPosLocatorShape.wp" "HingeJoint__instance_1:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocatorShape.wp" "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_ikHandle_positionLocatorShape.wp" "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_root_joint_positionLocatorShape.wp" "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_positionLocatorShape.wp" "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.d" "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.ox" "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.d" "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.ox" "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_m_translation_control_SG.msg" "materialInfo1.sg"
		;
connectAttr "HingeJoint__instance_1:root_joint_m_translation_control.msg" "materialInfo1.m"
		;
connectAttr "HingeJoint__instance_1:root_joint_m_translation_control.oc" "HingeJoint__instance_1:root_joint_m_translation_control_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_translation_controlShape.iog" "HingeJoint__instance_1:root_joint_m_translation_control_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:hinge_joint_m_translation_control_SG.msg" "translation_control_materialInfo1.sg"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_m_translation_control.msg" "translation_control_materialInfo1.m"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_m_translation_control.oc" "HingeJoint__instance_1:hinge_joint_m_translation_control_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_controlShape.iog" "HingeJoint__instance_1:hinge_joint_m_translation_control_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:end_joint_m_translation_control_SG.msg" "translation_control_materialInfo2.sg"
		;
connectAttr "HingeJoint__instance_1:end_joint_m_translation_control.msg" "translation_control_materialInfo2.m"
		;
connectAttr "HingeJoint__instance_1:end_joint_m_translation_control.oc" "HingeJoint__instance_1:end_joint_m_translation_control_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1:end_joint_translation_controlShape.iog" "HingeJoint__instance_1:end_joint_m_translation_control_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:root_joint_translation_controlShape.msg" "translation_control_hyperLayout1.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_translation_control.msg" "translation_control_hyperLayout1.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_m_translation_control_SG.msg" "translation_control_hyperLayout1.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_m_translation_control.msg" "translation_control_hyperLayout1.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_controlShape.msg" "translation_control_hyperLayout2.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_translation_control.msg" "translation_control_hyperLayout2.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_m_translation_control_SG.msg" "translation_control_hyperLayout2.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_m_translation_control.msg" "translation_control_hyperLayout2.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_translation_controlShape.msg" "translation_control_hyperLayout3.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_translation_control.msg" "translation_control_hyperLayout3.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_m_translation_control_SG.msg" "translation_control_hyperLayout3.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1:end_joint_m_translation_control.msg" "translation_control_hyperLayout3.hyp[3].dn"
		;
connectAttr "hook_representation_hyperLayout1.msg" "HingeJoint__instance_1:hook_root_joint_hook_representation_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.d" "HingeJoint__instance_1:hook_root_joint_ikHandle_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_1:hook_target_joint_scaleMultiply.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_grp.msg" "hyperLayout2.hyp[0].dn";
connectAttr "HingeJoint__instance_1:hook_root_joint.msg" "hyperLayout2.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:hook_target_joint.msg" "hyperLayout2.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1:unhookedTarget.msg" "hyperLayout2.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:unhookedTargetShape.msg" "hyperLayout2.hyp[4].dn"
		;
connectAttr "unhookedTarget_pointConstraint1.msg" "hyperLayout2.hyp[5].dn";
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle.msg" "hyperLayout2.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikEffector.msg" "hyperLayout2.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocator.msg" "hyperLayout2.hyp[8].dn"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout2.hyp[9].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator.msg" "hyperLayout2.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocator.msg" "hyperLayout2.hyp[11].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocator_pointConstraint.msg" "hyperLayout2.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_pointConstraint.msg" "hyperLayout2.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.msg" "hyperLayout2.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_scaleFactor.msg" "hyperLayout2.hyp[15].dn"
		;
connectAttr "HingeJoint__instance_1:hook_target_joint_scaleMultiply.msg" "hyperLayout2.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_poleVectorLocatorShape.msg" "hyperLayout2.hyp[17].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocatorShape.msg" "hyperLayout2.hyp[18].dn"
		;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocatorShape.msg" "hyperLayout2.hyp[19].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_pointConstraint.msg" "hyperLayout2.hyp[20].dn"
		;
connectAttr "HingeJoint__instance_1:hook_pointConstraint.msg" "hyperLayout2.hyp[21].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representation_container.msg" "hyperLayout2.hyp[22].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_rootPosLocatorShape.wp" "HingeJoint__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_target_joint_endPosLocatorShape.wp" "HingeJoint__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation.oc" "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representationShape.iog" "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation.msg" "hook_representation_hyperLayout1.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation_SG.msg" "hook_representation_hyperLayout1.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representation.msg" "hook_representation_hyperLayout1.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representationShape.msg" "hook_representation_hyperLayout1.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.msg" "hook_representation_hyperLayout1.hyp[6].dn"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.msg" "hook_representation_hyperLayout1.hyp[7].dn"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.msg" "hook_representation_hyperLayout1.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation_SG.msg" "hook_representation_materialInfo1.sg"
		;
connectAttr "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation.msg" "hook_representation_materialInfo1.m"
		;
connectAttr "HingeJoint__instance_1:root_joint_m_hierarchyRepresentation.oc" "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representationShape.iog" "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_arrow_representationShape.iog" "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:root_joint_m_hierarchyRepresentation.msg" "hierarchy_representation_hyperLayout1.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG.msg" "hierarchy_representation_hyperLayout1.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representation.msg" "hierarchy_representation_hyperLayout1.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representationShape.msg" "hierarchy_representation_hyperLayout1.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_arrow_representation.msg" "hierarchy_representation_hyperLayout1.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_arrow_representationShape.msg" "hierarchy_representation_hyperLayout1.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_hierarchy_representation_parentConstraint_grp.msg" "hierarchy_representation_hyperLayout1.hyp[8].dn"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.msg" "hierarchy_representation_hyperLayout1.hyp[9].dn"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.msg" "hierarchy_representation_hyperLayout1.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG.msg" "hierarchy_representation_materialInfo1.sg"
		;
connectAttr "HingeJoint__instance_1:root_joint_m_hierarchyRepresentation.msg" "hierarchy_representation_materialInfo1.m"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_m_hierarchyRepresentation.oc" "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representationShape.iog" "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_arrow_representationShape.iog" "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:hinge_joint_m_hierarchyRepresentation.msg" "hierarchy_representation_hyperLayout2.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG.msg" "hierarchy_representation_hyperLayout2.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representation.msg" "hierarchy_representation_hyperLayout2.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representationShape.msg" "hierarchy_representation_hyperLayout2.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_arrow_representation.msg" "hierarchy_representation_hyperLayout2.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_arrow_representationShape.msg" "hierarchy_representation_hyperLayout2.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_hierarchy_representation_parentConstraint_grp.msg" "hierarchy_representation_hyperLayout2.hyp[8].dn"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.msg" "hierarchy_representation_hyperLayout2.hyp[9].dn"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.msg" "hierarchy_representation_hyperLayout2.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG.msg" "hierarchy_representation_materialInfo2.sg"
		;
connectAttr "HingeJoint__instance_1:hinge_joint_m_hierarchyRepresentation.msg" "hierarchy_representation_materialInfo2.m"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation.axis" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_rotateX.i"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_m_preferredAngle_representation.oc" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representationShape.iog" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_m_preferredAngle_representation.msg" "preferredAngle_representation_hyperLayout1.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation.msg" "preferredAngle_representation_hyperLayout1.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representationShape.msg" "preferredAngle_representation_hyperLayout1.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_SG.msg" "preferredAngle_representation_hyperLayout1.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_rotateX.msg" "preferredAngle_representation_hyperLayout1.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_parentConstraintGrp.msg" "preferredAngle_representation_hyperLayout1.hyp[5].dn"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.msg" "preferredAngle_representation_hyperLayout1.hyp[6].dn"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.msg" "preferredAngle_representation_hyperLayout1.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_SG.msg" "preferredAngle_representation_materialInfo1.sg"
		;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_m_preferredAngle_representation.msg" "preferredAngle_representation_materialInfo1.m"
		;
connectAttr "translation_control_hyperLayout4.msg" "HingeJoint__instance_1_mirror:root_joint_translation_control_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.t" "HingeJoint__instance_1_mirror:root_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.tx" "HingeJoint__instance_1_mirror:root_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.ty" "HingeJoint__instance_1_mirror:root_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.tz" "HingeJoint__instance_1_mirror:root_joint_translation_control_container.boc[3]"
		;
connectAttr "translation_control_hyperLayout6.msg" "HingeJoint__instance_1_mirror:end_joint_translation_control_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.t" "HingeJoint__instance_1_mirror:end_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.tx" "HingeJoint__instance_1_mirror:end_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.ty" "HingeJoint__instance_1_mirror:end_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.tz" "HingeJoint__instance_1_mirror:end_joint_translation_control_container.boc[3]"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.r" "HingeJoint__instance_1_mirror:hook_container.boc[0]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.rx" "HingeJoint__instance_1_mirror:hook_container.boc[1]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.ry" "HingeJoint__instance_1_mirror:hook_container.boc[2]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.rz" "HingeJoint__instance_1_mirror:hook_container.boc[3]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.r" "HingeJoint__instance_1_mirror:hook_container.boc[4]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.rx" "HingeJoint__instance_1_mirror:hook_container.boc[5]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.ry" "HingeJoint__instance_1_mirror:hook_container.boc[6]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.rz" "HingeJoint__instance_1_mirror:hook_container.boc[7]"
		 -l on;
connectAttr "hyperLayout4.msg" "HingeJoint__instance_1_mirror:hook_container.hl"
		 -l on;
connectAttr "hierarchy_representation_hyperLayout3.msg" "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_container.hl"
		 -l on;
connectAttr "hierarchy_representation_hyperLayout4.msg" "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_container.hl"
		 -l on;
connectAttr "preferredAngle_representation_hyperLayout2.msg" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation.axis" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.d" "HingeJoint__instance_1_mirror:root_joint_ikHandle_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_1_mirror:hinge_joint_scaleMultiply.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.d" "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_1_mirror:end_joint_scaleMultiply.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.d" "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.ox" "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.d" "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.ox" "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.i2x"
		 -l on;
connectAttr "translation_control_hyperLayout5.msg" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.t" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.tx" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.ty" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.tz" "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.boc[3]"
		;
connectAttr "HingeJoint__instance_1_mirror:module_grp.msg" "hyperLayout3.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:joints_grp.msg" "hyperLayout3.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hierarchyRepresentation_grp.msg" "hyperLayout3.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:orientationControls_grp.msg" "hyperLayout3.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:preferredAngle_representation_grp.msg" "hyperLayout3.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transform.msg" "hyperLayout3.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:module_transformShape.msg" "hyperLayout3.hyp[9].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_container.msg" "hyperLayout3.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_container.msg" "hyperLayout3.hyp[11].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control_container.msg" "hyperLayout3.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint__pointConstraint.msg" "hyperLayout3.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_container.msg" "hyperLayout3.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle.msg" "hyperLayout3.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikEffector.msg" "hyperLayout3.hyp[17].dn"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.msg" "hyperLayout3.hyp[18].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator.msg" "hyperLayout3.hyp[19].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator.msg" "hyperLayout3.hyp[20].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocator_pointConstraint.msg" "hyperLayout3.hyp[21].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle_pointConstraint.msg" "hyperLayout3.hyp[22].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.msg" "hyperLayout3.hyp[23].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle_scaleFactor.msg" "hyperLayout3.hyp[24].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_scaleMultiply.msg" "hyperLayout3.hyp[25].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocatorShape.msg" "hyperLayout3.hyp[26].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocatorShape.msg" "hyperLayout3.hyp[27].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout3.hyp[28].dn"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.msg" "hyperLayout3.hyp[29].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocator_pointConstraint.msg" "hyperLayout3.hyp[30].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocator.msg" "hyperLayout3.hyp[31].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout3.hyp[32].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_container.msg" "hyperLayout3.hyp[33].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle.msg" "hyperLayout3.hyp[34].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikEffector.msg" "hyperLayout3.hyp[35].dn"
		;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint2.msg" "hyperLayout3.hyp[36].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator.msg" "hyperLayout3.hyp[37].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator.msg" "hyperLayout3.hyp[38].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocator_pointConstraint.msg" "hyperLayout3.hyp[39].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_pointConstraint.msg" "hyperLayout3.hyp[40].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.msg" "hyperLayout3.hyp[41].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_scaleFactor.msg" "hyperLayout3.hyp[42].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_scaleMultiply.msg" "hyperLayout3.hyp[43].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocatorShape.msg" "hyperLayout3.hyp[44].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocatorShape.msg" "hyperLayout3.hyp[45].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout3.hyp[46].dn"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.msg" "hyperLayout3.hyp[47].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocator_pointConstraint.msg" "hyperLayout3.hyp[48].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocator.msg" "hyperLayout3.hyp[49].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout3.hyp[50].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_container.msg" "hyperLayout3.hyp[51].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint.msg" "hyperLayout3.hyp[52].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint.msg" "hyperLayout3.hyp[53].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_end_joint.msg" "hyperLayout3.hyp[54].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.msg" "hyperLayout3.hyp[55].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.msg" "hyperLayout3.hyp[56].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.msg" "hyperLayout3.hyp[57].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.msg" "hyperLayout3.hyp[58].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.msg" "hyperLayout3.hyp[59].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.msg" "hyperLayout3.hyp[60].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle.msg" "hyperLayout3.hyp[61].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikEffector.msg" "hyperLayout3.hyp[62].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_positionLocator.msg" "hyperLayout3.hyp[63].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocator.msg" "hyperLayout3.hyp[64].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocator.msg" "hyperLayout3.hyp[65].dn"
		;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint2.msg" "hyperLayout3.hyp[66].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_positionLocatorShape.msg" "hyperLayout3.hyp[67].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocatorShape.msg" "hyperLayout3.hyp[68].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocatorShape.msg" "hyperLayout3.hyp[69].dn"
		;
connectAttr "IK_root_joint_positionLocator_pointConstraint2.msg" "hyperLayout3.hyp[70].dn"
		;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint2.msg" "hyperLayout3.hyp[71].dn"
		;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint2.msg" "hyperLayout3.hyp[72].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_container.msg" "hyperLayout3.hyp[73].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_rootPosLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_endPosLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_ikHandle_positionLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_rootPosLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_endPosLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_root_joint_positionLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_positionLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_translation_control.oc" "HingeJoint__instance_1_mirror:root_joint_m_translation_control_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_controlShape.iog" "HingeJoint__instance_1_mirror:root_joint_m_translation_control_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_controlShape.msg" "translation_control_hyperLayout4.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_translation_control.msg" "translation_control_hyperLayout4.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_translation_control_SG.msg" "translation_control_hyperLayout4.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_translation_control.msg" "translation_control_hyperLayout4.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_translation_control_SG.msg" "translation_control_materialInfo3.sg"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_translation_control.msg" "translation_control_materialInfo3.m"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_m_translation_control.oc" "HingeJoint__instance_1_mirror:end_joint_m_translation_control_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_controlShape.iog" "HingeJoint__instance_1_mirror:end_joint_m_translation_control_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_controlShape.msg" "translation_control_hyperLayout6.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_translation_control.msg" "translation_control_hyperLayout6.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_m_translation_control_SG.msg" "translation_control_hyperLayout6.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_m_translation_control.msg" "translation_control_hyperLayout6.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_m_translation_control_SG.msg" "translation_control_materialInfo5.sg"
		;
connectAttr "HingeJoint__instance_1_mirror:end_joint_m_translation_control.msg" "translation_control_materialInfo5.m"
		;
connectAttr "hook_representation_hyperLayout2.msg" "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_1_mirror:hook_target_joint_scaleMultiply.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.d" "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_scaleFactor.i1x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_grp.msg" "hyperLayout4.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint.msg" "hyperLayout4.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint.msg" "hyperLayout4.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:unhookedTarget.msg" "hyperLayout4.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:unhookedTargetShape.msg" "hyperLayout4.hyp[4].dn"
		;
connectAttr "unhookedTarget_pointConstraint2.msg" "hyperLayout4.hyp[5].dn";
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle.msg" "hyperLayout4.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikEffector.msg" "hyperLayout4.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocator.msg" "hyperLayout4.hyp[8].dn"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.msg" "hyperLayout4.hyp[9].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator.msg" "hyperLayout4.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocator.msg" "hyperLayout4.hyp[11].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocator_pointConstraint.msg" "hyperLayout4.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_pointConstraint.msg" "hyperLayout4.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.msg" "hyperLayout4.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_scaleFactor.msg" "hyperLayout4.hyp[15].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_scaleMultiply.msg" "hyperLayout4.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_poleVectorLocatorShape.msg" "hyperLayout4.hyp[17].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocatorShape.msg" "hyperLayout4.hyp[18].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocatorShape.msg" "hyperLayout4.hyp[19].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_pointConstraint.msg" "hyperLayout4.hyp[20].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_pointConstraint.msg" "hyperLayout4.hyp[21].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_container.msg" "hyperLayout4.hyp[22].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_rootPosLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.p1"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_endPosLocatorShape.wp" "HingeJoint__instance_1_mirror:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.p2"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation.oc" "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representationShape.iog" "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation.msg" "hook_representation_hyperLayout2.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation_SG.msg" "hook_representation_hyperLayout2.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation.msg" "hook_representation_hyperLayout2.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representationShape.msg" "hook_representation_hyperLayout2.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_hook_representation_parentConstraint_grp.msg" "hook_representation_hyperLayout2.hyp[6].dn"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.msg" "hook_representation_hyperLayout2.hyp[7].dn"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.msg" "hook_representation_hyperLayout2.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation_SG.msg" "hook_representation_materialInfo2.sg"
		;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation.msg" "hook_representation_materialInfo2.m"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_hierarchyRepresentation.oc" "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representationShape.iog" "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_arrow_representationShape.iog" "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_hierarchyRepresentation.msg" "hierarchy_representation_hyperLayout3.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG.msg" "hierarchy_representation_hyperLayout3.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation.msg" "hierarchy_representation_hyperLayout3.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representationShape.msg" "hierarchy_representation_hyperLayout3.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_arrow_representation.msg" "hierarchy_representation_hyperLayout3.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_arrow_representationShape.msg" "hierarchy_representation_hyperLayout3.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_hierarchy_representation_parentConstraint_grp.msg" "hierarchy_representation_hyperLayout3.hyp[8].dn"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.msg" "hierarchy_representation_hyperLayout3.hyp[9].dn"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.msg" "hierarchy_representation_hyperLayout3.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG.msg" "hierarchy_representation_materialInfo3.sg"
		;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_hierarchyRepresentation.msg" "hierarchy_representation_materialInfo3.m"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_hierarchyRepresentation.oc" "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representationShape.iog" "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_arrow_representationShape.iog" "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_hierarchyRepresentation.msg" "hierarchy_representation_hyperLayout4.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG.msg" "hierarchy_representation_hyperLayout4.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation.msg" "hierarchy_representation_hyperLayout4.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representationShape.msg" "hierarchy_representation_hyperLayout4.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_arrow_representation.msg" "hierarchy_representation_hyperLayout4.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_arrow_representationShape.msg" "hierarchy_representation_hyperLayout4.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_hierarchy_representation_parentConstraint_grp.msg" "hierarchy_representation_hyperLayout4.hyp[8].dn"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint2.msg" "hierarchy_representation_hyperLayout4.hyp[9].dn"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint2.msg" "hierarchy_representation_hyperLayout4.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG.msg" "hierarchy_representation_materialInfo4.sg"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_hierarchyRepresentation.msg" "hierarchy_representation_materialInfo4.m"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_m_preferredAngle_representation.oc" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representationShape.iog" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation.axis" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_rotateX.i"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_m_preferredAngle_representation.msg" "preferredAngle_representation_hyperLayout2.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation.msg" "preferredAngle_representation_hyperLayout2.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representationShape.msg" "preferredAngle_representation_hyperLayout2.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_SG.msg" "preferredAngle_representation_hyperLayout2.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_rotateX.msg" "preferredAngle_representation_hyperLayout2.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_parentConstraintGrp.msg" "preferredAngle_representation_hyperLayout2.hyp[5].dn"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint2.msg" "preferredAngle_representation_hyperLayout2.hyp[6].dn"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint2.msg" "preferredAngle_representation_hyperLayout2.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control_SG.msg" "translation_control_materialInfo4.sg"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control.msg" "translation_control_materialInfo4.m"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control.oc" "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control_SG.ss"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_controlShape.iog" "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control_SG.dsm"
		 -l on -na;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_SG.msg" "preferredAngle_representation_materialInfo2.sg"
		;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_m_preferredAngle_representation.msg" "preferredAngle_representation_materialInfo2.m"
		;
connectAttr "HingeJoint__instance_1:module_transform.tx" "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.in[0]"
		;
connectAttr "HingeJoint__instance_1:module_transform.ty" "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.in[1]"
		;
connectAttr "HingeJoint__instance_1:module_transform.tz" "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.in[2]"
		;
connectAttr "unitConversion1.o" "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.in[3]"
		;
connectAttr "unitConversion3.o" "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.in[4]"
		;
connectAttr "unitConversion5.o" "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.in[5]"
		;
connectAttr ":time1.o" "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.tim"
		;
connectAttr "HingeJoint__instance_1:module_transform.rx" "unitConversion1.i";
connectAttr "HingeJoint__instance_1:module_transform.ry" "unitConversion3.i";
connectAttr "HingeJoint__instance_1:module_transform.rz" "unitConversion5.i";
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.out[3]" "unitConversion2.i"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.out[4]" "unitConversion4.i"
		;
connectAttr "HingeJoint__instance_1:module_transform_mirrorHelper_symmetryMoveExpression.out[5]" "unitConversion6.i"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_controlShape.msg" "translation_control_hyperLayout5.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_translation_control.msg" "translation_control_hyperLayout5.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control_SG.msg" "translation_control_hyperLayout5.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control.msg" "translation_control_hyperLayout5.hyp[3].dn"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1:root_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1:hinge_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1:end_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1_mirror:root_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1_mirror:end_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1:root_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1:hinge_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1:end_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1_mirror:root_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1_mirror:end_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
connectAttr "HingeJoint__instance_1:root_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1:hinge_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1:end_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1:root_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1:hinge_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_preferredAngle_representation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:end_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_preferredAngle_representation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_1:root_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1:hinge_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1:end_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1:hook_root_joint_m_hookRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1:root_joint_m_hierarchyRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1:hinge_joint_m_hierarchyRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1:IK_hinge_joint_m_preferredAngle_representation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:end_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_m_hookRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:root_joint_m_hierarchyRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_m_hierarchyRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:IK_hinge_joint_m_preferredAngle_representation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:hook_root_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:hook_target_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:root_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:hinge_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:hinge_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:end_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hook_root_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hook_target_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:root_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:hinge_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:end_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:module_transformShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:module_transformShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of mirrorElbow.ma
