//Maya ASCII 2023 scene
//Name: Modular.ma
//Last modified: Mon, Jul 03, 2023 10:41:56 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.1.0";
requires -nodeType "polyBoolean" "polyBoolean" "1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "7E066CBE-41A6-D547-BA56-E48347258D0C";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "35253E69-49E0-3F7B-C9F9-5C85A41F7A6B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.6355722815672609 15.222249129178113 16.617224304977682 ;
	setAttr ".r" -type "double3" -41.138352530403779 4699.4000000000742 1.6860041765672079e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A6FE12B0-48BD-D627-3D59-2191FF4F54CF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.017494678787696;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1 1.0000000650828516 -3.1807856183048613 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "18A39CE3-408F-43E0-522F-7480FA8DE21C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.95125729825601768 1000.1045345617071 -1.8034799639684915 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E58A90F1-4AC2-47C7-FD54-8B85B98DB3CE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1045345615826;
	setAttr ".ow" 13.647956488315195;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 1 1.2449657277313619e-10 5.5887364354412217e-10 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "812B6169-4CD4-89F1-F859-1495A2F51BA5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.0031334767361660965 0.0013663326724686342 1000.1178883697702 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "377944C6-40B2-E7A9-3D5B-249541E99713";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1003.9375980289686;
	setAttr ".ow" 0.13585602888794807;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 3.3280720710754395 0.99410541571487565 -3.8197096591984216 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "68C3A89A-4D70-5FB3-78EF-C5B9BC882E18";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1021211793019 0.5 -2 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BEFF25CC-46D1-3305-B495-F39799331AEB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.8022747042668;
	setAttr ".ow" 5.5599226207671633;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -1.7001535249649029 0.5 -2 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Floor";
	rename -uid "4D96D2AF-4A25-535D-26C0-A197664753EF";
	setAttr ".rp" -type "double3" 0 0 -0.0092160475075591108 ;
	setAttr ".sp" -type "double3" 0 0 -0.0092160475075591108 ;
createNode mesh -n "FloorShape" -p "Floor";
	rename -uid "78BFD6D0-43A5-1D7B-488C-A7AC92F75E52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0 0 0 3 0 0 0 0 -3 3 0 -3;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "Wall";
	rename -uid "1A83327E-4BBC-B4E6-F0CC-DDB01B007951";
	setAttr ".t" -type "double3" 0.05 0 0 ;
createNode mesh -n "polySurfaceShape5" -p "Wall";
	rename -uid "B798808D-43B3-679E-7DED-BABA1EBF376A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[2:3]";
	setAttr ".pv" -type "double2" 0.3264012336730957 0.40127460658550262 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.64194167 0.32029086
		 0.64180398 0.21507557 0.64235461 0.63593686 0.64221698 0.53072143 0.64166653 0.10986024
		 0.6415382 0.011827201 0.82197762 0.69376814 0.99136847 0.69420612 0.010246396 0.012653053
		 0.010512352 0.21590137 0.010649949 0.32111669 0.010374635 0.110686 0.98913914 0.014541194
		 0.9891091 0.16257921 0.67137164 0.014476553 0.67130697 0.3322441 0.83019072 0.3322764
		 0.83025527 0.014508888 0.65305483 0.51237607 0.65346336 0.35454842 0.010925174 0.53154731
		 0.99224472 0.35542467 0.82285398 0.35498655 0.011062831 0.63676262 0.011264175 0.79072201
		 0.64255607 0.78989625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1 0 0 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0
		 -1 1 -3 -0.5 1 -3 0 0.46586883 -3 -1 0 -3 -0.5 0 -3 0 0 -3;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 14 17 16 15
		f 4 1 10 -4 -10
		mu 0 4 17 12 13 16
		f 4 2 12 -5 -12
		mu 0 4 3 2 23 20
		f 4 3 13 -6 -13
		mu 0 4 2 25 24 23
		f 4 4 15 -7 -15
		mu 0 4 7 6 22 21
		f 4 5 16 -8 -16
		mu 0 4 6 18 19 22
		f 4 6 18 -1 -18
		mu 0 4 10 9 1 0
		f 4 7 19 -2 -19
		mu 0 4 9 11 4 1
		f 4 -20 -17 -14 -11
		mu 0 4 4 11 8 5
		f 4 17 8 11 14
		mu 0 4 10 0 3 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform4" -p "Wall";
	rename -uid "77491E82-49AA-211B-2CFC-9298852EA9BD";
	setAttr ".v" no;
createNode mesh -n "WallShape" -p "transform4";
	rename -uid "68764113-43E5-3CEE-C7AB-EFA49AEA3DE1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33683277294039726 0.34718257188796997 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall1";
	rename -uid "9FBE35A1-43E3-5539-C59B-E594128A51B6";
	setAttr ".t" -type "double3" 0 0 -3 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "polySurfaceShape1" -p "Wall1";
	rename -uid "1C211E87-4090-8C71-2470-15822C679877";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[2:3]";
	setAttr ".pv" -type "double2" 0.43783748149871826 0.47365766763687134 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.29515904 0.48515391
		 0.22354367 0.48515391 0.51000512 0.48515391 0.43838978 0.48515391 0.15192828 0.48515391
		 0.085201591 0.48515391 0.84986329 0.94911373 0.94884902 0.94911373 0.085201591 0.91484606
		 0.22354367 0.91484606 0.29515904 0.91484606 0.15192828 0.91484606 0.75101435 0.84298694
		 0.75101435 0.75101429 0.43838978 0.91484606 0.94884902 0.75101429 0.84986329 0.75101429
		 0.51000512 0.91484606 0.61479843 0.91484606 0.61479843 0.48515391;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 0.50065273 ;
	setAttr ".pt[4]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr -s 12 ".vt[0:11]"  -1 0 1 -0.5 0 0 0 0 0 -1 1 1 -0.5 1 0.5059365
		 0 0.46586883 0 -1 1 -3 -0.5 1 -3 0 0.46586883 -3 -1 0 -3 -0.5 0 -3 0 0 -3;
	setAttr -s 19 ".ed[0:18]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 2 11 -5 -11
		mu 0 4 3 2 17 14
		f 4 3 12 -6 -12
		mu 0 4 2 19 18 17
		f 4 4 14 -7 -14
		mu 0 4 7 6 16 15
		f 4 5 15 -8 -15
		mu 0 4 6 12 13 16
		f 4 6 17 -1 -17
		mu 0 4 10 9 1 0
		f 4 7 18 -2 -18
		mu 0 4 9 11 4 1
		f 4 -19 -16 -13 -10
		mu 0 4 4 11 8 5
		f 4 16 8 10 13
		mu 0 4 10 0 3 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform1" -p "Wall1";
	rename -uid "7121B489-4946-7512-5299-788AE489CC16";
	setAttr ".v" no;
createNode mesh -n "Wall1Shape" -p "transform1";
	rename -uid "7837F685-4AE8-266C-FC8A-45BF575EEC9D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43783748149871826 0.47365766763687134 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall2";
	rename -uid "3119AF99-47C6-9A6C-3149-77BD325EEF3B";
createNode mesh -n "polySurfaceShape2" -p "Wall2";
	rename -uid "BB2702D6-4BDE-C10B-4225-AAAA21264EC1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[2:3]";
	setAttr ".pv" -type "double2" 0.43783748149871826 0.47365766763687134 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.29584432 0.037838623
		 0.22512387 0.037838623 0.50800574 0.037838623 0.43728518 0.037838623 0.15440336 0.037838623
		 0.088510484 0.037838623 0.088510484 0.46216142 0.22512387 0.46216142 0.29584432 0.46216142
		 0.15440336 0.46216142 0.937132 0.043113615 0.937132 0.14273557 0.72332579 0.043113615
		 0.72332579 0.25689724 0.83022302 0.25689724 0.83022302 0.043113615 0.43728518 0.46216142
		 0.50800574 0.46216142 0.61148953 0.46216142 0.61148953 0.037838623;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1 0 0 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0
		 -1 1 -4 -0.5 1 -3.49936819 0 0.46586883 -3 -1 0 -4 -0.5 0 -3.49936819 0 0 -3;
	setAttr -s 19 ".ed[0:18]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 12 15 14 13
		f 4 1 10 -4 -10
		mu 0 4 15 10 11 14
		f 4 2 12 -5 -12
		mu 0 4 3 2 17 16
		f 4 3 13 -6 -13
		mu 0 4 2 19 18 17
		f 4 6 17 -1 -17
		mu 0 4 8 7 1 0
		f 4 7 18 -2 -18
		mu 0 4 7 9 4 1
		f 4 -19 -16 -14 -11
		mu 0 4 4 9 6 5
		f 4 16 8 11 14
		mu 0 4 8 0 3 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform2" -p "Wall2";
	rename -uid "A34AB25C-4E4C-4D07-A676-1DBE8F7CAE27";
	setAttr ".v" no;
createNode mesh -n "Wall2Shape" -p "transform2";
	rename -uid "691B6ABA-43D9-D7E6-59A6-A986CBEA985C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43783748149871826 0.47365766763687134 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Outside_corner";
	rename -uid "715BA365-49BD-39AD-CC80-75927ACB2CF3";
	setAttr ".t" -type "double3" 3 0 0 ;
createNode mesh -n "Outside_cornerShape" -p "Outside_corner";
	rename -uid "83B4C918-4928-E7B7-E580-64B3CDF0EDEC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.77785921096801758 0.49994486570358276 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "polySurface1";
	rename -uid "E1419DBF-442F-2386-E338-F3AA2807F382";
createNode mesh -n "polySurfaceShape3" -p "polySurface1";
	rename -uid "7DDE3243-4E78-E568-DF6A-ADBA15C911BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall4";
	rename -uid "D105EB55-4F45-26BD-4E41-3284D19EDFD7";
	setAttr ".t" -type "double3" -1.9999999999999614 0 -0.99999999999999734 ;
	setAttr ".r" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".rp" -type "double3" -1.0000000000000093 0 -2.9999999999999987 ;
	setAttr ".rpt" -type "double3" 1.9999999999999707 0 5.9999999999999964 ;
	setAttr ".sp" -type "double3" -1.0000000000000093 0 -2.9999999999999987 ;
createNode mesh -n "Wall4Shape" -p "Wall4";
	rename -uid "5261DB45-44D7-2F85-51FD-8B9526B53E78";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[2:3]";
	setAttr ".pv" -type "double2" 0.3264012336730957 0.40127460658550262 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.64194167 0.32029086
		 0.64180398 0.21507557 0.64235461 0.63593686 0.64221698 0.53072143 0.64166653 0.10986024
		 0.6415382 0.011827201 0.82197762 0.69376814 0.99136847 0.69420612 0.010246396 0.012653053
		 0.010512352 0.21590137 0.010649949 0.32111669 0.010374635 0.110686 0.98913914 0.014541194
		 0.9891091 0.16257921 0.67137164 0.014476553 0.67130697 0.3322441 0.83019072 0.3322764
		 0.83025527 0.014508888 0.65305483 0.51237607 0.65346336 0.35454842 0.010925174 0.53154731
		 0.99224472 0.35542467 0.82285398 0.35498655 0.011062831 0.63676262 0.011264175 0.79072201
		 0.64255607 0.78989625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1 0 0 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0
		 -1 1 -3 -0.5 1 -3 0 0.46586883 -3 -1 0 -3 -0.5 0 -3 0 0 -3;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 14 17 16 15
		f 4 1 10 -4 -10
		mu 0 4 17 12 13 16
		f 4 2 12 -5 -12
		mu 0 4 3 2 23 20
		f 4 3 13 -6 -13
		mu 0 4 2 25 24 23
		f 4 4 15 -7 -15
		mu 0 4 7 6 22 21
		f 4 5 16 -8 -16
		mu 0 4 6 18 19 22
		f 4 6 18 -1 -18
		mu 0 4 10 9 1 0
		f 4 7 19 -2 -19
		mu 0 4 9 11 4 1
		f 4 -20 -17 -14 -11
		mu 0 4 4 11 8 5
		f 4 17 8 11 14
		mu 0 4 10 0 3 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall5";
	rename -uid "81BE6F90-469B-EF1C-F84B-6890CC0069C6";
	setAttr ".t" -type "double3" -2.9530763218832199 0 0 ;
	setAttr ".r" -type "double3" 0 270 0 ;
createNode mesh -n "polySurfaceShape4" -p "Wall5";
	rename -uid "E82F83F0-4701-2F33-DC4D-3EA05EB8C7EE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[2:3]";
	setAttr ".pv" -type "double2" 0.3264012336730957 0.40127460658550262 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.64194167 0.32029086
		 0.64180398 0.21507557 0.64235461 0.63593686 0.64221698 0.53072143 0.64166653 0.10986024
		 0.6415382 0.011827201 0.82197762 0.69376814 0.99136847 0.69420612 0.010246396 0.012653053
		 0.010512352 0.21590137 0.010649949 0.32111669 0.010374635 0.110686 0.98913914 0.014541194
		 0.9891091 0.16257921 0.67137164 0.014476553 0.67130697 0.3322441 0.83019072 0.3322764
		 0.83025527 0.014508888 0.65305483 0.51237607 0.65346336 0.35454842 0.010925174 0.53154731
		 0.99224472 0.35542467 0.82285398 0.35498655 0.011062831 0.63676262 0.011264175 0.79072201
		 0.64255607 0.78989625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1 0 0 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0
		 -1 1 -3 -0.5 1 -3 0 0.46586883 -3 -1 0 -3 -0.5 0 -3 0 0 -3;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 14 17 16 15
		f 4 1 10 -4 -10
		mu 0 4 17 12 13 16
		f 4 2 12 -5 -12
		mu 0 4 3 2 23 20
		f 4 3 13 -6 -13
		mu 0 4 2 25 24 23
		f 4 4 15 -7 -15
		mu 0 4 7 6 22 21
		f 4 5 16 -8 -16
		mu 0 4 6 18 19 22
		f 4 6 18 -1 -18
		mu 0 4 10 9 1 0
		f 4 7 19 -2 -19
		mu 0 4 9 11 4 1
		f 4 -20 -17 -14 -11
		mu 0 4 4 11 8 5
		f 4 17 8 11 14
		mu 0 4 10 0 3 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform3" -p "Wall5";
	rename -uid "67D7E012-4258-A518-2AEF-12A266A5FE01";
	setAttr ".v" no;
createNode mesh -n "Wall5Shape" -p "transform3";
	rename -uid "9BA55D11-40DF-57FB-6C48-23A9102BAD29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46959555153591637 0.2424590937176182 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "InsideCorner";
	rename -uid "95E110A4-4713-0374-0F00-F19EB384E569";
	setAttr ".t" -type "double3" 2.9510363672430961 0 3 ;
createNode mesh -n "InsideCornerShape" -p "InsideCorner";
	rename -uid "37EBAC06-40F1-71F7-F070-8193A38F2994";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.83022305369377136 0.17337648198008537 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall7";
	rename -uid "E67EF18D-402F-7A9D-B5A7-5D9BAC69EA73";
createNode transform -n "transform5" -p "Wall7";
	rename -uid "6C64E5AB-43BC-212F-DDD4-68AB72271BA2";
	setAttr ".v" no;
createNode mesh -n "Wall7Shape" -p "transform5";
	rename -uid "2031284D-4022-87EE-B155-378EF6C3AD47";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[2:3]";
	setAttr ".pv" -type "double2" 0.32640122622251511 0.2499999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.50256181 0.20478822
		 0.50248498 0.14604838 0.50279236 0.38100773 0.50271553 0.32226783 0.50240827 0.087308556
		 0.50233662 0.032578453 0.14989762 0.03303951 0.1500461 0.14650942 0.15012291 0.20524926
		 0.14996921 0.087769568 0.93714207 0.06651184 0.93712187 0.16611205 0.72334754 0.066468351
		 0.72330403 0.28026286 0.83020133 0.28028461 0.83024472 0.066490106 0.15027657 0.32272893
		 0.15035342 0.38146877 0.15046583 0.46742153 0.50290483 0.46696055;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1 0 0 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0
		 -1 1 -3 -0.5 1 -3 0 0.46586883 -3 -1 0 -3 -0.5 0 -3 0 0 -3;
	setAttr -s 19 ".ed[0:18]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 12 15 14 13
		f 4 1 10 -4 -10
		mu 0 4 15 10 11 14
		f 4 2 12 -5 -12
		mu 0 4 3 2 17 16
		f 4 3 13 -6 -13
		mu 0 4 2 19 18 17
		f 4 6 17 -1 -17
		mu 0 4 8 7 1 0
		f 4 7 18 -2 -18
		mu 0 4 7 9 4 1
		f 4 -19 -16 -14 -11
		mu 0 4 4 9 6 5
		f 4 16 8 11 14
		mu 0 4 8 0 3 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall8";
	rename -uid "91A2256B-4F12-4D21-2E70-FEB1D55D8F4E";
	setAttr ".t" -type "double3" 0 0.0048281544108190744 -3 ;
createNode transform -n "transform6" -p "Wall8";
	rename -uid "360D43B7-4A61-1899-0E0C-3D995E71A750";
	setAttr ".v" no;
createNode mesh -n "Wall8Shape" -p "transform6";
	rename -uid "36C5952C-4456-6831-24ED-82B0132C9F3F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[2:3]";
	setAttr ".pv" -type "double2" 0.32640122622251511 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.50256181 0.70478821
		 0.50248498 0.64604837 0.50279236 0.88100773 0.50271553 0.82226783 0.50240827 0.58730853
		 0.50233662 0.53257847 0.82214254 0.9778226 0.94996512 0.97815305 0.14989762 0.53303951
		 0.1500461 0.64650941 0.15012291 0.70524925 0.14996921 0.58776957 0.69467324 0.84094387
		 0.69498152 0.72184694 0.15027657 0.82272893 0.95062631 0.72250819 0.82280385 0.72217757
		 0.15035342 0.88146877 0.15046583 0.96742153 0.50290483 0.96696055;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1 0 0 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0
		 -1 1 -3 -0.5 1 -3 0 0.46586883 -3 -1 0 -3 -0.5 0 -3 0 0 -3;
	setAttr -s 19 ".ed[0:18]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 2 11 -5 -11
		mu 0 4 3 2 17 14
		f 4 3 12 -6 -12
		mu 0 4 2 19 18 17
		f 4 4 14 -7 -14
		mu 0 4 7 6 16 15
		f 4 5 15 -8 -15
		mu 0 4 6 12 13 16
		f 4 6 17 -1 -17
		mu 0 4 10 9 1 0
		f 4 7 18 -2 -18
		mu 0 4 9 11 4 1
		f 4 -19 -16 -13 -10
		mu 0 4 4 11 8 5
		f 4 16 8 10 13
		mu 0 4 10 0 3 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall9";
	rename -uid "CA01D658-4F38-E903-27DE-95A09CDE605C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.99496613116934896 0 0 ;
	setAttr ".r" -type "double3" -1 0 0 ;
	setAttr ".rp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
	setAttr ".rpt" -type "double3" 0 0.052420656696253738 0.0091843359312582824 ;
	setAttr ".sp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
createNode mesh -n "Wall9Shape" -p "Wall9";
	rename -uid "7DEE2CF3-473E-5388-5DB4-E5A428801B8C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42247536033391953 0.65480825304985046 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".pt[0:101]" -type "float3"  -0.061220106 -0.0036120652 
		0.064269163 -0.10421643 -0.0025675497 0.10829233 -0.14021963 -0.0050170845 0.14476286 
		-0.057064924 -0.53513515 0.050742675 -0.10558908 -0.0042338311 0.10862213 -0.14079833 
		0.52927321 0.15357335 -0.31276917 -0.49196282 0.31512758 -0.31433174 0.041950565 
		0.32441908 -0.31535134 0.57375896 0.33392274 -0.31243977 0.042056937 0.32463354 -0.31297919 
		0.041782711 0.32530177 -0.31418091 0.041778821 0.32552466 0.005033887 -0.052281067 
		-0.0091831172 -2.3725681e-06 -0.052281305 -0.0091695525 0.0049910438 -0.05228534 
		-0.0089382641 0.0050242725 -0.58632541 -0.0022399861 0 -0.052391645 0.0058776136 
		0.0050155921 0.48351872 0.0085443808 -3.4744491e-05 -0.56039 -0.0095829284 -0.00045480073 
		-0.027465561 -1.3882556e-05 -0.013150149 -0.027696529 0.01321873 -0.037424587 -0.028131939 
		0.038163114 -0.037569147 0.49507645 0.047150116 -0.013531869 -0.030207975 0.013432657 
		-0.20889935 -0.5150665 0.20788857 -0.2088446 0.018688504 0.21751934 -0.23548579 0.018212328 
		0.2448 -0.26017144 0.017787779 0.26912177 -0.2611714 0.56283855 0.27779964 -0.23656803 
		0.018378112 0.24402876 -0.28367579 0.029828265 0.29474658 -0.28395909 -0.50392872 
		0.28523868 -0.29332981 0.029843967 0.30257776 -0.30105022 0.57103455 0.31906289 -0.29991725 
		0.029552994 0.31051764 -0.29206434 0.029676406 0.30344832 -0.12187812 -0.52598798 
		0.11815661 -0.12846029 0.0076537183 0.1342774 -0.17028429 0.0070142914 0.1769845 
		-0.20321098 0.0068861032 0.21002634 -0.20401405 0.548042 0.21877849 -0.1751107 0.0069794552 
		0.18163824 -0.010416911 -0.015108059 0.0074504041 -0.016434198 -0.54904038 0.0079742428 
		-0.049742609 -0.01795665 0.050889824 -0.082554318 0.51032197 0.093514726 -0.08220014 
		-0.018267898 0.084613152 -0.048841298 -0.01605317 0.050571207 0 -0.57239592 -0.0099912053 
		-1.1578333e-06 -0.039937381 -0.00092785462 -3.916744e-05 -0.039941076 -0.00071625545 
		-0.010000832 -0.040121358 0.0096110338 -0.0099713402 0.48640862 0.018806566 -1.6953385e-05 
		-0.039790768 -0.00059758953 0 -0.57994384 -0.010122956 0 -0.046178944 -0.0010614558 
		-1.481223e-05 -0.046180468 -0.00097411178 -0.0029682117 -0.046236753 0.0022494453 
		-0.0029346023 0.48424545 0.011579635 -3.2704659e-06 -0.046031393 -0.00078477641 -1.3460662e-05 
		-0.033697061 -0.00072362222 -1.0989419e-05 -0.56700701 -0.0098342905 -0.003973823 
		-0.034773909 0.0035698507 -0.02149592 0.48983449 0.030615548 -0.021443544 -0.033893261 
		0.021540545 -0.003992755 -0.033771671 0.0035503358 -0.0050908215 -0.55693394 -0.0041188779 
		-0.0060832817 -0.021328779 0.0061228001 -0.028209081 -0.021728324 0.029012989 -0.057800889 
		-0.02356937 0.05930654 -0.058049839 0.50201386 0.068250634 -0.028850107 -0.024727618 
		0.029272027 -0.036982376 -0.0094117336 0.038820099 -0.034030478 -0.54312003 0.026526604 
		-0.075643383 -0.010301438 0.077684097 -0.11044799 0.51956952 0.12227688 -0.1099828 
		-0.010714209 0.11343836 -0.074493311 -0.0087718656 0.077340946 -0.08458668 -0.5315578 
		0.079514094 -0.089779258 0.0037042079 0.094207451 -0.1366898 0.0012743613 0.1420383 
		-0.1715772 0.00055379473 0.1772451 -0.17226967 0.53893244 0.18603572 -0.13824703 
		0.0014211563 0.14235583 -0.16927297 0.013159958 0.17653726 -0.16270077 -0.52048039 
		0.16035506 -0.2049416 0.012705363 0.21131414 -0.23407505 0.55614668 0.2498081 -0.23316796 
		0.012033316 0.24108271 -0.20316334 0.012000385 0.21119562 -0.25068709 -0.50957376 
		0.25091588 -0.25043392 0.024183853 0.26040378 -0.26739171 0.023879521 0.27783835 
		-0.28281847 0.023620451 0.29268086 -0.28389528 0.56783074 0.30129904 -0.26857445 
		0.0240463 0.27701131 -0.30506533 0.035685174 0.31691653 -0.30537394 -0.49885079 0.30739012 
		-0.30897471 0.035236895 0.31878841 -0.31173214 0.57306057 0.33014837 -0.31056672 
		0.035602082 0.32167795 -0.30765185 0.03563679 0.31968817;
	setAttr ".dr" 1;
createNode mesh -n "Wall9ShapeOrig" -p "Wall9";
	rename -uid "8079F595-479A-DF32-00E4-B39776C90DEC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "bend1Handle";
	rename -uid "5DD75E42-40A4-1CF0-08E4-249841197E6E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.5 0.5 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 3 3 3 ;
	setAttr ".smd" 7;
createNode deformBend -n "bend1HandleShape" -p "bend1Handle";
	rename -uid "34FCB613-4082-9FC2-CF37-BEB18DD7194B";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 3 -3 0 0.78539816339744828 ;
	setAttr ".hw" 0.55;
createNode transform -n "OutsideBend";
	rename -uid "7873D444-4BAE-BFDB-B088-DAAADE9598F4";
	setAttr ".t" -type "double3" -3 0 6 ;
createNode mesh -n "OutsideBendShape" -p "OutsideBend";
	rename -uid "65CA4BC2-457A-5B9F-B6B0-588DB16DA04C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.17234243452548981 0.85207003355026245 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.50256181 0.70478821
		 0.50248498 0.64604837 0.50279236 0.88100773 0.50271553 0.82226783 0.50240827 0.58730853
		 0.50233662 0.53257847 0.82214254 0.9778226 0.94996512 0.97815305 0.14989762 0.53303951
		 0.1500461 0.64650941 0.15012291 0.70524925 0.14996921 0.58776957 0.69467324 0.84094387
		 0.69498152 0.72184694 0.15027657 0.82272893 0.95062631 0.72250819 0.82280385 0.72217757
		 0.15035342 0.88146877 0.15046583 0.96742153 0.50290483 0.96696055 0.72334754 0.066468351
		 0.83024472 0.066490106 0.83020133 0.28028461 0.72330403 0.28026286 0.93714207 0.06651184
		 0.93712187 0.16611205 0.50271553 0.32226783 0.50279236 0.38100773 0.15035342 0.38146877
		 0.15027657 0.32272893 0.50290483 0.46696055 0.15046583 0.46742153 0.15012291 0.20524926
		 0.1500461 0.14650942 0.50248498 0.14604838 0.50256181 0.20478822 0.14996921 0.087769568
		 0.50240827 0.087308556 0.14989762 0.03303951 0.50233662 0.032578453 0.32649606 0.32249838
		 0.32634234 0.20501874 0.32626554 0.1462789 0.32618874 0.087539062 0.32668534 0.46719104
		 0.32611713 0.032808982 0.3265729 0.38123825 0.32649606 0.82249838 0.32634234 0.70501876
		 0.32626554 0.64627886 0.32618874 0.58753908 0.32668534 0.96719104 0.32611713 0.53280902
		 0.3265729 0.88123822 0.23823263 0.70513403 0.23838632 0.82261366 0.23846316 0.8813535
		 0.23857558 0.96730626 0.23800737 0.53292429 0.23807898 0.58765435 0.23815581 0.64639413
		 0.4146058 0.82238311 0.41445208 0.70490348 0.41437525 0.64616358 0.4142985 0.5874238
		 0.4147951 0.96707582 0.41422689 0.53269374 0.41468263 0.88112295 0.23823263 0.205134
		 0.23838632 0.32261366 0.23846316 0.3813535 0.23857558 0.46730629 0.23800737 0.032924246
		 0.23807898 0.087654315 0.23815581 0.14639416 0.4146058 0.32238311 0.41445208 0.20490348
		 0.41437525 0.14616364 0.4142985 0.087423809 0.4147951 0.46707579 0.41422689 0.032693718
		 0.41468263 0.38112301 0.45866066 0.32232547 0.45850694 0.20484585 0.45843011 0.146106
		 0.4583534 0.087366179 0.45884997 0.46701819 0.45828176 0.032636084 0.45873749 0.38106537
		 0.37039721 0.20496112 0.37055093 0.32244074 0.37062776 0.38118064 0.37074023 0.4671334
		 0.37017202 0.032751352 0.37024361 0.087481439 0.37032038 0.14622128 0.2824412 0.32255602
		 0.28228748 0.20507637 0.28221068 0.14633653 0.28213388 0.087596685 0.28263044 0.46724868
		 0.28206223 0.032866612 0.28251803 0.38129586 0.19417778 0.20519164 0.19433144 0.32267129
		 0.1944083 0.38141114 0.19452071 0.46736389 0.1939525 0.03298188 0.19402409 0.087711945
		 0.19410095 0.1464518 0.45866066 0.82232547 0.45850694 0.70484585 0.45843011 0.646106
		 0.4583534 0.58736616 0.45884997 0.96701819 0.45828176 0.53263611 0.45873749 0.88106537
		 0.37039721 0.70496112 0.37055093 0.82244074 0.37062776 0.88118058 0.37074023 0.9671334
		 0.37017202 0.53275138 0.37024361 0.58748144 0.37032038 0.64622122 0.2824412 0.82255602
		 0.28228748 0.7050764 0.28221068 0.6463365 0.28213388 0.58759671 0.28263044 0.96724868
		 0.28206223 0.53286666 0.28251803 0.88129586 0.19417778 0.70519161 0.19433144 0.82267129
		 0.1944083 0.88141114 0.19452071 0.96736389 0.1939525 0.53298187 0.19402409 0.58771193
		 0.19410095 0.64645177;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 98 ".pt";
	setAttr ".pt[0]" -type "float3" -0.10420007 0 0.11722666 ;
	setAttr ".pt[1]" -type "float3" -0.13277853 0 0.14065027 ;
	setAttr ".pt[2]" -type "float3" -0.15576136 0 0.15838039 ;
	setAttr ".pt[3]" -type "float3" -0.099876046 0 0.118532 ;
	setAttr ".pt[4]" -type "float3" -0.12774372 0 0.14207864 ;
	setAttr ".pt[5]" -type "float3" -0.15576136 0 0.16534048 ;
	setAttr ".pt[6]" -type "float3" -0.3197186 0 0.31816971 ;
	setAttr ".pt[7]" -type "float3" -0.3197186 0 0.29376483 ;
	setAttr ".pt[8]" -type "float3" -0.3197186 0 0.31971872 ;
	setAttr ".pt[9]" -type "float3" -0.3197186 0 0.32126784 ;
	setAttr ".pt[10]" -type "float3" -0.3197186 0 0.29702353 ;
	setAttr ".pt[11]" -type "float3" -0.3197186 0 0.30908477 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.00055088382 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.0015467245 ;
	setAttr ".pt[16]" -type "float3" 0 0 -0.00038194191 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.00067357603 ;
	setAttr ".pt[18]" -type "float3" -0.012839116 0 0.020204306 ;
	setAttr ".pt[19]" -type "float3" -0.014166228 0 0.019740984 ;
	setAttr ".pt[20]" -type "float3" -0.031231403 0 0.036287904 ;
	setAttr ".pt[21]" -type "float3" -0.051260084 0 0.053910762 ;
	setAttr ".pt[22]" -type "float3" -0.051260084 0 0.057648033 ;
	setAttr ".pt[23]" -type "float3" -0.029140055 0 0.03691487 ;
	setAttr ".pt[24]" -type "float3" -0.24020112 0 0.22041392 ;
	setAttr ".pt[25]" -type "float3" -0.24020112 0 0.22313148 ;
	setAttr ".pt[26]" -type "float3" -0.25570995 0 0.25198185 ;
	setAttr ".pt[27]" -type "float3" -0.26963484 0 0.26297808 ;
	setAttr ".pt[28]" -type "float3" -0.26963484 0 0.27254605 ;
	setAttr ".pt[29]" -type "float3" -0.25460219 0 0.24981165 ;
	setAttr ".pt[30]" -type "float3" -0.29761958 0 0.25753948 ;
	setAttr ".pt[31]" -type "float3" -0.29761958 0 0.25454435 ;
	setAttr ".pt[32]" -type "float3" -0.30234975 0 0.28183031 ;
	setAttr ".pt[33]" -type "float3" -0.30653977 0 0.3070125 ;
	setAttr ".pt[34]" -type "float3" -0.30653977 0 0.29666233 ;
	setAttr ".pt[35]" -type "float3" -0.30234975 0 0.28499126 ;
	setAttr ".pt[36]" -type "float3" -0.16882277 0 0.1745919 ;
	setAttr ".pt[37]" -type "float3" -0.16882277 0 0.17689431 ;
	setAttr ".pt[38]" -type "float3" -0.19698387 0 0.19999135 ;
	setAttr ".pt[39]" -type "float3" -0.21614683 0 0.21448725 ;
	setAttr ".pt[40]" -type "float3" -0.21614683 0 0.22288728 ;
	setAttr ".pt[41]" -type "float3" -0.19050181 0 0.20184368 ;
	setAttr ".pt[42]" -type "float3" -0.049871117 0 0.061152428 ;
	setAttr ".pt[43]" -type "float3" -0.04711327 0 0.061984032 ;
	setAttr ".pt[44]" -type "float3" -0.071168065 0 0.084013432 ;
	setAttr ".pt[45]" -type "float3" -0.098237783 0 0.10767785 ;
	setAttr ".pt[46]" -type "float3" -0.098237783 0 0.10231337 ;
	setAttr ".pt[47]" -type "float3" -0.074688673 0 0.083022207 ;
	setAttr ".pt[48]" -type "float3" 0 0 0.00079738721 ;
	setAttr ".pt[49]" -type "float3" 0 0 0.00041817501 ;
	setAttr ".pt[50]" -type "float3" -0.0064692572 0 0.0075789616 ;
	setAttr ".pt[51]" -type "float3" -0.019196138 0 0.019387864 ;
	setAttr ".pt[52]" -type "float3" -0.019196138 0 0.021592818 ;
	setAttr ".pt[53]" -type "float3" -0.0056143366 0 0.0079348907 ;
	setAttr ".pt[56]" -type "float3" -0.0011516362 0 0.001008939 ;
	setAttr ".pt[57]" -type "float3" -0.0091545433 0 0.0084518492 ;
	setAttr ".pt[58]" -type "float3" -0.0091545433 0 0.0099607706 ;
	setAttr ".pt[59]" -type "float3" -0.00082315505 0 0.0012567863 ;
	setAttr ".pt[60]" -type "float3" -0.0045077503 0 0.0071365163 ;
	setAttr ".pt[61]" -type "float3" -0.0038081408 0 0.0078511536 ;
	setAttr ".pt[62]" -type "float3" -0.014995217 0 0.019740984 ;
	setAttr ".pt[63]" -type "float3" -0.033231854 0 0.037583143 ;
	setAttr ".pt[64]" -type "float3" -0.033231854 0 0.034631193 ;
	setAttr ".pt[65]" -type "float3" -0.016439483 0 0.019390851 ;
	setAttr ".pt[66]" -type "float3" -0.027341202 0 0.038649932 ;
	setAttr ".pt[67]" -type "float3" -0.029358372 0 0.038017884 ;
	setAttr ".pt[68]" -type "float3" -0.050767183 0 0.057766438 ;
	setAttr ".pt[69]" -type "float3" -0.07307297 0 0.076711118 ;
	setAttr ".pt[70]" -type "float3" -0.07307297 0 0.08125779 ;
	setAttr ".pt[71]" -type "float3" -0.047979772 0 0.058661193 ;
	setAttr ".pt[72]" -type "float3" -0.075131476 0 0.088001728 ;
	setAttr ".pt[73]" -type "float3" -0.071598113 0 0.089060545 ;
	setAttr ".pt[74]" -type "float3" -0.098237783 0 0.11222145 ;
	setAttr ".pt[75]" -type "float3" -0.12609315 0 0.13602704 ;
	setAttr ".pt[76]" -type "float3" -0.12609315 0 0.12985289 ;
	setAttr ".pt[77]" -type "float3" -0.10234094 0 0.11103246 ;
	setAttr ".pt[78]" -type "float3" -0.13166153 0 0.14829159 ;
	setAttr ".pt[79]" -type "float3" -0.13579768 0 0.14742202 ;
	setAttr ".pt[80]" -type "float3" -0.16479588 0 0.17069095 ;
	setAttr ".pt[81]" -type "float3" -0.18617952 0 0.18691617 ;
	setAttr ".pt[82]" -type "float3" -0.18617952 0 0.19462317 ;
	setAttr ".pt[83]" -type "float3" -0.1590184 0 0.17234039 ;
	setAttr ".pt[84]" -type "float3" -0.20577592 0 0.20143086 ;
	setAttr ".pt[85]" -type "float3" -0.20577592 0 0.19890642 ;
	setAttr ".pt[86]" -type "float3" -0.22277212 0 0.22807258 ;
	setAttr ".pt[87]" -type "float3" -0.24438941 0 0.24917161 ;
	setAttr ".pt[88]" -type "float3" -0.24438941 0 0.24014652 ;
	setAttr ".pt[89]" -type "float3" -0.22780865 0 0.22744036 ;
	setAttr ".pt[90]" -type "float3" -0.271635 0 0.23717356 ;
	setAttr ".pt[91]" -type "float3" -0.271635 0 0.24004948 ;
	setAttr ".pt[92]" -type "float3" -0.28168178 0 0.27101552 ;
	setAttr ".pt[93]" -type "float3" -0.29069388 0 0.28209841 ;
	setAttr ".pt[94]" -type "float3" -0.29069388 0 0.29211283 ;
	setAttr ".pt[95]" -type "float3" -0.28168178 0 0.26796919 ;
	setAttr ".pt[96]" -type "float3" -0.31408143 0 0.30045331 ;
	setAttr ".pt[97]" -type "float3" -0.31408143 0 0.29738206 ;
	setAttr ".pt[98]" -type "float3" -0.31530511 0 0.29066849 ;
	setAttr ".pt[99]" -type "float3" -0.31638122 0 0.31644607 ;
	setAttr ".pt[100]" -type "float3" -0.31638122 0 0.30588484 ;
	setAttr ".pt[101]" -type "float3" -0.31530511 0 0.29390186 ;
	setAttr -s 102 ".vt[0:101]"  0.26521629 0 -3.054502249 0.61876971 0 -2.70094895
		 0.97232306 0 -2.34739566 0.26521629 1 -3.054502249 0.61876971 1 -2.70094895 0.97232306 0.46586883 -2.34739566
		 3.3197186 1 -4.31971884 3.3197186 1 -3.8197186 3.3197186 0.46586883 -3.3197186 3.3197186 0 -4.31971884
		 3.3197186 0 -3.8197186 3.3197186 0 -3.3197186 -1 0 0 -0.5 0 0 2.220446e-16 0 0 -1 1 0
		 -0.5 1 0 2.220446e-16 0.46586883 0 -0.67118102 1 -1.65308475 -0.67118102 0 -1.65308475
		 -0.20924123 0 -1.461743 0.25269854 0 -1.27040136 0.25269854 0.46586883 -1.27040136
		 -0.20924123 1 -1.461743 1.66663384 1 -3.99089956 1.66663384 0 -3.99089956 1.8579756 0 -3.52895975
		 2.04931736 0 -3.067020178 2.04931736 0.46586883 -3.067020178 1.8579756 1 -3.52895975
		 2.47698331 0 -4.23671627 2.47698331 1 -4.23671627 2.57452846 1 -3.74632382 2.6720736 0.46586883 -3.25593114
		 2.6720736 0 -3.25593114 2.57452846 0 -3.74632382 0.91981155 1 -3.59171486 0.91981155 0 -3.59171486
		 1.19759667 0 -3.17598009 1.47538173 0 -2.76024508 1.47538173 0.46586883 -2.76024508
		 1.19759667 1 -3.17598009 -0.27199614 0 -2.39990711 -0.27199614 1 -2.39990711 0.14373866 1 -2.12212205
		 0.55947345 0.46586883 -1.84433687 0.55947345 0 -1.84433687 0.14373866 0 -2.12212205
		 -0.91699779 1 -0.84273529 -0.91699779 0 -0.84273529 -0.42660517 0 -0.74519014 0.06378746 0 -0.647645
		 0.06378746 0.46586883 -0.647645 -0.42660517 1 -0.74519014 -0.97919935 1 -0.42340648
		 -0.97919935 0 -0.42340648 -0.48160702 0 -0.3743979 0.015985353 0 -0.32538933 0.015985353 0.46586883 -0.32538933
		 -0.48160702 1 -0.3743979 -0.81399435 0 -1.25394809 -0.81399435 1 -1.25394809 -0.3355242 1 -1.10880578
		 0.14294598 0.46586883 -0.96366346 0.14294598 0 -0.96366346 -0.3355242 0 -1.10880578
		 -0.48993307 1 -2.036301374 -0.48993307 0 -2.036301374 -0.048972454 0 -1.80060291
		 0.39198819 0 -1.56490457 0.39198819 0.46586883 -1.56490457 -0.048972454 1 -1.80060291
		 -0.019469026 0 -2.74040055 -0.019469026 1 -2.74040055 0.36703619 1 -2.42320395 0.75354141 0.46586883 -2.1060071
		 0.75354141 0 -2.1060071 0.36703619 0 -2.42320395 0.57931817 1 -3.33918762 0.57931817 0 -3.33918762
		 0.89651477 0 -2.9526825 1.21371138 0 -2.56617713 1.21371138 0.46586883 -2.56617713
		 0.89651477 1 -2.9526825 1.28341734 0 -3.80965161 1.28341734 1 -3.80965161 1.51911569 1 -3.36869121
		 1.75481415 0.46586883 -2.92773056 1.75481415 0 -2.92773056 1.51911569 0 -3.36869121
		 2.065770388 1 -4.13371277 2.065770388 0 -4.13371277 2.21091294 0 -3.65524292 2.35605526 0 -3.17677259
		 2.35605526 0.46586883 -3.17677259 2.21091294 1 -3.65524292 2.89631224 0 -4.29891777
		 2.89631224 1 -4.29891777 2.94532084 1 -3.80132556 2.99432921 0.46586883 -3.30373335
		 2.99432921 0 -3.30373335 2.94532084 0 -3.80132556;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 2 5 0 3 78 0 4 83 1 5 82 0 6 9 0 7 10 1 8 11 0 9 96 0 10 101 1 11 100 0 12 13 0
		 13 14 0 15 16 0 16 17 0 12 15 0 13 16 1 14 17 0 15 54 0 16 59 1 17 58 0 0 72 0 1 77 1
		 2 76 0 18 66 0 19 60 0 20 65 1 21 64 0 22 70 0 23 71 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 90 0 25 84 0 26 89 1 27 88 0 28 94 0 29 95 1 24 25 1 25 26 1 26 27 1
		 27 28 1 28 29 1 29 24 1 30 91 0 31 97 0 32 98 1 33 99 0 34 93 0 35 92 1 30 31 1 31 32 1
		 32 33 1 33 34 1 34 35 1 35 30 1 36 85 0 37 79 0 38 80 1 39 81 0 40 87 0 41 86 1 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 67 0 43 73 0 44 74 1 45 75 0 46 69 0 47 68 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 61 0 49 55 0 50 56 1 51 57 0 52 63 0
		 53 62 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 48 0 55 12 0 56 13 1 57 14 0
		 58 52 0 59 53 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 49 0 61 18 0 62 23 1
		 63 22 0 64 51 0 65 50 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 43 0 67 19 0
		 68 20 1 69 21 0 70 45 0 71 44 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1 72 42 0
		 73 3 0 74 4 1 75 5 0 76 46 0 77 47 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 72 1
		 78 36 0 79 0 0 80 1 1 81 2 0 82 40 0 83 41 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 78 1 84 37 0 85 24 0;
	setAttr ".ed[166:199]" 86 29 1 87 28 0 88 39 0 89 38 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1 90 31 0 91 25 0 92 26 1 93 27 0 94 33 0 95 32 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 90 1 96 30 0 97 6 0 98 7 1 99 8 0 100 34 0 101 35 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 96 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 2 11 163 -11
		mu 0 4 3 2 116 110
		f 4 3 12 162 -12
		mu 0 4 2 19 114 116
		f 4 4 14 -7 -14
		mu 0 4 7 6 16 15
		f 4 5 15 -8 -15
		mu 0 4 6 12 13 16
		f 4 159 154 -1 -154
		mu 0 4 111 112 1 0
		f 4 160 155 -2 -155
		mu 0 4 112 113 4 1
		f 4 -156 161 -13 -10
		mu 0 4 4 113 115 5
		f 4 158 153 8 10
		mu 0 4 110 111 0 3
		f 4 19 24 -22 -24
		mu 0 4 20 21 22 23
		f 4 20 25 -23 -25
		mu 0 4 21 24 25 22
		f 4 21 27 115 -27
		mu 0 4 26 27 88 82
		f 4 22 28 114 -28
		mu 0 4 27 30 86 88
		f 4 111 106 -20 -106
		mu 0 4 83 84 34 35
		f 4 112 107 -21 -107
		mu 0 4 84 85 37 34
		f 4 -108 113 -29 -26
		mu 0 4 37 85 87 39
		f 4 110 105 23 26
		mu 0 4 82 83 35 26
		f 4 29 146 141 -9
		mu 0 4 32 103 104 29
		f 4 0 30 151 -30
		mu 0 4 32 33 109 103
		f 4 1 31 150 -31
		mu 0 4 33 36 108 109
		f 4 149 -32 9 -144
		mu 0 4 107 108 36 38
		f 4 148 143 -4 -143
		mu 0 4 105 106 31 28
		f 4 147 142 -3 -142
		mu 0 4 104 105 28 29
		f 4 16 194 189 13
		mu 0 4 10 131 132 14
		f 4 6 17 199 -17
		mu 0 4 10 9 137 131
		f 4 7 18 198 -18
		mu 0 4 9 11 136 137
		f 4 197 -19 -16 -192
		mu 0 4 135 136 11 8
		f 4 196 191 -6 -191
		mu 0 4 133 134 18 17
		f 4 195 190 -5 -190
		mu 0 4 132 133 17 14
		f 4 182 177 -51 44
		mu 0 4 124 125 48 47
		f 4 -56 49 187 -45
		mu 0 4 47 53 130 124
		f 4 -55 48 186 -50
		mu 0 4 53 51 128 130
		f 4 -54 -180 185 -49
		mu 0 4 52 50 127 129
		f 4 184 179 -53 -179
		mu 0 4 126 127 50 49
		f 4 183 178 -52 -178
		mu 0 4 125 126 49 48
		f 4 50 45 170 165
		mu 0 4 47 48 117 118
		f 4 51 46 175 -46
		mu 0 4 48 49 123 117
		f 4 52 47 174 -47
		mu 0 4 49 50 122 123
		f 4 173 -48 53 -168
		mu 0 4 121 122 50 52
		f 4 172 167 54 -167
		mu 0 4 119 120 51 53
		f 4 171 166 55 -166
		mu 0 4 118 119 53 47
		f 4 134 129 -39 32
		mu 0 4 96 97 41 40
		f 4 -44 37 139 -33
		mu 0 4 40 46 102 96
		f 4 -43 36 138 -38
		mu 0 4 46 44 100 102
		f 4 -42 -132 137 -37
		mu 0 4 45 43 99 101
		f 4 136 131 -41 -131
		mu 0 4 98 99 43 42
		f 4 135 130 -40 -130
		mu 0 4 97 98 42 41
		f 4 38 33 122 117
		mu 0 4 40 41 89 90
		f 4 39 34 127 -34
		mu 0 4 41 42 95 89
		f 4 40 35 126 -35
		mu 0 4 42 43 94 95
		f 4 125 -36 41 -120
		mu 0 4 93 94 43 45
		f 4 124 119 42 -119
		mu 0 4 91 92 44 46
		f 4 123 118 43 -118
		mu 0 4 90 91 46 40
		f 4 98 93 -111 104
		mu 0 4 75 76 83 82
		f 4 99 94 -112 -94
		mu 0 4 76 77 84 83
		f 4 100 95 -113 -95
		mu 0 4 77 78 85 84
		f 4 -114 -96 101 -109
		mu 0 4 87 85 78 80
		f 4 -115 108 102 -110
		mu 0 4 88 86 79 81
		f 4 -116 109 103 -105
		mu 0 4 82 88 81 75
		f 4 -123 116 -99 92
		mu 0 4 90 89 76 75
		f 4 -104 97 -124 -93
		mu 0 4 75 81 91 90
		f 4 -103 96 -125 -98
		mu 0 4 81 79 92 91
		f 4 -102 -121 -126 -97
		mu 0 4 80 78 94 93
		f 4 -127 120 -101 -122
		mu 0 4 95 94 78 77
		f 4 -128 121 -100 -117
		mu 0 4 89 95 77 76
		f 4 -87 80 -135 128
		mu 0 4 69 68 97 96
		f 4 -92 85 -136 -81
		mu 0 4 68 74 98 97
		f 4 -91 84 -137 -86
		mu 0 4 74 73 99 98
		f 4 -138 -85 -90 -133
		mu 0 4 101 99 73 72
		f 4 -139 132 -89 -134
		mu 0 4 102 100 71 70
		f 4 -140 133 -88 -129
		mu 0 4 96 102 70 69
		f 4 -147 140 86 81
		mu 0 4 104 103 68 69
		f 4 87 82 -148 -82
		mu 0 4 69 70 105 104
		f 4 88 83 -149 -83
		mu 0 4 70 71 106 105
		f 4 89 -145 -150 -84
		mu 0 4 72 73 108 107
		f 4 -151 144 90 -146
		mu 0 4 109 108 73 74
		f 4 -152 145 91 -141
		mu 0 4 103 109 74 68
		f 4 74 69 -159 152
		mu 0 4 61 62 111 110
		f 4 75 70 -160 -70
		mu 0 4 62 63 112 111
		f 4 76 71 -161 -71
		mu 0 4 63 64 113 112
		f 4 -162 -72 77 -157
		mu 0 4 115 113 64 66
		f 4 -163 156 78 -158
		mu 0 4 116 114 65 67
		f 4 -164 157 79 -153
		mu 0 4 110 116 67 61
		f 4 -171 164 -75 68
		mu 0 4 118 117 62 61
		f 4 -80 73 -172 -69
		mu 0 4 61 67 119 118
		f 4 -79 72 -173 -74
		mu 0 4 67 65 120 119
		f 4 -78 -169 -174 -73
		mu 0 4 66 64 122 121
		f 4 -175 168 -77 -170
		mu 0 4 123 122 64 63
		f 4 -176 169 -76 -165
		mu 0 4 117 123 63 62
		f 4 -63 56 -183 176
		mu 0 4 55 54 125 124
		f 4 -68 61 -184 -57
		mu 0 4 54 60 126 125
		f 4 -67 60 -185 -62
		mu 0 4 60 59 127 126
		f 4 -186 -61 -66 -181
		mu 0 4 129 127 59 58
		f 4 -187 180 -65 -182
		mu 0 4 130 128 57 56
		f 4 -188 181 -64 -177
		mu 0 4 124 130 56 55
		f 4 -195 188 62 57
		mu 0 4 132 131 54 55
		f 4 63 58 -196 -58
		mu 0 4 55 56 133 132
		f 4 64 59 -197 -59
		mu 0 4 56 57 134 133
		f 4 65 -193 -198 -60
		mu 0 4 58 59 136 135
		f 4 -199 192 66 -194
		mu 0 4 137 136 59 60
		f 4 -200 193 67 -189
		mu 0 4 131 137 60 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "OutsideBendShapeOrig" -p "OutsideBend";
	rename -uid "6A512778-4C25-3F18-FDC0-31A702C0407D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.50256181 0.70478821
		 0.50248498 0.64604837 0.50279236 0.88100773 0.50271553 0.82226783 0.50240827 0.58730853
		 0.50233662 0.53257847 0.82214254 0.9778226 0.94996512 0.97815305 0.14989762 0.53303951
		 0.1500461 0.64650941 0.15012291 0.70524925 0.14996921 0.58776957 0.69467324 0.84094387
		 0.69498152 0.72184694 0.15027657 0.82272893 0.95062631 0.72250819 0.82280385 0.72217757
		 0.15035342 0.88146877 0.15046583 0.96742153 0.50290483 0.96696055 0.72334754 0.066468351
		 0.83024472 0.066490106 0.83020133 0.28028461 0.72330403 0.28026286 0.93714207 0.06651184
		 0.93712187 0.16611205 0.50271553 0.32226783 0.50279236 0.38100773 0.15035342 0.38146877
		 0.15027657 0.32272893 0.50290483 0.46696055 0.15046583 0.46742153 0.15012291 0.20524926
		 0.1500461 0.14650942 0.50248498 0.14604838 0.50256181 0.20478822 0.14996921 0.087769568
		 0.50240827 0.087308556 0.14989762 0.03303951 0.50233662 0.032578453 0.32649606 0.32249838
		 0.32634234 0.20501874 0.32626554 0.1462789 0.32618874 0.087539062 0.32668534 0.46719104
		 0.32611713 0.032808982 0.3265729 0.38123825 0.32649606 0.82249838 0.32634234 0.70501876
		 0.32626554 0.64627886 0.32618874 0.58753908 0.32668534 0.96719104 0.32611713 0.53280902
		 0.3265729 0.88123822 0.23823263 0.70513403 0.23838632 0.82261366 0.23846316 0.8813535
		 0.23857558 0.96730626 0.23800737 0.53292429 0.23807898 0.58765435 0.23815581 0.64639413
		 0.4146058 0.82238311 0.41445208 0.70490348 0.41437525 0.64616358 0.4142985 0.5874238
		 0.4147951 0.96707582 0.41422689 0.53269374 0.41468263 0.88112295 0.23823263 0.205134
		 0.23838632 0.32261366 0.23846316 0.3813535 0.23857558 0.46730629 0.23800737 0.032924246
		 0.23807898 0.087654315 0.23815581 0.14639416 0.4146058 0.32238311 0.41445208 0.20490348
		 0.41437525 0.14616364 0.4142985 0.087423809 0.4147951 0.46707579 0.41422689 0.032693718
		 0.41468263 0.38112301 0.45866066 0.32232547 0.45850694 0.20484585 0.45843011 0.146106
		 0.4583534 0.087366179 0.45884997 0.46701819 0.45828176 0.032636084 0.45873749 0.38106537
		 0.37039721 0.20496112 0.37055093 0.32244074 0.37062776 0.38118064 0.37074023 0.4671334
		 0.37017202 0.032751352 0.37024361 0.087481439 0.37032038 0.14622128 0.2824412 0.32255602
		 0.28228748 0.20507637 0.28221068 0.14633653 0.28213388 0.087596685 0.28263044 0.46724868
		 0.28206223 0.032866612 0.28251803 0.38129586 0.19417778 0.20519164 0.19433144 0.32267129
		 0.1944083 0.38141114 0.19452071 0.46736389 0.1939525 0.03298188 0.19402409 0.087711945
		 0.19410095 0.1464518 0.45866066 0.82232547 0.45850694 0.70484585 0.45843011 0.646106
		 0.4583534 0.58736616 0.45884997 0.96701819 0.45828176 0.53263611 0.45873749 0.88106537
		 0.37039721 0.70496112 0.37055093 0.82244074 0.37062776 0.88118058 0.37074023 0.9671334
		 0.37017202 0.53275138 0.37024361 0.58748144 0.37032038 0.64622122 0.2824412 0.82255602
		 0.28228748 0.7050764 0.28221068 0.6463365 0.28213388 0.58759671 0.28263044 0.96724868
		 0.28206223 0.53286666 0.28251803 0.88129586 0.19417778 0.70519161 0.19433144 0.82267129
		 0.1944083 0.88141114 0.19452071 0.96736389 0.1939525 0.53298187 0.19402409 0.58771193
		 0.19410095 0.64645177;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".vt[0:101]"  -1 0 -3 -0.5 0 -3 0 0 -3 -1 1 -3 -0.5 1 -3
		 0 0.46586883 -3 -1 1 -6 -0.5 1 -6 0 0.46586883 -6 -1 0 -6 -0.5 0 -6 0 0 -6 -1 0 0
		 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0 -1 1 -1.5 -1 0 -1.5 -0.5 0 -1.5 0 0 -1.5
		 0 0.46586883 -1.5 -0.5 1 -1.5 -1 1 -4.5 -1 0 -4.5 -0.5 0 -4.5 0 0 -4.5 0 0.46586883 -4.5
		 -0.5 1 -4.5 -1 0 -5.25 -1 1 -5.25 -0.5 1 -5.25 0 0.46586883 -5.25 0 0 -5.25 -0.5 0 -5.25
		 -1 1 -3.75 -1 0 -3.75 -0.5 0 -3.75 0 0 -3.75 0 0.46586883 -3.75 -0.5 1 -3.75 -1 0 -2.25
		 -1 1 -2.25 -0.5 1 -2.25 0 0.46586883 -2.25 0 0 -2.25 -0.5 0 -2.25 -1 1 -0.75 -1 0 -0.75
		 -0.5 0 -0.75 0 0 -0.75 0 0.46586883 -0.75 -0.5 1 -0.75 -1 1 -0.375 -1 0 -0.375 -0.5 0 -0.375
		 0 0 -0.375 0 0.46586883 -0.375 -0.5 1 -0.375 -1 0 -1.125 -1 1 -1.125 -0.5 1 -1.125
		 0 0.46586883 -1.125 0 0 -1.125 -0.5 0 -1.125 -1 1 -1.875 -1 0 -1.875 -0.5 0 -1.875
		 0 0 -1.875 0 0.46586883 -1.875 -0.5 1 -1.875 -1 0 -2.625 -1 1 -2.625 -0.5 1 -2.625
		 0 0.46586883 -2.625 0 0 -2.625 -0.5 0 -2.625 -1 1 -3.375 -1 0 -3.375 -0.5 0 -3.375
		 0 0 -3.375 0 0.46586883 -3.375 -0.5 1 -3.375 -1 0 -4.125 -1 1 -4.125 -0.5 1 -4.125
		 0 0.46586883 -4.125 0 0 -4.125 -0.5 0 -4.125 -1 1 -4.875 -1 0 -4.875 -0.5 0 -4.875
		 0 0 -4.875 0 0.46586883 -4.875 -0.5 1 -4.875 -1 0 -5.625 -1 1 -5.625 -0.5 1 -5.625
		 0 0.46586883 -5.625 0 0 -5.625 -0.5 0 -5.625;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 2 5 0 3 78 0 4 83 1 5 82 0 6 9 0 7 10 1 8 11 0 9 96 0 10 101 1 11 100 0 12 13 0
		 13 14 0 15 16 0 16 17 0 12 15 0 13 16 1 14 17 0 15 54 0 16 59 1 17 58 0 0 72 0 1 77 1
		 2 76 0 18 66 0 19 60 0 20 65 1 21 64 0 22 70 0 23 71 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 90 0 25 84 0 26 89 1 27 88 0 28 94 0 29 95 1 24 25 1 25 26 1 26 27 1
		 27 28 1 28 29 1 29 24 1 30 91 0 31 97 0 32 98 1 33 99 0 34 93 0 35 92 1 30 31 1 31 32 1
		 32 33 1 33 34 1 34 35 1 35 30 1 36 85 0 37 79 0 38 80 1 39 81 0 40 87 0 41 86 1 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 67 0 43 73 0 44 74 1 45 75 0 46 69 0 47 68 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 61 0 49 55 0 50 56 1 51 57 0 52 63 0
		 53 62 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 48 0 55 12 0 56 13 1 57 14 0
		 58 52 0 59 53 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 49 0 61 18 0 62 23 1
		 63 22 0 64 51 0 65 50 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 43 0 67 19 0
		 68 20 1 69 21 0 70 45 0 71 44 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1 72 42 0
		 73 3 0 74 4 1 75 5 0 76 46 0 77 47 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 72 1
		 78 36 0 79 0 0 80 1 1 81 2 0 82 40 0 83 41 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 78 1 84 37 0 85 24 0;
	setAttr ".ed[166:199]" 86 29 1 87 28 0 88 39 0 89 38 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1 90 31 0 91 25 0 92 26 1 93 27 0 94 33 0 95 32 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 90 1 96 30 0 97 6 0 98 7 1 99 8 0 100 34 0 101 35 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 96 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 2 11 163 -11
		mu 0 4 3 2 116 110
		f 4 3 12 162 -12
		mu 0 4 2 19 114 116
		f 4 4 14 -7 -14
		mu 0 4 7 6 16 15
		f 4 5 15 -8 -15
		mu 0 4 6 12 13 16
		f 4 159 154 -1 -154
		mu 0 4 111 112 1 0
		f 4 160 155 -2 -155
		mu 0 4 112 113 4 1
		f 4 -156 161 -13 -10
		mu 0 4 4 113 115 5
		f 4 158 153 8 10
		mu 0 4 110 111 0 3
		f 4 19 24 -22 -24
		mu 0 4 20 21 22 23
		f 4 20 25 -23 -25
		mu 0 4 21 24 25 22
		f 4 21 27 115 -27
		mu 0 4 26 27 88 82
		f 4 22 28 114 -28
		mu 0 4 27 30 86 88
		f 4 111 106 -20 -106
		mu 0 4 83 84 34 35
		f 4 112 107 -21 -107
		mu 0 4 84 85 37 34
		f 4 -108 113 -29 -26
		mu 0 4 37 85 87 39
		f 4 110 105 23 26
		mu 0 4 82 83 35 26
		f 4 29 146 141 -9
		mu 0 4 32 103 104 29
		f 4 0 30 151 -30
		mu 0 4 32 33 109 103
		f 4 1 31 150 -31
		mu 0 4 33 36 108 109
		f 4 149 -32 9 -144
		mu 0 4 107 108 36 38
		f 4 148 143 -4 -143
		mu 0 4 105 106 31 28
		f 4 147 142 -3 -142
		mu 0 4 104 105 28 29
		f 4 16 194 189 13
		mu 0 4 10 131 132 14
		f 4 6 17 199 -17
		mu 0 4 10 9 137 131
		f 4 7 18 198 -18
		mu 0 4 9 11 136 137
		f 4 197 -19 -16 -192
		mu 0 4 135 136 11 8
		f 4 196 191 -6 -191
		mu 0 4 133 134 18 17
		f 4 195 190 -5 -190
		mu 0 4 132 133 17 14
		f 4 182 177 -51 44
		mu 0 4 124 125 48 47
		f 4 -56 49 187 -45
		mu 0 4 47 53 130 124
		f 4 -55 48 186 -50
		mu 0 4 53 51 128 130
		f 4 -54 -180 185 -49
		mu 0 4 52 50 127 129
		f 4 184 179 -53 -179
		mu 0 4 126 127 50 49
		f 4 183 178 -52 -178
		mu 0 4 125 126 49 48
		f 4 50 45 170 165
		mu 0 4 47 48 117 118
		f 4 51 46 175 -46
		mu 0 4 48 49 123 117
		f 4 52 47 174 -47
		mu 0 4 49 50 122 123
		f 4 173 -48 53 -168
		mu 0 4 121 122 50 52
		f 4 172 167 54 -167
		mu 0 4 119 120 51 53
		f 4 171 166 55 -166
		mu 0 4 118 119 53 47
		f 4 134 129 -39 32
		mu 0 4 96 97 41 40
		f 4 -44 37 139 -33
		mu 0 4 40 46 102 96
		f 4 -43 36 138 -38
		mu 0 4 46 44 100 102
		f 4 -42 -132 137 -37
		mu 0 4 45 43 99 101
		f 4 136 131 -41 -131
		mu 0 4 98 99 43 42
		f 4 135 130 -40 -130
		mu 0 4 97 98 42 41
		f 4 38 33 122 117
		mu 0 4 40 41 89 90
		f 4 39 34 127 -34
		mu 0 4 41 42 95 89
		f 4 40 35 126 -35
		mu 0 4 42 43 94 95
		f 4 125 -36 41 -120
		mu 0 4 93 94 43 45
		f 4 124 119 42 -119
		mu 0 4 91 92 44 46
		f 4 123 118 43 -118
		mu 0 4 90 91 46 40
		f 4 98 93 -111 104
		mu 0 4 75 76 83 82
		f 4 99 94 -112 -94
		mu 0 4 76 77 84 83
		f 4 100 95 -113 -95
		mu 0 4 77 78 85 84
		f 4 -114 -96 101 -109
		mu 0 4 87 85 78 80
		f 4 -115 108 102 -110
		mu 0 4 88 86 79 81
		f 4 -116 109 103 -105
		mu 0 4 82 88 81 75
		f 4 -123 116 -99 92
		mu 0 4 90 89 76 75
		f 4 -104 97 -124 -93
		mu 0 4 75 81 91 90
		f 4 -103 96 -125 -98
		mu 0 4 81 79 92 91
		f 4 -102 -121 -126 -97
		mu 0 4 80 78 94 93
		f 4 -127 120 -101 -122
		mu 0 4 95 94 78 77
		f 4 -128 121 -100 -117
		mu 0 4 89 95 77 76
		f 4 -87 80 -135 128
		mu 0 4 69 68 97 96
		f 4 -92 85 -136 -81
		mu 0 4 68 74 98 97
		f 4 -91 84 -137 -86
		mu 0 4 74 73 99 98
		f 4 -138 -85 -90 -133
		mu 0 4 101 99 73 72
		f 4 -139 132 -89 -134
		mu 0 4 102 100 71 70
		f 4 -140 133 -88 -129
		mu 0 4 96 102 70 69
		f 4 -147 140 86 81
		mu 0 4 104 103 68 69
		f 4 87 82 -148 -82
		mu 0 4 69 70 105 104
		f 4 88 83 -149 -83
		mu 0 4 70 71 106 105
		f 4 89 -145 -150 -84
		mu 0 4 72 73 108 107
		f 4 -151 144 90 -146
		mu 0 4 109 108 73 74
		f 4 -152 145 91 -141
		mu 0 4 103 109 74 68
		f 4 74 69 -159 152
		mu 0 4 61 62 111 110
		f 4 75 70 -160 -70
		mu 0 4 62 63 112 111
		f 4 76 71 -161 -71
		mu 0 4 63 64 113 112
		f 4 -162 -72 77 -157
		mu 0 4 115 113 64 66
		f 4 -163 156 78 -158
		mu 0 4 116 114 65 67
		f 4 -164 157 79 -153
		mu 0 4 110 116 67 61
		f 4 -171 164 -75 68
		mu 0 4 118 117 62 61
		f 4 -80 73 -172 -69
		mu 0 4 61 67 119 118
		f 4 -79 72 -173 -74
		mu 0 4 67 65 120 119
		f 4 -78 -169 -174 -73
		mu 0 4 66 64 122 121
		f 4 -175 168 -77 -170
		mu 0 4 123 122 64 63
		f 4 -176 169 -76 -165
		mu 0 4 117 123 63 62
		f 4 -63 56 -183 176
		mu 0 4 55 54 125 124
		f 4 -68 61 -184 -57
		mu 0 4 54 60 126 125
		f 4 -67 60 -185 -62
		mu 0 4 60 59 127 126
		f 4 -186 -61 -66 -181
		mu 0 4 129 127 59 58
		f 4 -187 180 -65 -182
		mu 0 4 130 128 57 56
		f 4 -188 181 -64 -177
		mu 0 4 124 130 56 55
		f 4 -195 188 62 57
		mu 0 4 132 131 54 55
		f 4 63 58 -196 -58
		mu 0 4 55 56 133 132
		f 4 64 59 -197 -59
		mu 0 4 56 57 134 133
		f 4 65 -193 -198 -60
		mu 0 4 58 59 136 135
		f 4 -199 192 66 -194
		mu 0 4 137 136 59 60
		f 4 -200 193 67 -189
		mu 0 4 131 137 60 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall10";
	rename -uid "FBAA6797-44C0-FDEF-5293-5F9C9FAF3BE6";
	setAttr ".t" -type "double3" -1.005033868830651 0 -1.0079983128234771 ;
	setAttr ".r" -type "double3" -1 0 0 ;
	setAttr ".rp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
	setAttr ".rpt" -type "double3" 0 0.052420656696253738 0.0091843359312582824 ;
	setAttr ".sp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
createNode mesh -n "Wall10Shape" -p "Wall10";
	rename -uid "BC46CA90-460D-42BD-9DB5-8B8732740EC7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47403703510164363 0.16535335779190063 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
createNode mesh -n "Wall10ShapeOrig" -p "Wall10";
	rename -uid "8EA598EC-46EF-8A06-EE89-0EA313ACC4D8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.50256181 0.70478821
		 0.50248498 0.64604837 0.50279236 0.88100773 0.50271553 0.82226783 0.50240827 0.58730853
		 0.50233662 0.53257847 0.82214254 0.9778226 0.94996512 0.97815305 0.14989762 0.53303951
		 0.1500461 0.64650941 0.15012291 0.70524925 0.14996921 0.58776957 0.69467324 0.84094387
		 0.69498152 0.72184694 0.15027657 0.82272893 0.95062631 0.72250819 0.82280385 0.72217757
		 0.15035342 0.88146877 0.15046583 0.96742153 0.50290483 0.96696055 0.72334754 0.066468351
		 0.83024472 0.066490106 0.83020133 0.28028461 0.72330403 0.28026286 0.93714207 0.06651184
		 0.93712187 0.16611205 0.50271553 0.32226783 0.50279236 0.38100773 0.15035342 0.38146877
		 0.15027657 0.32272893 0.50290483 0.46696055 0.15046583 0.46742153 0.15012291 0.20524926
		 0.1500461 0.14650942 0.50248498 0.14604838 0.50256181 0.20478822 0.14996921 0.087769568
		 0.50240827 0.087308556 0.14989762 0.03303951 0.50233662 0.032578453 0.32649606 0.32249838
		 0.32634234 0.20501874 0.32626554 0.1462789 0.32618874 0.087539062 0.32668534 0.46719104
		 0.32611713 0.032808982 0.3265729 0.38123825 0.32649606 0.82249838 0.32634234 0.70501876
		 0.32626554 0.64627886 0.32618874 0.58753908 0.32668534 0.96719104 0.32611713 0.53280902
		 0.3265729 0.88123822 0.23823263 0.70513403 0.23838632 0.82261366 0.23846316 0.8813535
		 0.23857558 0.96730626 0.23800737 0.53292429 0.23807898 0.58765435 0.23815581 0.64639413
		 0.4146058 0.82238311 0.41445208 0.70490348 0.41437525 0.64616358 0.4142985 0.5874238
		 0.4147951 0.96707582 0.41422689 0.53269374 0.41468263 0.88112295 0.23823263 0.205134
		 0.23838632 0.32261366 0.23846316 0.3813535 0.23857558 0.46730629 0.23800737 0.032924246
		 0.23807898 0.087654315 0.23815581 0.14639416 0.4146058 0.32238311 0.41445208 0.20490348
		 0.41437525 0.14616364 0.4142985 0.087423809 0.4147951 0.46707579 0.41422689 0.032693718
		 0.41468263 0.38112301 0.45866066 0.32232547 0.45850694 0.20484585 0.45843011 0.146106
		 0.4583534 0.087366179 0.45884997 0.46701819 0.45828176 0.032636084 0.45873749 0.38106537
		 0.37039721 0.20496112 0.37055093 0.32244074 0.37062776 0.38118064 0.37074023 0.4671334
		 0.37017202 0.032751352 0.37024361 0.087481439 0.37032038 0.14622128 0.2824412 0.32255602
		 0.28228748 0.20507637 0.28221068 0.14633653 0.28213388 0.087596685 0.28263044 0.46724868
		 0.28206223 0.032866612 0.28251803 0.38129586 0.19417778 0.20519164 0.19433144 0.32267129
		 0.1944083 0.38141114 0.19452071 0.46736389 0.1939525 0.03298188 0.19402409 0.087711945
		 0.19410095 0.1464518 0.45866066 0.82232547 0.45850694 0.70484585 0.45843011 0.646106
		 0.4583534 0.58736616 0.45884997 0.96701819 0.45828176 0.53263611 0.45873749 0.88106537
		 0.37039721 0.70496112 0.37055093 0.82244074 0.37062776 0.88118058 0.37074023 0.9671334
		 0.37017202 0.53275138 0.37024361 0.58748144 0.37032038 0.64622122 0.2824412 0.82255602
		 0.28228748 0.7050764 0.28221068 0.6463365 0.28213388 0.58759671 0.28263044 0.96724868
		 0.28206223 0.53286666 0.28251803 0.88129586 0.19417778 0.70519161 0.19433144 0.82267129
		 0.1944083 0.88141114 0.19452071 0.96736389 0.1939525 0.53298187 0.19402409 0.58771193
		 0.19410095 0.64645177;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".vt[0:101]"  -1 0.0024140773 -3 -0.5 0.0024140773 -3 0 0.0024140773 -3
		 -1 1.0024139881 -3 -0.5 1.0024139881 -3 0 0.46828291 -3 -1 1.0048280954 -6 -0.5 1.0048280954 -6
		 0 0.47069699 -6 -1 0.0048281546 -6 -0.5 0.0048281546 -6 0 0.0048281546 -6 -1 0 0
		 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0 -1 1.0012069941 -1.5 -1 0.0012070386 -1.5
		 -0.5 0.0012070386 -1.5 0 0.0012070386 -1.5 0 0.46707588 -1.5 -0.5 1.0012069941 -1.5
		 -1 1.0036211014 -4.5 -1 0.0036211158 -4.5 -0.5 0.0036211158 -4.5 0 0.0036211158 -4.5
		 0 0.46948993 -4.5 -0.5 1.0036211014 -4.5 -1 0.0042246352 -5.25 -1 1.0042245388 -5.25
		 -0.5 1.0042245388 -5.25 0 0.47009346 -5.25 0 0.0042246352 -5.25 -0.5 0.0042246352 -5.25
		 -1 1.0030175447 -3.75 -1 0.0030175964 -3.75 -0.5 0.0030175964 -3.75 0 0.0030175964 -3.75
		 0 0.46888644 -3.75 -0.5 1.0030175447 -3.75 -1 0.0018105579 -2.25 -1 1.0018105507 -2.25
		 -0.5 1.0018105507 -2.25 0 0.46767938 -2.25 0 0.0018105579 -2.25 -0.5 0.0018105579 -2.25
		 -1 1.00060343742 -0.75 -1 0.00060351932 -0.75 -0.5 0.00060351932 -0.75 0 0.00060351932 -0.75
		 0 0.46647236 -0.75 -0.5 1.00060343742 -0.75 -1 1.00030171871 -0.375 -1 0.00030175966 -0.375
		 -0.5 0.00030175966 -0.375 0 0.00030175966 -0.375 0 0.46617061 -0.375 -0.5 1.00030171871 -0.375
		 -1 0.00090527895 -1.125 -1 1.00090527534 -1.125 -0.5 1.00090527534 -1.125 0 0.46677411 -1.125
		 0 0.00090527895 -1.125 -0.5 0.00090527895 -1.125 -1 1.0015087128 -1.875 -1 0.0015087982 -1.875
		 -0.5 0.0015087982 -1.875 0 0.0015087982 -1.875 0 0.46737763 -1.875 -0.5 1.0015087128 -1.875
		 -1 0.0021123176 -2.625 -1 1.0021122694 -2.625 -0.5 1.0021122694 -2.625 0 0.46798116 -2.625
		 0 0.0021123176 -2.625 -0.5 0.0021123176 -2.625 -1 1.002715826 -3.375 -1 0.0027158367 -3.375
		 -0.5 0.0027158367 -3.375 0 0.0027158367 -3.375 0 0.46858466 -3.375 -0.5 1.002715826 -3.375
		 -1 0.0033193561 -4.125 -1 1.0033192635 -4.125 -0.5 1.0033192635 -4.125 0 0.46918818 -4.125
		 0 0.0033193561 -4.125 -0.5 0.0033193561 -4.125 -1 1.0039228201 -4.875 -1 0.0039228755 -4.875
		 -0.5 0.0039228755 -4.875 0 0.0039228755 -4.875 0 0.46979171 -4.875 -0.5 1.0039228201 -4.875
		 -1 0.0045263949 -5.625 -1 1.0045263767 -5.625 -0.5 1.0045263767 -5.625 0 0.47039521 -5.625
		 0 0.0045263949 -5.625 -0.5 0.0045263949 -5.625;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 2 5 0 3 78 0 4 83 1 5 82 0 6 9 0 7 10 1 8 11 0 9 96 0 10 101 1 11 100 0 12 13 0
		 13 14 0 15 16 0 16 17 0 12 15 0 13 16 1 14 17 0 15 54 0 16 59 1 17 58 0 0 72 0 1 77 1
		 2 76 0 18 66 0 19 60 0 20 65 1 21 64 0 22 70 0 23 71 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 90 0 25 84 0 26 89 1 27 88 0 28 94 0 29 95 1 24 25 1 25 26 1 26 27 1
		 27 28 1 28 29 1 29 24 1 30 91 0 31 97 0 32 98 1 33 99 0 34 93 0 35 92 1 30 31 1 31 32 1
		 32 33 1 33 34 1 34 35 1 35 30 1 36 85 0 37 79 0 38 80 1 39 81 0 40 87 0 41 86 1 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 67 0 43 73 0 44 74 1 45 75 0 46 69 0 47 68 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 61 0 49 55 0 50 56 1 51 57 0 52 63 0
		 53 62 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 48 0 55 12 0 56 13 1 57 14 0
		 58 52 0 59 53 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 49 0 61 18 0 62 23 1
		 63 22 0 64 51 0 65 50 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 43 0 67 19 0
		 68 20 1 69 21 0 70 45 0 71 44 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1 72 42 0
		 73 3 0 74 4 1 75 5 0 76 46 0 77 47 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 72 1
		 78 36 0 79 0 0 80 1 1 81 2 0 82 40 0 83 41 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 78 1 84 37 0 85 24 0;
	setAttr ".ed[166:199]" 86 29 1 87 28 0 88 39 0 89 38 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1 90 31 0 91 25 0 92 26 1 93 27 0 94 33 0 95 32 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 90 1 96 30 0 97 6 0 98 7 1 99 8 0 100 34 0 101 35 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 96 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 2 11 163 -11
		mu 0 4 3 2 116 110
		f 4 3 12 162 -12
		mu 0 4 2 19 114 116
		f 4 4 14 -7 -14
		mu 0 4 7 6 16 15
		f 4 5 15 -8 -15
		mu 0 4 6 12 13 16
		f 4 159 154 -1 -154
		mu 0 4 111 112 1 0
		f 4 160 155 -2 -155
		mu 0 4 112 113 4 1
		f 4 -156 161 -13 -10
		mu 0 4 4 113 115 5
		f 4 158 153 8 10
		mu 0 4 110 111 0 3
		f 4 19 24 -22 -24
		mu 0 4 20 21 22 23
		f 4 20 25 -23 -25
		mu 0 4 21 24 25 22
		f 4 21 27 115 -27
		mu 0 4 26 27 88 82
		f 4 22 28 114 -28
		mu 0 4 27 30 86 88
		f 4 111 106 -20 -106
		mu 0 4 83 84 34 35
		f 4 112 107 -21 -107
		mu 0 4 84 85 37 34
		f 4 -108 113 -29 -26
		mu 0 4 37 85 87 39
		f 4 110 105 23 26
		mu 0 4 82 83 35 26
		f 4 29 146 141 -9
		mu 0 4 32 103 104 29
		f 4 0 30 151 -30
		mu 0 4 32 33 109 103
		f 4 1 31 150 -31
		mu 0 4 33 36 108 109
		f 4 149 -32 9 -144
		mu 0 4 107 108 36 38
		f 4 148 143 -4 -143
		mu 0 4 105 106 31 28
		f 4 147 142 -3 -142
		mu 0 4 104 105 28 29
		f 4 16 194 189 13
		mu 0 4 10 131 132 14
		f 4 6 17 199 -17
		mu 0 4 10 9 137 131
		f 4 7 18 198 -18
		mu 0 4 9 11 136 137
		f 4 197 -19 -16 -192
		mu 0 4 135 136 11 8
		f 4 196 191 -6 -191
		mu 0 4 133 134 18 17
		f 4 195 190 -5 -190
		mu 0 4 132 133 17 14
		f 4 182 177 -51 44
		mu 0 4 124 125 48 47
		f 4 -56 49 187 -45
		mu 0 4 47 53 130 124
		f 4 -55 48 186 -50
		mu 0 4 53 51 128 130
		f 4 -54 -180 185 -49
		mu 0 4 52 50 127 129
		f 4 184 179 -53 -179
		mu 0 4 126 127 50 49
		f 4 183 178 -52 -178
		mu 0 4 125 126 49 48
		f 4 50 45 170 165
		mu 0 4 47 48 117 118
		f 4 51 46 175 -46
		mu 0 4 48 49 123 117
		f 4 52 47 174 -47
		mu 0 4 49 50 122 123
		f 4 173 -48 53 -168
		mu 0 4 121 122 50 52
		f 4 172 167 54 -167
		mu 0 4 119 120 51 53
		f 4 171 166 55 -166
		mu 0 4 118 119 53 47
		f 4 134 129 -39 32
		mu 0 4 96 97 41 40
		f 4 -44 37 139 -33
		mu 0 4 40 46 102 96
		f 4 -43 36 138 -38
		mu 0 4 46 44 100 102
		f 4 -42 -132 137 -37
		mu 0 4 45 43 99 101
		f 4 136 131 -41 -131
		mu 0 4 98 99 43 42
		f 4 135 130 -40 -130
		mu 0 4 97 98 42 41
		f 4 38 33 122 117
		mu 0 4 40 41 89 90
		f 4 39 34 127 -34
		mu 0 4 41 42 95 89
		f 4 40 35 126 -35
		mu 0 4 42 43 94 95
		f 4 125 -36 41 -120
		mu 0 4 93 94 43 45
		f 4 124 119 42 -119
		mu 0 4 91 92 44 46
		f 4 123 118 43 -118
		mu 0 4 90 91 46 40
		f 4 98 93 -111 104
		mu 0 4 75 76 83 82
		f 4 99 94 -112 -94
		mu 0 4 76 77 84 83
		f 4 100 95 -113 -95
		mu 0 4 77 78 85 84
		f 4 -114 -96 101 -109
		mu 0 4 87 85 78 80
		f 4 -115 108 102 -110
		mu 0 4 88 86 79 81
		f 4 -116 109 103 -105
		mu 0 4 82 88 81 75
		f 4 -123 116 -99 92
		mu 0 4 90 89 76 75
		f 4 -104 97 -124 -93
		mu 0 4 75 81 91 90
		f 4 -103 96 -125 -98
		mu 0 4 81 79 92 91
		f 4 -102 -121 -126 -97
		mu 0 4 80 78 94 93
		f 4 -127 120 -101 -122
		mu 0 4 95 94 78 77
		f 4 -128 121 -100 -117
		mu 0 4 89 95 77 76
		f 4 -87 80 -135 128
		mu 0 4 69 68 97 96
		f 4 -92 85 -136 -81
		mu 0 4 68 74 98 97
		f 4 -91 84 -137 -86
		mu 0 4 74 73 99 98
		f 4 -138 -85 -90 -133
		mu 0 4 101 99 73 72
		f 4 -139 132 -89 -134
		mu 0 4 102 100 71 70
		f 4 -140 133 -88 -129
		mu 0 4 96 102 70 69
		f 4 -147 140 86 81
		mu 0 4 104 103 68 69
		f 4 87 82 -148 -82
		mu 0 4 69 70 105 104
		f 4 88 83 -149 -83
		mu 0 4 70 71 106 105
		f 4 89 -145 -150 -84
		mu 0 4 72 73 108 107
		f 4 -151 144 90 -146
		mu 0 4 109 108 73 74
		f 4 -152 145 91 -141
		mu 0 4 103 109 74 68
		f 4 74 69 -159 152
		mu 0 4 61 62 111 110
		f 4 75 70 -160 -70
		mu 0 4 62 63 112 111
		f 4 76 71 -161 -71
		mu 0 4 63 64 113 112
		f 4 -162 -72 77 -157
		mu 0 4 115 113 64 66
		f 4 -163 156 78 -158
		mu 0 4 116 114 65 67
		f 4 -164 157 79 -153
		mu 0 4 110 116 67 61
		f 4 -171 164 -75 68
		mu 0 4 118 117 62 61
		f 4 -80 73 -172 -69
		mu 0 4 61 67 119 118
		f 4 -79 72 -173 -74
		mu 0 4 67 65 120 119
		f 4 -78 -169 -174 -73
		mu 0 4 66 64 122 121
		f 4 -175 168 -77 -170
		mu 0 4 123 122 64 63
		f 4 -176 169 -76 -165
		mu 0 4 117 123 63 62
		f 4 -63 56 -183 176
		mu 0 4 55 54 125 124
		f 4 -68 61 -184 -57
		mu 0 4 54 60 126 125
		f 4 -67 60 -185 -62
		mu 0 4 60 59 127 126
		f 4 -186 -61 -66 -181
		mu 0 4 129 127 59 58
		f 4 -187 180 -65 -182
		mu 0 4 130 128 57 56
		f 4 -188 181 -64 -177
		mu 0 4 124 130 56 55
		f 4 -195 188 62 57
		mu 0 4 132 131 54 55
		f 4 63 58 -196 -58
		mu 0 4 55 56 133 132
		f 4 64 59 -197 -59
		mu 0 4 56 57 134 133
		f 4 65 -193 -198 -60
		mu 0 4 58 59 136 135
		f 4 -199 192 66 -194
		mu 0 4 137 136 59 60
		f 4 -200 193 67 -189
		mu 0 4 131 137 60 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "polySurfaceShape6" -p "Wall10";
	rename -uid "6E0817D9-4BC3-BF2D-122C-1F9EA8CF721B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000011920928955 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.50256181 0.70478821
		 0.50248498 0.64604837 0.50279236 0.88100773 0.50271553 0.82226783 0.50240827 0.58730853
		 0.50233662 0.53257847 0.82214254 0.9778226 0.94996512 0.97815305 0.14989762 0.53303951
		 0.1500461 0.64650941 0.15012291 0.70524925 0.14996921 0.58776957 0.69467324 0.84094387
		 0.69498152 0.72184694 0.15027657 0.82272893 0.95062631 0.72250819 0.82280385 0.72217757
		 0.15035342 0.88146877 0.15046583 0.96742153 0.50290483 0.96696055 0.7001183 0.3000879
		 0.80002022 0.30010822 0.79997969 0.49991208 0.70007765 0.49989176 0.89992225 0.30012852
		 0.8999033 0.39321095 0.43348783 0.30210882 0.4335345 0.34446329 0.21947649 0.34479573
		 0.21942982 0.3024413 0.43360281 0.40643969 0.21954477 0.40677208 0.21933648 0.21773241
		 0.21928984 0.17537798 0.43334782 0.17504555 0.43339446 0.21739998 0.21924314 0.13302353
		 0.43330121 0.13269112 0.21919966 0.093560353 0.4332577 0.093227893 0.32645884 0.30227506
		 0.32636547 0.21756622 0.32631883 0.17521176 0.32627219 0.13285732 0.32657379 0.40660593
		 0.32622868 0.09339413 0.32650548 0.34462953 0.32649606 0.82249838 0.32634234 0.70501876
		 0.32626554 0.64627886 0.32618874 0.58753908 0.32668534 0.96719104 0.32611713 0.53280902
		 0.3265729 0.88123822 0.23823263 0.70513403 0.23838632 0.82261366 0.23846316 0.8813535
		 0.23857558 0.96730626 0.23800737 0.53292429 0.23807898 0.58765435 0.23815581 0.64639413
		 0.4146058 0.82238311 0.41445208 0.70490348 0.41437525 0.64616358 0.4142985 0.5874238
		 0.4147951 0.96707582 0.41422689 0.53269374 0.41468263 0.88112295 0.27285099 0.21764931
		 0.27294433 0.30235815 0.272991 0.34471262 0.27305928 0.40668899 0.27271417 0.093477234
		 0.27275765 0.13294043 0.27280432 0.17529486 0.37997332 0.30219194 0.37987995 0.2174831
		 0.37983331 0.17512864 0.3797867 0.1327742 0.3800883 0.40652281 0.37974319 0.093311012
		 0.38001999 0.34454644 0.40673059 0.3021504 0.40663722 0.21744153 0.40659055 0.17508709
		 0.40654397 0.13273266 0.40684557 0.40648127 0.40650046 0.093269452 0.40677726 0.34450489
		 0.35312271 0.21752465 0.35321608 0.30223352 0.35326275 0.34458798 0.35333106 0.40656435
		 0.35298595 0.093352571 0.35302943 0.13281576 0.35307604 0.17517021 0.29970157 0.30231661
		 0.29960823 0.21760775 0.29956156 0.1752533 0.29951492 0.13289887 0.29981652 0.4066475
		 0.29947141 0.093435675 0.29974824 0.34467104 0.24609374 0.21769087 0.24618706 0.30239972
		 0.24623375 0.34475419 0.24630202 0.40673053 0.24595691 0.093518794 0.24600038 0.13298197
		 0.24604708 0.17533642 0.45866066 0.82232547 0.45850694 0.70484585 0.45843011 0.646106
		 0.4583534 0.58736616 0.45884997 0.96701819 0.45828176 0.53263611 0.45873749 0.88106537
		 0.37039721 0.70496112 0.37055093 0.82244074 0.37062776 0.88118058 0.37074023 0.9671334
		 0.37017202 0.53275138 0.37024361 0.58748144 0.37032038 0.64622122 0.2824412 0.82255602
		 0.28228748 0.7050764 0.28221068 0.6463365 0.28213388 0.58759671 0.28263044 0.96724868
		 0.28206223 0.53286666 0.28251803 0.88129586 0.19417778 0.70519161 0.19433144 0.82267129
		 0.1944083 0.88141114 0.19452071 0.96736389 0.1939525 0.53298187 0.19402409 0.58771193
		 0.19410095 0.64645177;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".pt[0:101]" -type "float3"  -0.061220106 -0.0036120652 
		0.064269163 -0.10421643 -0.0025675497 0.10829233 -0.14021963 -0.0050170845 0.14476286 
		-0.057064924 -0.53513515 0.050742675 -0.10558908 -0.0042338311 0.10862213 -0.14079833 
		0.52927321 0.15357335 -0.31276917 -0.49196282 0.31512758 -0.31433174 0.041950565 
		0.32441908 -0.31535134 0.57375896 0.33392274 -0.31243977 0.042056937 0.32463354 -0.31297919 
		0.041782711 0.32530177 -0.31418091 0.041778821 0.32552466 0.005033887 -0.052281067 
		-0.0091831172 -2.3725681e-06 -0.052281305 -0.0091695525 0.0049910438 -0.05228534 
		-0.0089382641 0.0050242725 -0.58632541 -0.0022399861 0 -0.052391645 0.0058776136 
		0.0050155921 0.48351872 0.0085443808 -3.4744491e-05 -0.56039 -0.0095829284 -0.00045480073 
		-0.027465561 -1.3882556e-05 -0.013150149 -0.027696529 0.01321873 -0.037424587 -0.028131939 
		0.038163114 -0.037569147 0.49507645 0.047150116 -0.013531869 -0.030207975 0.013432657 
		-0.20889935 -0.5150665 0.20788857 -0.2088446 0.018688504 0.21751934 -0.23548579 0.018212328 
		0.2448 -0.26017144 0.017787779 0.26912177 -0.2611714 0.56283855 0.27779964 -0.23656803 
		0.018378112 0.24402876 -0.28367579 0.029828265 0.29474658 -0.28395909 -0.50392872 
		0.28523868 -0.29332981 0.029843967 0.30257776 -0.30105022 0.57103455 0.31906289 -0.29991725 
		0.029552994 0.31051764 -0.29206434 0.029676406 0.30344832 -0.12187812 -0.52598798 
		0.11815661 -0.12846029 0.0076537183 0.1342774 -0.17028429 0.0070142914 0.1769845 
		-0.20321098 0.0068861032 0.21002634 -0.20401405 0.548042 0.21877849 -0.1751107 0.0069794552 
		0.18163824 -0.010416911 -0.015108059 0.0074504041 -0.016434198 -0.54904038 0.0079742428 
		-0.049742609 -0.01795665 0.050889824 -0.082554318 0.51032197 0.093514726 -0.08220014 
		-0.018267898 0.084613152 -0.048841298 -0.01605317 0.050571207 0 -0.57239592 -0.0099912053 
		-1.1578333e-06 -0.039937381 -0.00092785462 -3.916744e-05 -0.039941076 -0.00071625545 
		-0.010000832 -0.040121358 0.0096110338 -0.0099713402 0.48640862 0.018806566 -1.6953385e-05 
		-0.039790768 -0.00059758953 0 -0.57994384 -0.010122956 0 -0.046178944 -0.0010614558 
		-1.481223e-05 -0.046180468 -0.00097411178 -0.0029682117 -0.046236753 0.0022494453 
		-0.0029346023 0.48424545 0.011579635 -3.2704659e-06 -0.046031393 -0.00078477641 -1.3460662e-05 
		-0.033697061 -0.00072362222 -1.0989419e-05 -0.56700701 -0.0098342905 -0.003973823 
		-0.034773909 0.0035698507 -0.02149592 0.48983449 0.030615548 -0.021443544 -0.033893261 
		0.021540545 -0.003992755 -0.033771671 0.0035503358 -0.0050908215 -0.55693394 -0.0041188779 
		-0.0060832817 -0.021328779 0.0061228001 -0.028209081 -0.021728324 0.029012989 -0.057800889 
		-0.02356937 0.05930654 -0.058049839 0.50201386 0.068250634 -0.028850107 -0.024727618 
		0.029272027 -0.036982376 -0.0094117336 0.038820099 -0.034030478 -0.54312003 0.026526604 
		-0.075643383 -0.010301438 0.077684097 -0.11044799 0.51956952 0.12227688 -0.1099828 
		-0.010714209 0.11343836 -0.074493311 -0.0087718656 0.077340946 -0.08458668 -0.5315578 
		0.079514094 -0.089779258 0.0037042079 0.094207451 -0.1366898 0.0012743613 0.1420383 
		-0.1715772 0.00055379473 0.1772451 -0.17226967 0.53893244 0.18603572 -0.13824703 
		0.0014211563 0.14235583 -0.16927297 0.013159958 0.17653726 -0.16270077 -0.52048039 
		0.16035506 -0.2049416 0.012705363 0.21131414 -0.23407505 0.55614668 0.2498081 -0.23316796 
		0.012033316 0.24108271 -0.20316334 0.012000385 0.21119562 -0.25068709 -0.50957376 
		0.25091588 -0.25043392 0.024183853 0.26040378 -0.26739171 0.023879521 0.27783835 
		-0.28281847 0.023620451 0.29268086 -0.28389528 0.56783074 0.30129904 -0.26857445 
		0.0240463 0.27701131 -0.30506533 0.035685174 0.31691653 -0.30537394 -0.49885079 0.30739012 
		-0.30897471 0.035236895 0.31878841 -0.31173214 0.57306057 0.33014837 -0.31056672 
		0.035602082 0.32167795 -0.30765185 0.03563679 0.31968817;
	setAttr -s 102 ".vt[0:101]"  -0.031541318 -0.0088551482 -2.35438657 0.32281497 -0.015011461 -2.0016915798
		 0.67717123 -0.021167774 -1.64899659 -0.020799628 0.99102765 -2.34767652 0.33194125 0.98484313 -1.99336648
		 0.68066603 0.44462031 -1.64437008 2.33202362 0.95799267 -3.31679964 2.33092999 0.94926649 -2.81687713
		 2.3241632 0.40657198 -2.32628036 2.31683278 -0.041702721 -3.33424807 2.31802368 -0.050428897 -2.83432555
		 2.31921482 -0.059155077 -2.33440304 -1 5.5511151e-17 -8.6736174e-19 -0.5 5.5511151e-17 -8.6736174e-19
		 0 5.5511151e-17 -8.6736174e-19 -0.9999904 0.99997926 0.0011897917 -0.49999183 0.99995828 0.0023916748
		 0 0.46586883 1.0842022e-19 -0.74392003 0.99720281 -1.27060127 -0.74973428 -0.0027374735 -1.274019
		 -0.28737101 -0.0060589476 -1.08373189 0.17499225 -0.0093804216 -0.89344478 0.17688064 0.45642635 -0.8898887
		 -0.28243119 0.99384451 -1.078203917 1.059312344 0.97859353 -3.066172123 1.045278072 -0.021203322 -3.077808857
		 1.23769462 -0.029257488 -2.61638594 1.43011105 -0.037311655 -2.15496325 1.43468034 0.42844841 -2.14873314
		 1.24961829 0.97052413 -2.60387516 1.66844821 -0.030360328 -3.26862884 1.68334699 0.96938676 -3.25414324
		 1.77980614 0.96082443 -2.7636106 1.87069964 0.41827455 -2.28129721 1.86584759 -0.047469325 -2.28845501
		 1.7671479 -0.038914826 -2.7785418 0.48389456 0.98573875 -2.76009965 0.47126395 -0.014103885 -2.76911092
		 0.75000477 -0.021348285 -2.35407948 1.028745651 -0.028592685 -1.93904817 1.032856584 0.43718234 -1.93367267
		 0.76073593 0.97847223 -2.34379935 -0.44382048 -0.0051791412 -1.84956038 -0.4353804 0.99473667 -1.8447392
		 -0.020291921 0.98987186 -1.56603158 0.39163935 0.45095623 -1.29193139 0.38889503 -0.014842558 -1.29594362
		 -0.027462723 -0.01001085 -1.572752 -0.93456483 0.99881101 -0.64731246 -0.9375298 -0.0011443304 -0.64986575
		 -0.44692451 -0.0028279633 -0.55341047 0.043680776 -0.0045115966 -0.45695522 0.044640683 0.46130008 -0.45367959
		 -0.44440544 0.99708825 -0.54861695 -0.98320192 0.99942315 -0.32466793 -0.98469245 -0.00053604122 -0.32700241
		 -0.48699453 -0.0013724384 -0.27908525 0.010703411 -0.0022088357 -0.23116809 0.011182951 0.46360406 -0.22796315
		 -0.48572811 0.99854708 -0.27447763 -0.85895824 -0.0018604068 -0.96655399 -0.85454738 0.99808872 -0.96363842
		 -0.3764216 0.99553591 -0.81738794 0.10005108 0.45891988 -0.67503148 0.098620035 -0.0068897251 -0.67842454
		 -0.38016909 -0.0043750657 -0.82248926 -0.60374784 0.99610198 -1.56524682 -0.61090946 -0.003827183 -1.56930184
		 -0.16942368 -0.0079234941 -1.33462441 0.27206209 -0.012019804 -1.099946856 0.27438965 0.45378333 -1.096183777
		 -0.16333908 0.99197048 -1.32855499 -0.25007597 -0.0068404288 -2.1120975 -0.2404387 0.99305987 -2.10638833
		 0.14533305 0.98750848 -1.78834856 0.52750081 0.44791216 -1.47524822 0.5243662 -0.017881602 -1.47954917
		 0.1371451 -0.012361015 -1.79582334 0.22142215 0.9885996 -2.56628156 0.20967947 -0.011263998 -2.57409573
		 0.52775925 -0.017996766 -2.18837571 0.84583902 -0.024729535 -1.8026557 0.84966034 0.44105226 -1.79766989
		 0.537736 0.9818415 -2.17911243 0.75069356 -0.017407563 -2.93755555 0.76409054 0.98241276 -2.92726612
		 0.99879402 0.97470766 -2.48584223 1.22849119 0.4329876 -2.051070213 1.22413003 -0.032780133 -2.056861639
		 0.9874118 -0.025093848 -2.4972086 1.3667177 0.97425759 -3.17548156 1.3521812 -0.025514714 -3.18852162
		 1.49844348 -0.033859216 -2.71046543 1.64470565 -0.042203721 -2.23240924 1.6494391 0.4235484 -2.22572207
		 1.51079381 0.96590155 -2.69676232 1.99103391 -0.035753604 -3.3173604 2.0061514378 0.9639678 -3.30140066
		 2.054064989 0.95528173 -2.80377746 2.096331835 0.41261762 -2.31492424 2.091407776 -0.053117875 -2.32256198
		 2.041220903 -0.04443574 -2.81996107;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 2 5 0 3 78 0 4 83 1 5 82 0 6 9 0 7 10 1 8 11 0 9 96 0 10 101 1 11 100 0 12 13 0
		 13 14 0 15 16 0 16 17 0 12 15 0 13 16 1 14 17 0 15 54 0 16 59 1 17 58 0 0 72 0 1 77 1
		 2 76 0 18 66 0 19 60 0 20 65 1 21 64 0 22 70 0 23 71 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 90 0 25 84 0 26 89 1 27 88 0 28 94 0 29 95 1 24 25 1 25 26 1 26 27 1
		 27 28 1 28 29 1 29 24 1 30 91 0 31 97 0 32 98 1 33 99 0 34 93 0 35 92 1 30 31 1 31 32 1
		 32 33 1 33 34 1 34 35 1 35 30 1 36 85 0 37 79 0 38 80 1 39 81 0 40 87 0 41 86 1 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 67 0 43 73 0 44 74 1 45 75 0 46 69 0 47 68 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 61 0 49 55 0 50 56 1 51 57 0 52 63 0
		 53 62 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 48 0 55 12 0 56 13 1 57 14 0
		 58 52 0 59 53 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 49 0 61 18 0 62 23 1
		 63 22 0 64 51 0 65 50 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 43 0 67 19 0
		 68 20 1 69 21 0 70 45 0 71 44 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1 72 42 0
		 73 3 0 74 4 1 75 5 0 76 46 0 77 47 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 72 1
		 78 36 0 79 0 0 80 1 1 81 2 0 82 40 0 83 41 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 78 1 84 37 0 85 24 0;
	setAttr ".ed[166:199]" 86 29 1 87 28 0 88 39 0 89 38 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1 90 31 0 91 25 0 92 26 1 93 27 0 94 33 0 95 32 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 90 1 96 30 0 97 6 0 98 7 1 99 8 0 100 34 0 101 35 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 96 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 2 11 163 -11
		mu 0 4 3 2 116 110
		f 4 3 12 162 -12
		mu 0 4 2 19 114 116
		f 4 4 14 -7 -14
		mu 0 4 7 6 16 15
		f 4 5 15 -8 -15
		mu 0 4 6 12 13 16
		f 4 159 154 -1 -154
		mu 0 4 111 112 1 0
		f 4 160 155 -2 -155
		mu 0 4 112 113 4 1
		f 4 -156 161 -13 -10
		mu 0 4 4 113 115 5
		f 4 158 153 8 10
		mu 0 4 110 111 0 3
		f 4 19 24 -22 -24
		mu 0 4 20 21 22 23
		f 4 20 25 -23 -25
		mu 0 4 21 24 25 22
		f 4 21 27 115 -27
		mu 0 4 26 27 88 82
		f 4 22 28 114 -28
		mu 0 4 27 30 86 88
		f 4 111 106 -20 -106
		mu 0 4 83 84 34 35
		f 4 112 107 -21 -107
		mu 0 4 84 85 37 34
		f 4 -108 113 -29 -26
		mu 0 4 37 85 87 39
		f 4 110 105 23 26
		mu 0 4 82 83 35 26
		f 4 29 146 141 -9
		mu 0 4 32 103 104 29
		f 4 0 30 151 -30
		mu 0 4 32 33 109 103
		f 4 1 31 150 -31
		mu 0 4 33 36 108 109
		f 4 149 -32 9 -144
		mu 0 4 107 108 36 38
		f 4 148 143 -4 -143
		mu 0 4 105 106 31 28
		f 4 147 142 -3 -142
		mu 0 4 104 105 28 29
		f 4 16 194 189 13
		mu 0 4 10 131 132 14
		f 4 6 17 199 -17
		mu 0 4 10 9 137 131
		f 4 7 18 198 -18
		mu 0 4 9 11 136 137
		f 4 197 -19 -16 -192
		mu 0 4 135 136 11 8
		f 4 196 191 -6 -191
		mu 0 4 133 134 18 17
		f 4 195 190 -5 -190
		mu 0 4 132 133 17 14
		f 4 182 177 -51 44
		mu 0 4 124 125 48 47
		f 4 -56 49 187 -45
		mu 0 4 47 53 130 124
		f 4 -55 48 186 -50
		mu 0 4 53 51 128 130
		f 4 -54 -180 185 -49
		mu 0 4 52 50 127 129
		f 4 184 179 -53 -179
		mu 0 4 126 127 50 49
		f 4 183 178 -52 -178
		mu 0 4 125 126 49 48
		f 4 50 45 170 165
		mu 0 4 47 48 117 118
		f 4 51 46 175 -46
		mu 0 4 48 49 123 117
		f 4 52 47 174 -47
		mu 0 4 49 50 122 123
		f 4 173 -48 53 -168
		mu 0 4 121 122 50 52
		f 4 172 167 54 -167
		mu 0 4 119 120 51 53
		f 4 171 166 55 -166
		mu 0 4 118 119 53 47
		f 4 134 129 -39 32
		mu 0 4 96 97 41 40
		f 4 -44 37 139 -33
		mu 0 4 40 46 102 96
		f 4 -43 36 138 -38
		mu 0 4 46 44 100 102
		f 4 -42 -132 137 -37
		mu 0 4 45 43 99 101
		f 4 136 131 -41 -131
		mu 0 4 98 99 43 42
		f 4 135 130 -40 -130
		mu 0 4 97 98 42 41
		f 4 38 33 122 117
		mu 0 4 40 41 89 90
		f 4 39 34 127 -34
		mu 0 4 41 42 95 89
		f 4 40 35 126 -35
		mu 0 4 42 43 94 95
		f 4 125 -36 41 -120
		mu 0 4 93 94 43 45
		f 4 124 119 42 -119
		mu 0 4 91 92 44 46
		f 4 123 118 43 -118
		mu 0 4 90 91 46 40
		f 4 98 93 -111 104
		mu 0 4 75 76 83 82
		f 4 99 94 -112 -94
		mu 0 4 76 77 84 83
		f 4 100 95 -113 -95
		mu 0 4 77 78 85 84
		f 4 -114 -96 101 -109
		mu 0 4 87 85 78 80
		f 4 -115 108 102 -110
		mu 0 4 88 86 79 81
		f 4 -116 109 103 -105
		mu 0 4 82 88 81 75
		f 4 -123 116 -99 92
		mu 0 4 90 89 76 75
		f 4 -104 97 -124 -93
		mu 0 4 75 81 91 90
		f 4 -103 96 -125 -98
		mu 0 4 81 79 92 91
		f 4 -102 -121 -126 -97
		mu 0 4 80 78 94 93
		f 4 -127 120 -101 -122
		mu 0 4 95 94 78 77
		f 4 -128 121 -100 -117
		mu 0 4 89 95 77 76
		f 4 -87 80 -135 128
		mu 0 4 69 68 97 96
		f 4 -92 85 -136 -81
		mu 0 4 68 74 98 97
		f 4 -91 84 -137 -86
		mu 0 4 74 73 99 98
		f 4 -138 -85 -90 -133
		mu 0 4 101 99 73 72
		f 4 -139 132 -89 -134
		mu 0 4 102 100 71 70
		f 4 -140 133 -88 -129
		mu 0 4 96 102 70 69
		f 4 -147 140 86 81
		mu 0 4 104 103 68 69
		f 4 87 82 -148 -82
		mu 0 4 69 70 105 104
		f 4 88 83 -149 -83
		mu 0 4 70 71 106 105
		f 4 89 -145 -150 -84
		mu 0 4 72 73 108 107
		f 4 -151 144 90 -146
		mu 0 4 109 108 73 74
		f 4 -152 145 91 -141
		mu 0 4 103 109 74 68
		f 4 74 69 -159 152
		mu 0 4 61 62 111 110
		f 4 75 70 -160 -70
		mu 0 4 62 63 112 111
		f 4 76 71 -161 -71
		mu 0 4 63 64 113 112
		f 4 -162 -72 77 -157
		mu 0 4 115 113 64 66
		f 4 -163 156 78 -158
		mu 0 4 116 114 65 67
		f 4 -164 157 79 -153
		mu 0 4 110 116 67 61
		f 4 -171 164 -75 68
		mu 0 4 118 117 62 61
		f 4 -80 73 -172 -69
		mu 0 4 61 67 119 118
		f 4 -79 72 -173 -74
		mu 0 4 67 65 120 119
		f 4 -78 -169 -174 -73
		mu 0 4 66 64 122 121
		f 4 -175 168 -77 -170
		mu 0 4 123 122 64 63
		f 4 -176 169 -76 -165
		mu 0 4 117 123 63 62
		f 4 -63 56 -183 176
		mu 0 4 55 54 125 124
		f 4 -68 61 -184 -57
		mu 0 4 54 60 126 125
		f 4 -67 60 -185 -62
		mu 0 4 60 59 127 126
		f 4 -186 -61 -66 -181
		mu 0 4 129 127 59 58
		f 4 -187 180 -65 -182
		mu 0 4 130 128 57 56
		f 4 -188 181 -64 -177
		mu 0 4 124 130 56 55
		f 4 -195 188 62 57
		mu 0 4 132 131 54 55
		f 4 63 58 -196 -58
		mu 0 4 55 56 133 132
		f 4 64 59 -197 -59
		mu 0 4 56 57 134 133
		f 4 65 -193 -198 -60
		mu 0 4 58 59 136 135
		f 4 -199 192 66 -194
		mu 0 4 137 136 59 60
		f 4 -200 193 67 -189
		mu 0 4 131 137 60 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F4CB9F0C-4120-E274-0E45-8C8140A7C131";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D93C74AC-4254-A140-7ABA-E1AD4D16793C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9816A92C-406B-42CF-E7AB-8C856B904156";
createNode displayLayerManager -n "layerManager";
	rename -uid "CBAEA770-45BF-08CE-D187-3796EDB30E39";
createNode displayLayer -n "defaultLayer";
	rename -uid "05FE70C4-461B-D8E3-28E2-849BDD6E787E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6DF80D11-4FEC-5F70-7C31-93B93A618A4D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C631098F-468A-A95A-3081-EBACA74F896C";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "29F722A0-412A-F0D6-023F-B4B3D254007C";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.1.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "32CE5A97-4595-EC71-7556-FEB8044EC526";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "5899CFC3-4E65-1014-35D8-58955B0ACAEF";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6ECBE1C7-497F-6400-9E6F-34811D1A3838";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "BCCD1A8F-4C21-C315-AB66-03A387D71C0B";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 292.85713122004603 ;
	setAttr ".tgi[0].vh" -type "double2" 592.85711929911758 407.14284096445425 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "872D99F8-4163-1F6A-F935-DF94B6A38798";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 696\n            -height 383\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 697\n            -height 383\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 732\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 3 -size 3 -divisions 3 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F621D3B5-457A-4997-0D32-55950D0F30FD";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyBoolean -n "polyBoolean1";
	rename -uid "151E4684-49C8-D363-9BD0-5BB011FCDFBB";
	setAttr ".op" -type "Int32Array" 1 2 ;
	setAttr ".ee" -type "Int32Array" 0 ;
	setAttr ".mg" -type "Int32Array" 0 ;
createNode groupId -n "groupId4";
	rename -uid "EAA874BB-46A4-9247-1383-62836A8570C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "08FE19B9-4BFF-C464-9833-DCBC157FF23C";
	setAttr ".ihi" 0;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "A90DE3F9-45A4-7CE1-09CE-39A9FD3ED50C";
	setAttr ".ics" -type "componentList" 1 "vtx[3]";
	setAttr ".ix" -type "matrix" 0 0 1 0 0 1 0 0 -1 0 0 0 0 0 -3 1;
	setAttr ".am" yes;
createNode groupParts -n "groupParts2";
	rename -uid "9FF09D93-4DD2-74F0-45C8-9BBD14087F4F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId2";
	rename -uid "C48F155B-4105-EA48-530F-35AA87F717DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	rename -uid "B590CE95-47F1-493E-A292-0A94C93CA58D";
	setAttr ".ihi" 0;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "579B2D05-45A1-FE4E-FBF9-F395A6A5E979";
	setAttr ".ics" -type "componentList" 1 "vtx[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode groupParts -n "groupParts1";
	rename -uid "0800ADFA-48FA-9198-BBD5-A887D6C100FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode polyUnite -n "polyUnite1";
	rename -uid "82259C39-4EFB-478F-5554-678DB8FA8809";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "43B0A1A5-4168-B7CA-96AE-3F8864F42D51";
	setAttr ".ics" -type "componentList" 1 "vtx[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "18D5A90F-4D58-BEF4-4AB5-0C90530B9E2F";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "09738B6F-41AC-5D7E-B5F9-38AD8AD70862";
	setAttr ".ics" -type "componentList" 4 "vtx[7]" "vtx[10]" "vtx[13]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.1;
	setAttr ".am" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "14F64191-4C30-C7B5-872B-F58063E93871";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.25148412585258484 0.73293441534042358 -1.7498420476913452 ;
	setAttr ".ic" -type "double2" 0.53270527280730318 0.51453567650054854 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 3.4996840953826904 0.53413116931915283 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "BC8870D7-4A6B-B665-0368-6193D0BE7253";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[18]" -type "float2" 0.82739532 -0.69963151 ;
	setAttr ".uvtk[19]" -type "float2" 0.94574809 0.30244169 ;
	setAttr ".uvtk[40]" -type "float2" 0.082847446 0.62669826 ;
	setAttr ".uvtk[41]" -type "float2" -0.17923141 -0.32136643 ;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "101B9D6F-4F05-FB0D-7740-128EEA2CA2C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1.2485158741474152 0.73293441534042358 -3.25 ;
	setAttr ".ro" -type "double3" 90 0 0 ;
	setAttr ".ps" -type "double2" 0.5 0.53413116931915283 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "1B32E2A3-4485-6AD1-ACA5-949762DF3396";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[24]" -type "float2" 3.7253783 0.65910679 ;
	setAttr ".uvtk[25]" -type "float2" 2.8288383 -0.33134246 ;
	setAttr ".uvtk[42]" -type "float2" -3.1696599 -0.65969801 ;
	setAttr ".uvtk[43]" -type "float2" -3.2788739 0.27629167 ;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "7AD760D8-4228-EEBF-2689-2B879FD08E31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.75 1 -2 ;
	setAttr ".ic" -type "double2" 0.60363523781915807 0.68408719564508069 ;
	setAttr ".ro" -type "double3" 90 0 0 ;
	setAttr ".ps" -type "double2" 5.1612903273874711 1720.430109129157 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "2A860C57-4134-61CE-8A94-AE9273062013";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.004221946 0.17891043 ;
	setAttr ".uvtk[17]" -type "float2" 0.0042216182 0.17891043 ;
	setAttr ".uvtk[44]" -type "float2" 0.0041716695 -0.13415486 ;
	setAttr ".uvtk[45]" -type "float2" -0.004221946 -0.17891085 ;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "4B4B3655-40E8-C8F3-9238-B3ABB89148BD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1 1 -3.7498420476913452 ;
	setAttr ".ro" -type "double3" 90 0 0 ;
	setAttr ".ps" -type "double2" 2 0.53763440910286164 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "B267589F-4A2C-C981-07EE-5B990DA9991F";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[21]" -type "float2" 1.0493242 0.39924067 ;
	setAttr ".uvtk[22]" -type "float2" 0.9106397 -0.5662927 ;
	setAttr ".uvtk[46]" -type "float2" -0.83269882 -0.85559857 ;
	setAttr ".uvtk[47]" -type "float2" -0.94129622 0.06821917 ;
createNode groupId -n "groupId5";
	rename -uid "D39B5AA4-4342-5489-F0DB-FFB8CD1F353C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "3A0B5F88-4ED6-7732-74C2-039464491288";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode polyCut -n "polyCut1";
	rename -uid "43DE2CB5-471B-56C7-118B-E1BD94AB1590";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2:9]";
	setAttr ".ix" -type "matrix" -2.2204460492503131e-16 0 1 0 0 1 0 0 -1 0 -2.2204460492503131e-16 0
		 -2.9530763218832199 0 0 1;
	setAttr ".pc" -type "double3" -0.98905027999999995 1000.00164641 -1.0392138 ;
	setAttr ".ro" -type "double3" -45 0 90 ;
createNode polyCut -n "polyCut2";
	rename -uid "1AC45973-4BED-4004-E757-FAB4213F79B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:3]" "f[6:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.050000000000000003 0 0 1;
	setAttr ".pc" -type "double3" -0.99222966000000001 1000.00164641 -1.05829011 ;
	setAttr ".ro" -type "double3" -45.462052720000003 0 90 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "33B5E835-4637-5789-07FC-F69C707CD530";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "5E2700D6-45B8-D50D-B8C0-7BABE90CA3EF";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "F34E2AC4-4A90-EAA7-82CD-FFA80A4F632F";
	setAttr ".dc" -type "componentList" 1 "f[9]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "B29433CD-457C-7965-E9D3-408CFF72F233";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "3DF0DDBF-4163-8354-8AEA-75B372B8D426";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "E7374D0C-4A5B-DC76-DC67-A6B5B50CD445";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "898EB2B4-4361-4647-7F6F-FF9F131D6C75";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "4A482476-40B1-3E94-CED2-CE9A9339FBD5";
	setAttr ".dc" -type "componentList" 1 "f[13]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "6B13D4EC-46CB-A139-C25B-8B9C9A587CAD";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "8AC94654-4ABA-4CD2-FB24-02855034D83E";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "064DFA2B-4F91-CFE0-4ADA-01AB926F5398";
	setAttr ".dc" -type "componentList" 1 "f[9]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "F72BDF79-48A7-0492-663B-009AA0C51218";
	setAttr ".dc" -type "componentList" 1 "f[9]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "9E909DB9-4735-F5D5-A9C1-18ACE821FBF6";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "0C0C80CB-45A1-0ACC-6A03-2A873079F2F6";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "1FA7FED3-4294-0285-F86E-758C864D60AE";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.0089766756 -0.12436844 ;
	setAttr ".uvtk[1]" -type "float2" 0.0090352669 -0.079614274 ;
	setAttr ".uvtk[2]" -type "float2" 0.0088010207 -0.25863093 ;
	setAttr ".uvtk[3]" -type "float2" 0.0088595524 -0.21387675 ;
	setAttr ".uvtk[4]" -type "float2" 0.0090937391 -0.034860119 ;
	setAttr ".uvtk[5]" -type "float2" 0.0091482773 0.0068390071 ;
	setAttr ".uvtk[6]" -type "float2" 0.27767327 0.0064877272 ;
	setAttr ".uvtk[7]" -type "float2" 0.27761871 -0.035211354 ;
	setAttr ".uvtk[16]" -type "float2" 0.27724034 -0.32447004 ;
	setAttr ".uvtk[17]" -type "float2" 0.0087153688 -0.32411879 ;
	setAttr ".uvtk[19]" -type "float2" 0.2772409 -0.32404572 ;
	setAttr ".uvtk[20]" -type "float2" 0.27761835 -0.035501361 ;
	setAttr ".uvtk[22]" -type "float2" 0.18816622 -0.2141113 ;
	setAttr ".uvtk[23]" -type "float2" 0.23286183 -0.25892401 ;
	setAttr ".uvtk[24]" -type "float2" 0.18828331 -0.12460301 ;
	setAttr ".uvtk[25]" -type "float2" 0.233096 -0.07990738 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "FDEB73FB-4F28-F82D-561F-129A416B1C98";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.24610183 0.16344795 ;
	setAttr ".uvtk[1]" -type "float2" -0.24604937 0.20354325 ;
	setAttr ".uvtk[4]" -type "float2" 0.012147687 0.2032055 ;
	setAttr ".uvtk[5]" -type "float2" 0.012038924 0.12007735 ;
	setAttr ".uvtk[6]" -type "float2" 0.011982642 0.07704448 ;
	setAttr ".uvtk[7]" -type "float2" 0.01209525 0.16311023 ;
	setAttr ".uvtk[12]" -type "float2" 0.011870079 -0.0090211611 ;
	setAttr ".uvtk[15]" -type "float2" 0.011813767 -0.052054007 ;
	setAttr ".uvtk[16]" -type "float2" 0.011731423 -0.11502307 ;
	setAttr ".uvtk[17]" -type "float2" -0.24646565 -0.11468535 ;
	setAttr ".uvtk[19]" -type "float2" -0.24610195 0.16337287 ;
	setAttr ".uvtk[20]" -type "float2" -0.24646553 -0.11457556 ;
	setAttr ".uvtk[22]" -type "float2" -0.15893814 -0.0087977331 ;
	setAttr ".uvtk[23]" -type "float2" -0.20272699 -0.051773388 ;
	setAttr ".uvtk[24]" -type "float2" -0.15882555 0.077267908 ;
	setAttr ".uvtk[25]" -type "float2" -0.2025018 0.12035798 ;
createNode polyUnite -n "polyUnite2";
	rename -uid "51374610-4202-04B5-F340-F48CED17E78C";
createNode polyUnite -n "polyUnite3";
	rename -uid "888ACADC-445F-E9F2-8132-6AAB6505EB34";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId6";
	rename -uid "C5241F5B-48B3-0633-DBC5-2896D1D74A0C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "51054D98-4B6F-596C-6A1B-7485A9AF3AB2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId7";
	rename -uid "2426E984-47E5-95CE-464A-82A55DE50AAF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "81780741-45D8-A43A-6DB7-2393E1472A9A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "DA2ECF81-4F41-E933-6B2F-538CDAFACDA6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId9";
	rename -uid "EE7AA2FF-4AD4-CFD3-1097-F4B52AF1131F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "6A0C7B45-4EFF-F280-508E-93A2C2F2DFB1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "AF5B8338-4E44-2E27-1DC2-8A8C25F3A720";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "95701924-4BF0-0686-66CA-8CB048A5BBE6";
	setAttr ".ics" -type "componentList" 3 "vtx[0:1]" "vtx[8:13]" "vtx[20:27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.1;
	setAttr ".am" yes;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "54770E75-4CFB-45B9-877F-069A210D9848";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.00041085482 -0.10353822 ;
	setAttr ".uvtk[3]" -type "float2" -0.10312736 -0.10380596 ;
	setAttr ".uvtk[8]" -type "float2" 0.10366297 0.0073356032 ;
	setAttr ".uvtk[9]" -type "float2" 0.10341328 0.10380596 ;
	setAttr ".uvtk[11]" -type "float2" -0.10366297 0.10327035 ;
	setAttr ".uvtk[12]" -type "float2" -0.00012481213 0.10353816 ;
	setAttr ".uvtk[20]" -type "float2" 0.087625682 0.087652422 ;
	setAttr ".uvtk[21]" -type "float2" -1.7762184e-05 0.087634586 ;
	setAttr ".uvtk[22]" -type "float2" 1.7821789e-05 -0.087652415 ;
	setAttr ".uvtk[23]" -type "float2" 0.087661326 -0.087634593 ;
	setAttr ".uvtk[24]" -type "float2" -0.087661326 0.087616764 ;
	setAttr ".uvtk[25]" -type "float2" -0.087644756 0.0059559941 ;
createNode groupId -n "groupId11";
	rename -uid "B101E123-4F71-DC9D-2A5B-2B8BA05E529C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "2C68C16D-4874-0352-4C36-72BD1E056113";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "8B8D636A-4EE4-438F-870E-1FBEFC4936A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "61397672-4177-6AA2-1B27-A7888544E390";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "CB1AD33B-45BA-7FFF-BA5E-50898DA7204A";
	setAttr ".ihi" 0;
createNode nonLinear -n "bend1";
	rename -uid "1C8F300D-4D6C-FACD-CAD8-73B01B2A26A0";
	addAttr -is true -ci true -k true -sn "cur" -ln "curvature" -smn -3.14159 -smx 
		3.14159 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".cur" 45;
	setAttr -k on ".lb" -3;
	setAttr -k on ".hb" 0;
createNode polySplit -n "polySplit14";
	rename -uid "E8EB3BF8-44C6-943C-6BD1-80AA1D37F9CD";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483632 -2147483591 -2147483590 -2147483589 -2147483630 -2147483631 
		-2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "78122A18-48C2-D65F-8D1B-6DB45EF34804";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483604 -2147483592 -2147483587 -2147483588 -2147483600 -2147483599 
		-2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "C398671F-4A0D-010C-6929-C59A5C5BE5DE";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483603 -2147483580 -2147483575 -2147483576 -2147483601 -2147483602 
		-2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "23D08D92-46F4-79D0-5CE4-58BB12A97F1B";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483638 -2147483579 -2147483578 -2147483577 -2147483636 -2147483637 
		-2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "0F9C4C22-4444-1D92-2B25-DBA66BA77B07";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483619 -2147483567 -2147483566 -2147483565 -2147483617 -2147483618 
		-2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "D3010B1A-4819-2289-3DB2-C388AECF2BF2";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483616 -2147483568 -2147483563 -2147483564 -2147483612 -2147483611 
		-2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "1FDEFF19-46DF-54AC-A3B9-9990CA693DB7";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483615 -2147483556 -2147483551 -2147483552 -2147483613 -2147483614 
		-2147483615;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "9270360A-4A26-E76D-E2BE-B6B5C6CE3A16";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483622 -2147483555 -2147483554 -2147483553 -2147483620 -2147483621 
		-2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "845F85FD-4223-1DC6-8B3E-72A28D2953AC";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483622 -2147483615 -2147483614 -2147483613 -2147483620 -2147483621 
		-2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "927BFCB6-4B67-3EF7-04A3-019A743ED01E";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483619 -2147483616 -2147483611 -2147483612 -2147483617 -2147483618 
		-2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "035CC520-4B6C-4D80-143A-7EA55552F07C";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483638 -2147483603 -2147483602 -2147483601 -2147483636 -2147483637 
		-2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "053A1340-469E-0F68-4FA0-81A182464366";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483632 -2147483604 -2147483599 -2147483600 -2147483630 -2147483631 
		-2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "080BE481-47D8-D276-5093-AFB1DDC61042";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483638 -2147483632 -2147483631 -2147483630 -2147483636 -2147483637 
		-2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit1";
	rename -uid "25CDC2A7-43A3-D440-D042-1D82A59CF6C0";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483622 -2147483619 -2147483618 -2147483617 -2147483620 -2147483621 
		-2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "3EB3CD6F-48D5-3EC6-3399-DA8C5861D638";
	setAttr ".ics" -type "componentList" 2 "vtx[0:5]" "vtx[18:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode groupParts -n "groupParts7";
	rename -uid "7B194461-4C05-E9F3-15F9-21BE403800F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode groupId -n "groupId15";
	rename -uid "0A8423EB-4A30-D12B-3469-A689A83EF4A6";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite4";
	rename -uid "4472DB6F-495C-6C86-5D7F-ABA2DD0ECFF1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts8";
	rename -uid "604D52DC-4658-4B8A-8805-519D543605E9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId17";
	rename -uid "BA8B80EF-4E85-5E0A-E795-4395EF67BC55";
	setAttr ".ihi" 0;
createNode polyPlanarProj -n "polyPlanarProj5";
	rename -uid "A729DC0A-4D25-AE6E-C26C-E4B57984CB61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[6]" "f[25]" "f[31]" "f[37]" "f[79]" "f[85]" "f[91]" "f[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.99984769515639127 -0.017452406437283512 0
		 0 0.017452406437283512 0.99984769515639127 0 0.99496613116934896 0.052433371733654754 0.0082692886878220073 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.2678478956222534 0.50540552847087383 -1.7480862140655518 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.5056157112121582 1.0110230781137943 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "E843C0B6-4DAC-8840-0F1F-33AA2301903C";
	setAttr ".uopa" yes;
	setAttr -s 141 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[1]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[2]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[3]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[4]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[5]" -type "float2" 0.5517382 0.051664472 ;
	setAttr ".uvtk[8]" -type "float2" 0.38311833 0.051738232 ;
	setAttr ".uvtk[9]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[10]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[11]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[14]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[18]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[19]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[20]" -type "float2" 0 0.10000001 ;
	setAttr ".uvtk[21]" -type "float2" 0 0.10000001 ;
	setAttr ".uvtk[22]" -type "float2" 0 0.10000004 ;
	setAttr ".uvtk[23]" -type "float2" 0 0.099999979 ;
	setAttr ".uvtk[24]" -type "float2" 0 0.10000001 ;
	setAttr ".uvtk[25]" -type "float2" 0 0.10000001 ;
	setAttr ".uvtk[26]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[27]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[28]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[29]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[30]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[31]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[32]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[33]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[34]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[35]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[36]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[37]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[38]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[39]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[40]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[41]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[42]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[43]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[44]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[45]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[46]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[47]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[48]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[49]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[50]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[51]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[52]" -type "float2" 0.37790018 -0.6470241 ;
	setAttr ".uvtk[53]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[54]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[55]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[56]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[57]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[58]" -type "float2" 0.54614669 -0.64425403 ;
	setAttr ".uvtk[59]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[60]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[61]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[62]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[63]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[64]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[65]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[66]" -type "float2" -0.07163053 -0.64645386 ;
	setAttr ".uvtk[67]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[68]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[69]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[70]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[71]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[72]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[73]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[74]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[75]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[76]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[77]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[78]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[79]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[80]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[81]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[82]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[83]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[84]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[85]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[86]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[87]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[88]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[89]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[90]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[91]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[92]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[93]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[94]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[95]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[96]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[97]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[98]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[99]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[100]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[101]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[102]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[103]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[104]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[105]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[106]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[107]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[108]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[109]" -type "float2" 3.5785139e-05 0.28032473 ;
	setAttr ".uvtk[110]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[111]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[112]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[113]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[114]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[115]" -type "float2" -0.069679432 0.051664472 ;
	setAttr ".uvtk[116]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[117]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[118]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[119]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[120]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[121]" -type "float2" -0.15049443 0.051664472 ;
	setAttr ".uvtk[122]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[123]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[124]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[125]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[126]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[127]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[128]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[129]" -type "float2" -0.15173844 -0.64264172 ;
	setAttr ".uvtk[130]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[131]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[132]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[133]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[134]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[135]" -type "float2" 0.016910411 -0.65173823 ;
	setAttr ".uvtk[136]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[137]" -type "float2" 0 -0.24704032 ;
	setAttr ".uvtk[138]" -type "float2" 0.020716228 0.051664472 ;
	setAttr ".uvtk[139]" -type "float2" -0.048503175 0.051664472 ;
	setAttr ".uvtk[140]" -type "float2" -0.051735412 -0.65115291 ;
	setAttr ".uvtk[141]" -type "float2" 0.11388351 -0.65108675 ;
	setAttr ".uvtk[142]" -type "float2" 0.11821093 0.051664472 ;
	setAttr ".uvtk[143]" -type "float2" 0.23280169 0.051278651 ;
	setAttr ".uvtk[144]" -type "float2" 0.22800447 -0.64941537 ;
	setAttr ".uvtk[145]" -type "float2" -0.07572411 0.051664472 ;
	setAttr ".uvtk[146]" -type "float2" -0.078336701 -0.64925355 ;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "62AC529A-422B-8048-07BE-62B92D97AD8A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[0:1]" "f[4:5]" "f[7]" "f[10:24]" "f[26:30]" "f[32:36]" "f[38:78]" "f[80:84]" "f[86:90]" "f[92:96]" "f[98:99]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "68EB6FB9-4141-6317-EA3C-34B101314C1A";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk";
	setAttr ".uvtk[26]" -type "float2" 0.06653595 0.012144864 ;
	setAttr ".uvtk[27]" -type "float2" 0.066534668 0.021993041 ;
	setAttr ".uvtk[28]" -type "float2" -0.066540405 0.022013068 ;
	setAttr ".uvtk[29]" -type "float2" -0.066539124 0.01216495 ;
	setAttr ".uvtk[30]" -type "float2" 0.066532791 0.036403775 ;
	setAttr ".uvtk[31]" -type "float2" -0.066542283 0.036423743 ;
	setAttr ".uvtk[32]" -type "float2" -0.066536561 -0.0075314641 ;
	setAttr ".uvtk[33]" -type "float2" -0.066535264 -0.017379612 ;
	setAttr ".uvtk[34]" -type "float2" 0.066539794 -0.017399698 ;
	setAttr ".uvtk[35]" -type "float2" 0.066538483 -0.0075514615 ;
	setAttr ".uvtk[36]" -type "float2" -0.066534013 -0.027227819 ;
	setAttr ".uvtk[37]" -type "float2" 0.066541076 -0.027247846 ;
	setAttr ".uvtk[38]" -type "float2" -0.066532806 -0.036403745 ;
	setAttr ".uvtk[39]" -type "float2" 0.066542298 -0.036423773 ;
	setAttr ".uvtk[40]" -type "float2" -1.5795231e-06 0.012154877 ;
	setAttr ".uvtk[41]" -type "float2" 9.5367432e-07 -0.0075414479 ;
	setAttr ".uvtk[42]" -type "float2" 2.2649765e-06 -0.017389655 ;
	setAttr ".uvtk[43]" -type "float2" 3.5464764e-06 -0.027237803 ;
	setAttr ".uvtk[44]" -type "float2" -4.7385693e-06 0.036413729 ;
	setAttr ".uvtk[45]" -type "float2" 4.7385693e-06 -0.036413759 ;
	setAttr ".uvtk[46]" -type "float2" -2.8610229e-06 0.022003055 ;
	setAttr ".uvtk[68]" -type "float2" -0.033267796 -0.0075364709 ;
	setAttr ".uvtk[69]" -type "float2" -0.033270359 0.012159884 ;
	setAttr ".uvtk[70]" -type "float2" -0.033271626 0.022008061 ;
	setAttr ".uvtk[71]" -type "float2" -0.033273518 0.036418736 ;
	setAttr ".uvtk[72]" -type "float2" -0.033264041 -0.036408752 ;
	setAttr ".uvtk[73]" -type "float2" -0.033265233 -0.027232826 ;
	setAttr ".uvtk[74]" -type "float2" -0.033266515 -0.017384648 ;
	setAttr ".uvtk[75]" -type "float2" 0.03326717 0.01214987 ;
	setAttr ".uvtk[76]" -type "float2" 0.033269703 -0.0075464547 ;
	setAttr ".uvtk[77]" -type "float2" 0.033271015 -0.017394662 ;
	setAttr ".uvtk[78]" -type "float2" 0.033272326 -0.027242839 ;
	setAttr ".uvtk[79]" -type "float2" 0.033264041 0.036408722 ;
	setAttr ".uvtk[80]" -type "float2" 0.033273488 -0.036418736 ;
	setAttr ".uvtk[81]" -type "float2" 0.033265889 0.021998107 ;
	setAttr ".uvtk[82]" -type "float2" 0.049901575 0.012147367 ;
	setAttr ".uvtk[83]" -type "float2" 0.049904108 -0.0075489581 ;
	setAttr ".uvtk[84]" -type "float2" 0.04990539 -0.017397165 ;
	setAttr ".uvtk[85]" -type "float2" 0.049906731 -0.027245343 ;
	setAttr ".uvtk[86]" -type "float2" 0.049898416 0.036406219 ;
	setAttr ".uvtk[87]" -type "float2" 0.049907893 -0.036421239 ;
	setAttr ".uvtk[88]" -type "float2" 0.049900293 0.021995544 ;
	setAttr ".uvtk[89]" -type "float2" 0.016635329 -0.0075439513 ;
	setAttr ".uvtk[90]" -type "float2" 0.016632795 0.012152374 ;
	setAttr ".uvtk[91]" -type "float2" 0.016631514 0.022000551 ;
	setAttr ".uvtk[92]" -type "float2" 0.016629636 0.036411226 ;
	setAttr ".uvtk[93]" -type "float2" 0.016639113 -0.036416233 ;
	setAttr ".uvtk[94]" -type "float2" 0.016637951 -0.027240336 ;
	setAttr ".uvtk[95]" -type "float2" 0.01663661 -0.017392159 ;
	setAttr ".uvtk[96]" -type "float2" -0.016635984 0.012157381 ;
	setAttr ".uvtk[97]" -type "float2" -0.016633421 -0.0075389743 ;
	setAttr ".uvtk[98]" -type "float2" -0.01663214 -0.017387152 ;
	setAttr ".uvtk[99]" -type "float2" -0.016630828 -0.027235329 ;
	setAttr ".uvtk[100]" -type "float2" -0.016639143 0.036416233 ;
	setAttr ".uvtk[101]" -type "float2" -0.016629666 -0.036411226 ;
	setAttr ".uvtk[102]" -type "float2" -0.016637266 0.022005558 ;
	setAttr ".uvtk[103]" -type "float2" -0.049902186 -0.0075339675 ;
	setAttr ".uvtk[104]" -type "float2" -0.049904749 0.012162387 ;
	setAttr ".uvtk[105]" -type "float2" -0.04990603 0.022010624 ;
	setAttr ".uvtk[106]" -type "float2" -0.049907908 0.036421239 ;
	setAttr ".uvtk[107]" -type "float2" -0.049898431 -0.036406249 ;
	setAttr ".uvtk[108]" -type "float2" -0.049899638 -0.027230293 ;
	setAttr ".uvtk[109]" -type "float2" -0.049900889 -0.017382115 ;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "3B9F43F1-4485-6E11-D894-0181B7415498";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[10:11]" "e[26:27]" "e[32]" "e[37]" "e[44]" "e[49]" "e[57:58]" "e[68]" "e[73]" "e[81:82]" "e[92]" "e[97]" "e[104]" "e[109]" "e[117:118]" "e[128]" "e[133]" "e[141:142]" "e[152]" "e[157]" "e[165:166]" "e[176]" "e[181]" "e[189:190]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "98B8276C-4008-B508-2922-7689FACEA9D9";
	setAttr ".uopa" yes;
	setAttr -s 117 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[1]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[3]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[4]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[9]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[10]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[11]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[14]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[18]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[19]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[27]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[29]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[30]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[31]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[32]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[33]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[34]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[35]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[36]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[37]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[38]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[39]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[40]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[41]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[42]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[43]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[44]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[45]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[47]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[48]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[49]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[50]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[51]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[54]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[55]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[57]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[59]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[60]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[61]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[62]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[63]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[64]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[65]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[68]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[69]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[71]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[72]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[73]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[74]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[75]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[76]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[77]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[78]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[79]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[80]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[83]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[84]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[85]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[86]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[87]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[89]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[91]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[92]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[93]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[94]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[95]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[97]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[98]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[99]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[100]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[101]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[103]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[105]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[106]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[107]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[108]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[109]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[111]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[112]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[113]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[114]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[117]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[119]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[120]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[122]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[123]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[125]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[126]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[127]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[128]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[131]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[133]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[134]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[136]" -type "float2" 0 -0.1160299 ;
	setAttr ".uvtk[137]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[148]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[149]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[151]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[152]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[153]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[156]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[157]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[159]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[160]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[161]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[164]" -type "float2" 0 0.022825591 ;
	setAttr ".uvtk[165]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[166]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[169]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[170]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[171]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[174]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[175]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[177]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[178]" -type "float2" 3.5360456e-05 0.014849089 ;
	setAttr ".uvtk[179]" -type "float2" 0 -0.11602992 ;
	setAttr ".uvtk[182]" -type "float2" 0 -0.11602992 ;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "DC6CA6A7-4078-C28D-BC28-6191C17AD905";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "f[1]" "f[11]" "f[20]" "f[26]" "f[30]" "f[38]" "f[42]" "f[50]" "f[56]" "f[60]" "f[68]" "f[72]" "f[80]" "f[84]" "f[92]" "f[96]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "21D2B5A6-4DB3-E222-2D92-0EA4249D1739";
	setAttr ".uopa" yes;
	setAttr -s 171 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.0029431283 0.037762761 ;
	setAttr ".uvtk[1]" -type "float2" -0.0029429793 0.032203522 ;
	setAttr ".uvtk[2]" -type "float2" 0 -0.00063568982 ;
	setAttr ".uvtk[3]" -type "float2" -0.0029434562 0.048881233 ;
	setAttr ".uvtk[4]" -type "float2" -0.0029428005 0.026644347 ;
	setAttr ".uvtk[5]" -type "float2" -0.2155713 0.099242777 ;
	setAttr ".uvtk[8]" -type "float2" -0.21557121 0.099242777 ;
	setAttr ".uvtk[9]" -type "float2" 0.0029432774 0.032208797 ;
	setAttr ".uvtk[10]" -type "float2" 0.0029431283 0.037768006 ;
	setAttr ".uvtk[11]" -type "float2" 0.0029434413 0.026649592 ;
	setAttr ".uvtk[14]" -type "float2" 0.0029428154 0.048886478 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.00057161483 ;
	setAttr ".uvtk[18]" -type "float2" 0.00098100305 -0.030754477 ;
	setAttr ".uvtk[19]" -type "float2" -0.00098109245 -0.03074953 ;
	setAttr ".uvtk[26]" -type "float2" 0.0019325614 -0.088245079 ;
	setAttr ".uvtk[27]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[28]" -type "float2" -0.0019325614 -0.013157066 ;
	setAttr ".uvtk[29]" -type "float2" 0.19065011 -0.050757252 ;
	setAttr ".uvtk[30]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[31]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[32]" -type "float2" 0.19065011 -0.050757192 ;
	setAttr ".uvtk[33]" -type "float2" 0.19065011 -0.050757192 ;
	setAttr ".uvtk[34]" -type "float2" 0.19065009 -0.050757132 ;
	setAttr ".uvtk[35]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[36]" -type "float2" 0.19065011 -0.050757162 ;
	setAttr ".uvtk[37]" -type "float2" 0.19065009 -0.050757162 ;
	setAttr ".uvtk[38]" -type "float2" 0.19065011 -0.050757192 ;
	setAttr ".uvtk[39]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[40]" -type "float2" 0.19065011 -0.050757252 ;
	setAttr ".uvtk[41]" -type "float2" 0.19065011 -0.050757222 ;
	setAttr ".uvtk[42]" -type "float2" 0.19065011 -0.050757162 ;
	setAttr ".uvtk[43]" -type "float2" 0.19065011 -0.050757162 ;
	setAttr ".uvtk[44]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[45]" -type "float2" 0.19065011 -0.050757192 ;
	setAttr ".uvtk[46]" -type "float2" -2.9802322e-08 -0.013233241 ;
	setAttr ".uvtk[47]" -type "float2" -2.9802322e-07 0.048883855 ;
	setAttr ".uvtk[48]" -type "float2" 0 0.037765384 ;
	setAttr ".uvtk[49]" -type "float2" 1.4901161e-07 0.032206144 ;
	setAttr ".uvtk[50]" -type "float2" 2.9802322e-07 0.02664697 ;
	setAttr ".uvtk[51]" -type "float2" -2.9802322e-08 -0.030752033 ;
	setAttr ".uvtk[52]" -type "float2" -0.21557121 0.099242769 ;
	setAttr ".uvtk[53]" -type "float2" 0 -0.00060368213 ;
	setAttr ".uvtk[54]" -type "float2" 0.0014715642 0.037766695 ;
	setAttr ".uvtk[55]" -type "float2" 0.0014712512 0.048885167 ;
	setAttr ".uvtk[56]" -type "float2" 0 -0.00058764848 ;
	setAttr ".uvtk[57]" -type "float2" 0.00049047172 -0.030753285 ;
	setAttr ".uvtk[58]" -type "float2" -0.2155713 0.099242769 ;
	setAttr ".uvtk[59]" -type "float2" 0.0014718622 0.026648281 ;
	setAttr ".uvtk[60]" -type "float2" 0.0014717132 0.032207455 ;
	setAttr ".uvtk[61]" -type "float2" -0.0014718771 0.048882544 ;
	setAttr ".uvtk[62]" -type "float2" -0.0014715493 0.037764072 ;
	setAttr ".uvtk[63]" -type "float2" -0.0014714003 0.032204863 ;
	setAttr ".uvtk[64]" -type "float2" -0.0014712512 0.026645659 ;
	setAttr ".uvtk[65]" -type "float2" -0.00049054623 -0.030750781 ;
	setAttr ".uvtk[66]" -type "float2" -0.21557121 0.099242769 ;
	setAttr ".uvtk[67]" -type "float2" 0 -0.00061971578 ;
	setAttr ".uvtk[68]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[69]" -type "float2" 0.19065009 -0.050757252 ;
	setAttr ".uvtk[70]" -type "float2" -0.0009662956 -0.013195213 ;
	setAttr ".uvtk[71]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[72]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[73]" -type "float2" 0.19065009 -0.050757162 ;
	setAttr ".uvtk[74]" -type "float2" 0.19065009 -0.050757162 ;
	setAttr ".uvtk[75]" -type "float2" 0.19065009 -0.050757252 ;
	setAttr ".uvtk[76]" -type "float2" 0.19065009 -0.050757222 ;
	setAttr ".uvtk[77]" -type "float2" 0.19065009 -0.050757132 ;
	setAttr ".uvtk[78]" -type "float2" 0.19065009 -0.050757162 ;
	setAttr ".uvtk[79]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[80]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[81]" -type "float2" 0.0009662509 -0.013271268 ;
	setAttr ".uvtk[82]" -type "float2" 0.0014494061 -0.088226125 ;
	setAttr ".uvtk[83]" -type "float2" 0.19065009 -0.050757162 ;
	setAttr ".uvtk[84]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[85]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[86]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[87]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[88]" -type "float2" 0.0014494061 -0.013290402 ;
	setAttr ".uvtk[89]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[90]" -type "float2" 0.00048315525 -0.088187978 ;
	setAttr ".uvtk[91]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[92]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[93]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[94]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[95]" -type "float2" 0.19065009 -0.050757192 ;
	setAttr ".uvtk[96]" -type "float2" -0.00048312545 -0.08814989 ;
	setAttr ".uvtk[97]" -type "float2" 0.19065011 -0.050757222 ;
	setAttr ".uvtk[98]" -type "float2" 0.19065011 -0.050757132 ;
	setAttr ".uvtk[99]" -type "float2" 0.19065011 -0.050757162 ;
	setAttr ".uvtk[100]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[101]" -type "float2" 0.19065011 -0.050757192 ;
	setAttr ".uvtk[102]" -type "float2" -0.00048315525 -0.013214227 ;
	setAttr ".uvtk[103]" -type "float2" 0.19065011 -0.050757162 ;
	setAttr ".uvtk[104]" -type "float2" -0.0014493912 -0.088111863 ;
	setAttr ".uvtk[105]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[106]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[107]" -type "float2" 0.19065011 -0.050757192 ;
	setAttr ".uvtk[108]" -type "float2" 0.19065011 -0.050757162 ;
	setAttr ".uvtk[109]" -type "float2" 0.19065011 -0.050757132 ;
	setAttr ".uvtk[110]" -type "float2" 0 -0.068393759 ;
	setAttr ".uvtk[111]" -type "float2" -0.0022073388 0.037763417 ;
	setAttr ".uvtk[112]" -type "float2" -0.0022071898 0.032204177 ;
	setAttr ".uvtk[113]" -type "float2" -0.0022070408 0.026645003 ;
	setAttr ".uvtk[114]" -type "float2" -0.00073581934 -0.030750185 ;
	setAttr ".uvtk[115]" -type "float2" -0.21557121 0.099242777 ;
	setAttr ".uvtk[116]" -type "float2" 0 -0.0006277028 ;
	setAttr ".uvtk[117]" -type "float2" -0.00073578954 0.037764728 ;
	setAttr ".uvtk[118]" -type "float2" 0 -0.068377785 ;
	setAttr ".uvtk[119]" -type "float2" -0.00024521351 -0.02309522 ;
	setAttr ".uvtk[120]" -type "float2" -0.00024530292 -0.030751377 ;
	setAttr ".uvtk[121]" -type "float2" -0.21557121 0.099242777 ;
	setAttr ".uvtk[122]" -type "float2" -0.00073546171 0.026646314 ;
	setAttr ".uvtk[123]" -type "float2" -0.00073564053 0.032205489 ;
	setAttr ".uvtk[124]" -type "float2" 0 -0.068361692 ;
	setAttr ".uvtk[125]" -type "float2" 0.00073578954 0.037766039 ;
	setAttr ".uvtk[126]" -type "float2" 0.00073593855 0.03220683 ;
	setAttr ".uvtk[127]" -type "float2" 0.00073608756 0.026647625 ;
	setAttr ".uvtk[128]" -type "float2" 0.00024521351 -0.030752629 ;
	setAttr ".uvtk[129]" -type "float2" -0.21557121 0.099242769 ;
	setAttr ".uvtk[130]" -type "float2" 0 -0.0005956355 ;
	setAttr ".uvtk[131]" -type "float2" 0.0022073388 0.037767351 ;
	setAttr ".uvtk[132]" -type "float2" 0 -0.068345599 ;
	setAttr ".uvtk[133]" -type "float2" 0.00073581934 -0.023097664 ;
	setAttr ".uvtk[134]" -type "float2" 0.00073574483 -0.030753881 ;
	setAttr ".uvtk[135]" -type "float2" -0.21557121 0.099242769 ;
	setAttr ".uvtk[136]" -type "float2" 0.0022076517 0.026648937 ;
	setAttr ".uvtk[137]" -type "float2" 0.0022075027 0.032208141 ;
	setAttr ".uvtk[138]" -type "float2" -0.21557121 0.099242777 ;
	setAttr ".uvtk[139]" -type "float2" -0.21557121 0.099242777 ;
	setAttr ".uvtk[140]" -type "float2" -0.21557121 0.099242769 ;
	setAttr ".uvtk[141]" -type "float2" -0.21557121 0.099242769 ;
	setAttr ".uvtk[142]" -type "float2" -0.21557121 0.099242777 ;
	setAttr ".uvtk[143]" -type "float2" -0.21557121 0.099242777 ;
	setAttr ".uvtk[144]" -type "float2" -0.21557121 0.099242769 ;
	setAttr ".uvtk[145]" -type "float2" -0.21557121 0.099242777 ;
	setAttr ".uvtk[146]" -type "float2" -0.21557121 0.099242769 ;
	setAttr ".uvtk[147]" -type "float2" 0 -0.00057960185 ;
	setAttr ".uvtk[148]" -type "float2" 0.00098107755 -0.02309832 ;
	setAttr ".uvtk[149]" -type "float2" 0.0022070408 0.048885822 ;
	setAttr ".uvtk[150]" -type "float2" 0 -0.068337671 ;
	setAttr ".uvtk[151]" -type "float2" 0.00024530292 -0.023096412 ;
	setAttr ".uvtk[152]" -type "float2" 0.00049056113 -0.023097068 ;
	setAttr ".uvtk[153]" -type "float2" 0.00073546171 0.048884511 ;
	setAttr ".uvtk[154]" -type "float2" 0 -0.068353705 ;
	setAttr ".uvtk[155]" -type "float2" 0 -0.00061166915 ;
	setAttr ".uvtk[156]" -type "float2" 2.9802322e-08 -0.023095816 ;
	setAttr ".uvtk[157]" -type "float2" -0.00073608756 0.0488832 ;
	setAttr ".uvtk[158]" -type "float2" 0 -0.068369679 ;
	setAttr ".uvtk[159]" -type "float2" -0.00073575974 -0.023093969 ;
	setAttr ".uvtk[160]" -type "float2" -0.00049048662 -0.023094565 ;
	setAttr ".uvtk[161]" -type "float2" -0.0022076666 0.048881888 ;
	setAttr ".uvtk[162]" -type "float2" 0 -0.068385772 ;
	setAttr ".uvtk[163]" -type "float2" -0.001449421 -0.013175901 ;
	setAttr ".uvtk[164]" -type "float2" -0.00098097324 -0.023093373 ;
	setAttr ".uvtk[165]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[166]" -type "float2" 0.19065011 -0.050757252 ;
	setAttr ".uvtk[167]" -type "float2" 0 -0.068401746 ;
	setAttr ".uvtk[168]" -type "float2" -0.0019325167 -0.088092551 ;
	setAttr ".uvtk[169]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[170]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[171]" -type "float2" 0.19065011 -0.050757252 ;
	setAttr ".uvtk[172]" -type "float2" -0.0009662509 -0.088130876 ;
	setAttr ".uvtk[173]" -type "float2" 0.00048312545 -0.013252135 ;
	setAttr ".uvtk[174]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[175]" -type "float2" 0.19065009 -0.050757252 ;
	setAttr ".uvtk[176]" -type "float2" 2.9802322e-08 -0.088168904 ;
	setAttr ".uvtk[177]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[178]" -type "float2" 0 -0.026923925 ;
	setAttr ".uvtk[179]" -type "float2" 0.19065009 -0.050757252 ;
	setAttr ".uvtk[180]" -type "float2" 0.0009662807 -0.088206992 ;
	setAttr ".uvtk[181]" -type "float2" 0.0019325018 -0.013309356 ;
	setAttr ".uvtk[182]" -type "float2" 0.19065009 -0.050757252 ;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "3A6EA207-4EDF-46E3-07F0-7AA75F120897";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "f[6]" "f[12:19]" "f[25]" "f[31]" "f[37]" "f[40]" "f[43:49]" "f[52:55]" "f[58]" "f[61:67]" "f[70]" "f[73:75]" "f[79]" "f[85]" "f[91]" "f[97]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "FCEB3303-4F3D-2F2D-9B0D-A48B47840002";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 0.22039714 -0.078614056 ;
	setAttr ".uvtk[8]" -type "float2" 0.21755016 -0.078773782 ;
	setAttr ".uvtk[29]" -type "float2" 0.5113939 -0.055093795 ;
	setAttr ".uvtk[32]" -type "float2" 0.40696436 0.047145963 ;
	setAttr ".uvtk[33]" -type "float2" 0.3547495 0.098265618 ;
	setAttr ".uvtk[34]" -type "float2" 0.014687926 -0.2488225 ;
	setAttr ".uvtk[35]" -type "float2" 0.066902727 -0.29994226 ;
	setAttr ".uvtk[36]" -type "float2" 0.30253476 0.14938568 ;
	setAttr ".uvtk[37]" -type "float2" -0.037526816 -0.19770268 ;
	setAttr ".uvtk[38]" -type "float2" 0.2538844 0.19701585 ;
	setAttr ".uvtk[39]" -type "float2" -0.08617726 -0.15007243 ;
	setAttr ".uvtk[40]" -type "float2" 0.34136298 -0.22863786 ;
	setAttr ".uvtk[41]" -type "float2" 0.23693362 -0.12639825 ;
	setAttr ".uvtk[42]" -type "float2" 0.1847187 -0.075278372 ;
	setAttr ".uvtk[43]" -type "float2" 0.13250402 -0.024158537 ;
	setAttr ".uvtk[45]" -type "float2" 0.083853513 0.023471713 ;
	setAttr ".uvtk[52]" -type "float2" 0.21614134 -0.11960077 ;
	setAttr ".uvtk[58]" -type "float2" 0.21882772 -0.11824273 ;
	setAttr ".uvtk[66]" -type "float2" 0.20555791 -0.12013497 ;
	setAttr ".uvtk[68]" -type "float2" 0.32194889 -0.039626181 ;
	setAttr ".uvtk[69]" -type "float2" 0.42637831 -0.14186582 ;
	setAttr ".uvtk[72]" -type "float2" 0.16886893 0.11024387 ;
	setAttr ".uvtk[73]" -type "float2" 0.21751943 0.062613562 ;
	setAttr ".uvtk[74]" -type "float2" 0.26973411 0.011493742 ;
	setAttr ".uvtk[75]" -type "float2" 0.25634757 -0.31540987 ;
	setAttr ".uvtk[76]" -type "float2" 0.1519182 -0.21317023 ;
	setAttr ".uvtk[77]" -type "float2" 0.099703461 -0.16205043 ;
	setAttr ".uvtk[78]" -type "float2" 0.0474886 -0.11093064 ;
	setAttr ".uvtk[80]" -type "float2" -0.0011617839 -0.063300319 ;
	setAttr ".uvtk[83]" -type "float2" 0.10941043 -0.25655633 ;
	setAttr ".uvtk[84]" -type "float2" 0.057195693 -0.20543641 ;
	setAttr ".uvtk[85]" -type "float2" 0.0049808323 -0.15431669 ;
	setAttr ".uvtk[87]" -type "float2" -0.043669552 -0.10668637 ;
	setAttr ".uvtk[89]" -type "float2" 0.19442585 -0.16978416 ;
	setAttr ".uvtk[93]" -type "float2" 0.041345924 -0.019914269 ;
	setAttr ".uvtk[94]" -type "float2" 0.089996129 -0.067544535 ;
	setAttr ".uvtk[95]" -type "float2" 0.14221105 -0.11866429 ;
	setAttr ".uvtk[97]" -type "float2" 0.27944124 -0.083012208 ;
	setAttr ".uvtk[98]" -type "float2" 0.22722653 -0.031892344 ;
	setAttr ".uvtk[99]" -type "float2" 0.17501166 0.01922749 ;
	setAttr ".uvtk[101]" -type "float2" 0.12636134 0.066857815 ;
	setAttr ".uvtk[103]" -type "float2" 0.36445665 0.003759861 ;
	setAttr ".uvtk[107]" -type "float2" 0.21137667 0.15362987 ;
	setAttr ".uvtk[108]" -type "float2" 0.26002711 0.10599953 ;
	setAttr ".uvtk[109]" -type "float2" 0.31224191 0.054879665 ;
	setAttr ".uvtk[115]" -type "float2" 0.20559046 -0.079583153 ;
	setAttr ".uvtk[121]" -type "float2" 0.20798233 -0.079408661 ;
	setAttr ".uvtk[129]" -type "float2" 0.20824364 -0.11835279 ;
	setAttr ".uvtk[135]" -type "float2" 0.21050045 -0.12199631 ;
	setAttr ".uvtk[138]" -type "float2" 0.21130863 -0.079214931 ;
	setAttr ".uvtk[139]" -type "float2" 0.20973638 -0.07931526 ;
	setAttr ".uvtk[140]" -type "float2" 0.209169 -0.12184923 ;
	setAttr ".uvtk[141]" -type "float2" 0.21198729 -0.12161195 ;
	setAttr ".uvtk[142]" -type "float2" 0.21301612 -0.079104617 ;
	setAttr ".uvtk[143]" -type "float2" 0.21533379 -0.079114243 ;
	setAttr ".uvtk[144]" -type "float2" 0.21410462 -0.12075498 ;
	setAttr ".uvtk[145]" -type "float2" 0.20772734 -0.079445079 ;
	setAttr ".uvtk[146]" -type "float2" 0.20741913 -0.12117776 ;
	setAttr ".uvtk[166]" -type "float2" 0.46888608 -0.098479778 ;
	setAttr ".uvtk[171]" -type "float2" 0.38387066 -0.18525185 ;
	setAttr ".uvtk[175]" -type "float2" 0.29885527 -0.27202395 ;
	setAttr ".uvtk[179]" -type "float2" 0.2138398 -0.35879594 ;
	setAttr ".uvtk[182]" -type "float2" 0.17133221 -0.40218204 ;
createNode polyPlanarProj -n "polyPlanarProj6";
	rename -uid "B46709E5-47E8-45B9-A8AC-1E88A330D9B7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "f[6]" "f[12:19]" "f[25]" "f[31]" "f[37]" "f[40]" "f[43:49]" "f[52:55]" "f[58]" "f[61:67]" "f[70]" "f[73:75]" "f[79]" "f[85]" "f[91]" "f[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.99984769515639127 -0.017452406437283512 0
		 0 0.017452406437283512 0.99984769515639127 0 0.99496613116934896 0.052433371733654754 0.0082692886878220073 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1.5018889904022217 0.50455226190388203 -1.1480133356526494 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 2.2965164538472891 1.012729849666357 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "2F32EA14-4515-50AD-4A3C-B88279B2CD35";
	setAttr ".uopa" yes;
	setAttr -s 62 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" -0.12625596 0.73139536 ;
	setAttr ".uvtk[8]" -type "float2" -0.13447931 0.73216891 ;
	setAttr ".uvtk[29]" -type "float2" -0.1409072 -0.016431034 ;
	setAttr ".uvtk[32]" -type "float2" -0.1328806 -0.014851391 ;
	setAttr ".uvtk[33]" -type "float2" -0.017591305 0.49553305 ;
	setAttr ".uvtk[34]" -type "float2" 0.02676937 0.61440122 ;
	setAttr ".uvtk[35]" -type "float2" 0.080272518 0.62576282 ;
	setAttr ".uvtk[36]" -type "float2" 0.046311937 0.50897169 ;
	setAttr ".uvtk[37]" -type "float2" 0.070965052 0.73242098 ;
	setAttr ".uvtk[38]" -type "float2" 0.11287608 0.73891634 ;
	setAttr ".uvtk[39]" -type "float2" 0.082167469 -0.010458767 ;
	setAttr ".uvtk[40]" -type "float2" 0.12537923 -0.011700928 ;
	setAttr ".uvtk[41]" -type "float2" -0.035114091 -0.077735603 ;
	setAttr ".uvtk[42]" -type "float2" 0.029001139 -0.065654039 ;
	setAttr ".uvtk[43]" -type "float2" -0.36662793 0.50521469 ;
	setAttr ".uvtk[45]" -type "float2" -0.34127223 0.4940038 ;
	setAttr ".uvtk[52]" -type "float2" -0.32969499 -0.077679068 ;
	setAttr ".uvtk[58]" -type "float2" -0.35351527 -0.070970178 ;
	setAttr ".uvtk[66]" -type "float2" -0.2443279 0.61994159 ;
	setAttr ".uvtk[68]" -type "float2" -0.22458819 0.60916048 ;
	setAttr ".uvtk[69]" -type "float2" -0.11130545 0.72672772 ;
	setAttr ".uvtk[72]" -type "float2" -0.11785623 -0.013423622 ;
	setAttr ".uvtk[73]" -type "float2" -0.014616854 -0.0085326433 ;
	setAttr ".uvtk[74]" -type "float2" -0.0093959086 0.73801506 ;
	setAttr ".uvtk[75]" -type "float2" 0.041756973 0.7392357 ;
	setAttr ".uvtk[76]" -type "float2" 0.036791071 -0.003215909 ;
	setAttr ".uvtk[77]" -type "float2" -0.11690038 -0.017790198 ;
	setAttr ".uvtk[78]" -type "float2" -0.11102057 0.73473012 ;
	setAttr ".uvtk[80]" -type "float2" -0.085945562 0.7357589 ;
	setAttr ".uvtk[83]" -type "float2" -0.091622844 -0.015976369 ;
	setAttr ".uvtk[84]" -type "float2" -0.13336733 -0.018284261 ;
	setAttr ".uvtk[85]" -type "float2" -0.12730005 0.73377162 ;
	setAttr ".uvtk[87]" -type "float2" -0.25637761 -0.089063019 ;
	setAttr ".uvtk[89]" -type "float2" -0.25938132 0.48172259 ;
	setAttr ".uvtk[93]" -type "float2" -0.20590654 0.48022768 ;
	setAttr ".uvtk[94]" -type "float2" -0.20824698 -0.094347388 ;
	setAttr ".uvtk[95]" -type "float2" -0.036132943 -0.010692656 ;
	setAttr ".uvtk[97]" -type "float2" -0.03804696 0.72251803 ;
	setAttr ".uvtk[98]" -type "float2" -0.066896088 0.7233572 ;
	setAttr ".uvtk[99]" -type "float2" -0.068604983 -0.011318803 ;
	setAttr ".uvtk[101]" -type "float2" -0.16272011 0.60136807 ;
	setAttr ".uvtk[103]" -type "float2" -0.12203118 0.60122931 ;
	setAttr ".uvtk[107]" -type "float2" -0.14630893 0.48173627 ;
	setAttr ".uvtk[108]" -type "float2" -0.15409553 -0.092345297 ;
	setAttr ".uvtk[109]" -type "float2" -0.076117195 0.60328144 ;
	setAttr ".uvtk[115]" -type "float2" -0.0052634031 0.72428167 ;
	setAttr ".uvtk[121]" -type "float2" 0.00047184527 -0.010470688 ;
	setAttr ".uvtk[129]" -type "float2" -0.095972627 -0.088195086 ;
	setAttr ".uvtk[135]" -type "float2" -0.082919121 0.48669571 ;
	setAttr ".uvtk[138]" -type "float2" -0.026122194 0.60747343 ;
	setAttr ".uvtk[139]" -type "float2" 0.031208128 0.72766745 ;
	setAttr ".uvtk[140]" -type "float2" 0.040186167 -0.010272384 ;
	setAttr ".uvtk[141]" -type "float2" -0.29714656 -0.085918456 ;
	setAttr ".uvtk[142]" -type "float2" -0.30686262 0.48657167 ;
	setAttr ".uvtk[143]" -type "float2" -0.19719061 0.60438293 ;
	setAttr ".uvtk[144]" -type "float2" -0.091434762 0.72518921 ;
	setAttr ".uvtk[145]" -type "float2" -0.096122786 -0.012254059 ;
	setAttr ".uvtk[146]" -type "float2" -0.1349912 0.73247474 ;
	setAttr ".uvtk[166]" -type "float2" -0.14123413 -0.017713964 ;
	setAttr ".uvtk[171]" -type "float2" -0.052036177 0.73685491 ;
	setAttr ".uvtk[175]" -type "float2" -0.057492863 -0.012745619 ;
createNode polyStraightenUVBorder -n "polyStraightenUVBorder1";
	rename -uid "9C838BAC-4A64-79C1-1614-DEBF7407B59B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "map[5]" "map[8]" "map[29]" "map[32:43]" "map[45]" "map[52]" "map[58]" "map[66]" "map[68:69]" "map[72:78]" "map[80]" "map[83:85]" "map[87]" "map[89]" "map[93:95]" "map[97:99]" "map[101]" "map[103]" "map[107:109]" "map[115]" "map[121]" "map[129]" "map[135]" "map[138:146]" "map[166]" "map[171]" "map[175]";
createNode polyStraightenUVBorder -n "polyStraightenUVBorder2";
	rename -uid "7EF8E1E0-4320-DC8E-B5B4-C49CC2AC6DB1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "map[5]" "map[8]" "map[29]" "map[32:43]" "map[45]" "map[52]" "map[58]" "map[66]" "map[68:69]" "map[72:78]" "map[80]" "map[83:85]" "map[87]" "map[89]" "map[93:95]" "map[97:99]" "map[101]" "map[103]" "map[107:109]" "map[115]" "map[121]" "map[129]" "map[135]" "map[138:146]" "map[166]" "map[171]" "map[175]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "CAE4CB74-4ED7-119F-3697-688D46B0A1BA";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.023785165 -0.20455243 ;
	setAttr ".uvtk[21]" -type "float2" 0.023785165 -0.20455243 ;
	setAttr ".uvtk[22]" -type "float2" 0.023785165 -0.20455241 ;
	setAttr ".uvtk[23]" -type "float2" 0.023785165 -0.20455241 ;
	setAttr ".uvtk[24]" -type "float2" 0.023785165 -0.20455243 ;
	setAttr ".uvtk[25]" -type "float2" 0.023785165 -0.20455241 ;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "CBE2AA72-46D6-79D8-9849-7E92AD8FFA10";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[2:3]" "f[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.99984769515639127 -0.017452406437283512 0
		 0 0.017452406437283512 0.99984769515639127 0 0.99496613116934896 0.052433371733654754 0.0082692886878220073 1;
	setAttr ".s" -type "double3" 3.0142208337783813 3.0142208337783813 3.0142208337783813 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "6B1A8150-40C7-D009-2EC7-DAB511F723F5";
	setAttr ".uopa" yes;
	setAttr -s 181 ".uvtk[0:180]" -type "float2" 0.46143228 -0.21089515 0.46143228
		 -0.21089515 0.46143228 -0.21089515 0.46143216 -0.21089515 0.46143222 -0.21089515
		 0 0.67708445 0 0.67708445 0.46143222 -0.21089515 0.46143222 -0.21089515 0.46143222
		 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089509 0.46143222 -0.21089515
		 0.46143228 -0.21089515 0.46143228 -0.21089515 0.46143228 -0.21089515 0.46143222 -0.21089509
		 0 0.67708439 0.46143228 -0.21089515 0.46143222 -0.21089515 0 0.67708439 0 0.67708439
		 0 0.67708445 0 0.67708445 0 0.67708445 0 0.67708439 0 0.67708439 0 0.67708439 0 0.67708439
		 0 0.67708439 0 0.67708445 0 0.67708445 0.46143222 -0.21089515 0 0.67708445 0.46143234
		 -0.21089515 0.46143216 -0.21089515 0.46143222 -0.21089515 0.46143234 -0.21089515
		 0.46143234 -0.21089515 0.46143222 -0.21089515 0 0.67708445 0.46143216 -0.21089509
		 0.46143222 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089509 0.46143228 -0.21089515
		 0 0.67708439 0.46143222 -0.21089515 0.46143222 -0.21089515 0.46143216 -0.21089515
		 0.46143228 -0.21089515 0.46143222 -0.21089515 0.46143228 -0.21089515 0.46143222 -0.21089515
		 0 0.67708439 0.46143222 -0.21089515 0 0.67708439 0 0.67708445 0.46143222 -0.21089509
		 0.46143222 -0.21089515 0 0.67708439 0 0.67708445 0 0.67708445 0 0.67708439 0 0.67708445
		 0 0.67708445 0 0.67708445 0.46143228 -0.21089515 0 0.67708445 0.46143222 -0.21089515
		 0.46143222 -0.21089515 0 0.67708439 0 0.67708439 0 0.67708439 0.46143222 -0.21089515
		 0 0.67708445 0.46143222 -0.21089515 0 0.67708445 0.46143222 -0.21089515 0.46143216
		 -0.21089515 0.46143228 -0.21089515 0 0.67708433 0 0.67708433 0 0.67708439 0.46143228
		 -0.21089515 0 0.67708439 0 0.67708445 0 0.67708445 0.46143222 -0.21089515 0 0.67708445
		 0.46143228 -0.21089515 0 0.67708445 0.46143228 -0.21089515 0.46143222 -0.21089515
		 0.46143222 -0.21089515 0 0.67708433 0 0.67708439 0 0.67708439 0.46143228 -0.21089515
		 0.46143228 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089515
		 0 0.67708439 0.46143228 -0.21089509 0.46143222 -0.21089515 0.46143222 -0.21089515
		 0.46143228 -0.21089515 0.46143222 -0.21089515 0 0.67708439 0.46143222 -0.21089515
		 0.46143222 -0.21089515 0.46143216 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089515
		 0.46143222 -0.21089515 0.46143228 -0.21089515 0 0.67708439 0.46143222 -0.21089515
		 0.46143222 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089515
		 0 0.67708439 0.46143222 -0.21089515 0.46143228 -0.21089515 0 0.67708439 0 0.67708445
		 0 0.67708445 0 0.67708433 0 0.67708445 0 0.67708445 0 0.67708439 0 0.67708439 0 0.67708439
		 0.46143222 -0.21089509 0.46143222 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089515
		 0.46143234 -0.21089515 0.46143222 -0.21089515 0.46143234 -0.21089515 0.46143222 -0.21089515
		 0.46143228 -0.21089515 0.46143228 -0.21089515 0.46143228 -0.21089515 0.46143234 -0.21089515
		 0.46143228 -0.21089515 0.46143216 -0.21089515 0.46143216 -0.21089515 0.46143228 -0.21089515
		 0.46143222 -0.21089515 0.46143216 -0.21089515 0.46143222 -0.21089515 0 0.67708439
		 0.46143222 -0.21089515 0.46143222 -0.21089515 0.46143228 -0.21089515 0.46143222 -0.21089515
		 0 0.67708445 0.46143222 -0.21089515 0.46143228 -0.21089515 0.46143228 -0.21089515
		 0 0.67708445 0.46143228 -0.21089515 0.46143222 -0.21089515 0.46143222 -0.21089515
		 0.46143234 -0.21089509 0.46143222 -0.21089515 -0.053535461 0.25752908 -0.42179984
		 -0.099535204 0.27930996 -0.087918885 0.27299887 0.26309836 -0.41416648 -0.45020831
		 0.28543153 -0.43862367 -0.37669617 -0.47958794 -0.48098683 -0.47958788 -0.48098904
		 -0.69025958 -0.37669614 -0.57776213 -0.58739084 -0.47958705 -0.58739603 -0.69064319;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "26576E56-4315-9DC4-5F5C-3D972AFD9C1E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[31]" "e[35]" "e[84]" "e[95]" "e[107]" "e[120]" "e[131]" "e[144]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "3EDE8960-4B1E-E70D-469F-82B8677A3713";
	setAttr ".uopa" yes;
	setAttr -s 37 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" -0.0048541082 -0.21115308 ;
	setAttr ".uvtk[21]" -type "float2" -0.0048540933 -0.21115302 ;
	setAttr ".uvtk[22]" -type "float2" -0.0048540933 -0.21115308 ;
	setAttr ".uvtk[23]" -type "float2" -0.0048540933 -0.21115308 ;
	setAttr ".uvtk[24]" -type "float2" -0.0048540933 -0.21115302 ;
	setAttr ".uvtk[26]" -type "float2" -0.0048540933 -0.21115308 ;
	setAttr ".uvtk[29]" -type "float2" -0.0048540933 -0.21115302 ;
	setAttr ".uvtk[30]" -type "float2" -0.0048540914 -0.21115302 ;
	setAttr ".uvtk[31]" -type "float2" -0.0048541082 -0.21115302 ;
	setAttr ".uvtk[33]" -type "float2" -0.0048541082 -0.21115302 ;
	setAttr ".uvtk[40]" -type "float2" -0.0048541082 -0.21115302 ;
	setAttr ".uvtk[46]" -type "float2" -0.0048541082 -0.21115302 ;
	setAttr ".uvtk[54]" -type "float2" -0.0048541082 -0.21115308 ;
	setAttr ".uvtk[56]" -type "float2" -0.0048541082 -0.21115308 ;
	setAttr ".uvtk[57]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[75]" -type "float2" -0.0048540784 -0.21115302 ;
	setAttr ".uvtk[77]" -type "float2" -0.0048540784 -0.21115302 ;
	setAttr ".uvtk[81]" -type "float2" -0.0048540784 -0.21115302 ;
	setAttr ".uvtk[82]" -type "float2" -0.0048540784 -0.21115302 ;
	setAttr ".uvtk[85]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[89]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[91]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[95]" -type "float2" -0.0048540784 -0.21115302 ;
	setAttr ".uvtk[96]" -type "float2" -0.0048540784 -0.21115302 ;
	setAttr ".uvtk[97]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[103]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[117]" -type "float2" -0.0048540933 -0.21115302 ;
	setAttr ".uvtk[123]" -type "float2" -0.0048540933 -0.21115302 ;
	setAttr ".uvtk[126]" -type "float2" -0.0048540933 -0.21115308 ;
	setAttr ".uvtk[127]" -type "float2" -0.0048540933 -0.21115308 ;
	setAttr ".uvtk[129]" -type "float2" -0.0048540784 -0.21115302 ;
	setAttr ".uvtk[130]" -type "float2" -0.0048540784 -0.21115302 ;
	setAttr ".uvtk[131]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[132]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[183]" -type "float2" -0.0048540784 -0.21115308 ;
	setAttr ".uvtk[187]" -type "float2" -0.0048540933 -0.21115308 ;
createNode polyStraightenUVBorder -n "polyStraightenUVBorder3";
	rename -uid "BDA4B6B2-4771-97A4-1C08-1BA5152A71DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "map[6]" "map[17]" "map[20]" "map[25]" "map[27:28]" "map[60:66]" "map[68]" "map[71:73]" "map[83]" "map[86:87]" "map[109]" "map[128]" "map[133:134]" "map[154]" "map[159]" "map[163]" "map[181:182]" "map[184:186]" "map[188:189]";
createNode polyLayoutUV -n "polyLayoutUV4";
	rename -uid "717A2879-4D5E-CE44-5042-07AC501ABE72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "f[6]" "f[14]" "f[19]" "f[25]" "f[31]" "f[37]" "f[43]" "f[49]" "f[55]" "f[61]" "f[67]" "f[73]" "f[79]" "f[85]" "f[91]" "f[97]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "77B464D5-4D73-16A2-975C-87BDEF5C79A5";
	setAttr ".uopa" yes;
	setAttr -s 39 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[21]" -type "float2" 0.45628464 -0.84703916 ;
	setAttr ".uvtk[22]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[23]" -type "float2" 0.45628476 -0.84703916 ;
	setAttr ".uvtk[24]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[26]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[29]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[30]" -type "float2" 0.45628476 -0.84703916 ;
	setAttr ".uvtk[31]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[33]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[37]" -type "float2" 0.0043224692 -0.0018048733 ;
	setAttr ".uvtk[40]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[46]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[51]" -type "float2" -0.0027711987 -0.0010497719 ;
	setAttr ".uvtk[54]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[56]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[57]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[75]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[77]" -type "float2" 0.4590559 -0.84598941 ;
	setAttr ".uvtk[81]" -type "float2" 0.45196217 -0.84523427 ;
	setAttr ".uvtk[82]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[85]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[89]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[91]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[95]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[96]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[97]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[103]" -type "float2" 0.45628464 -0.84703916 ;
	setAttr ".uvtk[117]" -type "float2" 0.45628476 -0.84703916 ;
	setAttr ".uvtk[123]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[126]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[127]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[129]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[130]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[131]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[132]" -type "float2" 0.45628476 -0.84703916 ;
	setAttr ".uvtk[183]" -type "float2" 0.4562847 -0.84703916 ;
	setAttr ".uvtk[187]" -type "float2" 0.4562847 -0.84703916 ;
createNode polyPlanarProj -n "polyPlanarProj7";
	rename -uid "F00BBE01-4590-F187-ACEE-4AB9F463ADF2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[12:13]" "f[15:18]" "f[40]" "f[44:48]" "f[52:54]" "f[58]" "f[62:66]" "f[70]" "f[74:75]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.99984769515639127 -0.017452406437283512 0
		 0 0.017452406437283512 0.99984769515639127 0 0.99496613116934896 0.052433371733654754 0.0082692886878220073 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.76595890522003174 0.23317836597561836 -1.148013454861939 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 2.2965166922658682 0.46998205035924911 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "6CC906E6-4D9D-810E-0B38-51B9B1EF3AEC";
	setAttr ".uopa" yes;
	setAttr -s 83 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 0.059553586 0.50484657 ;
	setAttr ".uvtk[6]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[20]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[21]" -type "float2" 0.06885343 0.50484657 ;
	setAttr ".uvtk[22]" -type "float2" 0.1213319 0.50484651 ;
	setAttr ".uvtk[23]" -type "float2" 0.12132922 0.50484657 ;
	setAttr ".uvtk[24]" -type "float2" 0.078760743 0.50484657 ;
	setAttr ".uvtk[25]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[26]" -type "float2" 0.12137654 0.50484657 ;
	setAttr ".uvtk[27]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[28]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[29]" -type "float2" 0.05667492 -0.36601347 ;
	setAttr ".uvtk[30]" -type "float2" 0.1213294 -0.36601347 ;
	setAttr ".uvtk[31]" -type "float2" -0.32054782 0.50484651 ;
	setAttr ".uvtk[33]" -type "float2" -0.27854025 0.50484657 ;
	setAttr ".uvtk[40]" -type "float2" -0.28139114 -0.36601394 ;
	setAttr ".uvtk[46]" -type "float2" -0.32345116 -0.37005657 ;
	setAttr ".uvtk[54]" -type "float2" -0.24369924 0.501459 ;
	setAttr ".uvtk[56]" -type "float2" -0.20981145 0.50239456 ;
	setAttr ".uvtk[57]" -type "float2" -0.16830157 0.50484657 ;
	setAttr ".uvtk[60]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[61]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[62]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[63]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[64]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[65]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[66]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[68]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[71]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[72]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[73]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[75]" -type "float2" -0.14154337 0.50484657 ;
	setAttr ".uvtk[77]" -type "float2" -0.18248866 -0.36253661 ;
	setAttr ".uvtk[81]" -type "float2" -0.17972104 0.50484657 ;
	setAttr ".uvtk[82]" -type "float2" -0.12370567 0.50484657 ;
	setAttr ".uvtk[83]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[85]" -type "float2" -0.12647526 -0.36756748 ;
	setAttr ".uvtk[86]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[87]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[89]" -type "float2" -0.12982313 0.50484657 ;
	setAttr ".uvtk[91]" -type "float2" -0.078486785 0.50729847 ;
	setAttr ".uvtk[95]" -type "float2" -0.042582348 0.50484651 ;
	setAttr ".uvtk[96]" -type "float2" -0.08427833 0.50484657 ;
	setAttr ".uvtk[97]" -type "float2" -0.064278856 0.50484657 ;
	setAttr ".uvtk[103]" -type "float2" -0.067056194 -0.36686224 ;
	setAttr ".uvtk[109]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[117]" -type "float2" -0.03554184 0.50484657 ;
	setAttr ".uvtk[123]" -type "float2" -0.004148066 0.50448698 ;
	setAttr ".uvtk[126]" -type "float2" -0.0058085471 -0.36845422 ;
	setAttr ".uvtk[127]" -type "float2" -0.002967611 0.50484657 ;
	setAttr ".uvtk[128]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[129]" -type "float2" 0.015759408 0.50484657 ;
	setAttr ".uvtk[130]" -type "float2" 0.036446035 0.50484657 ;
	setAttr ".uvtk[131]" -type "float2" -0.23429713 -0.36601335 ;
	setAttr ".uvtk[132]" -type "float2" -0.23375705 0.50484657 ;
	setAttr ".uvtk[133]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[134]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[154]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[159]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[163]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[169]" -type "float2" 0.29294997 0.0067828801 ;
	setAttr ".uvtk[170]" -type "float2" 0.29294997 0.0067828801 ;
	setAttr ".uvtk[171]" -type "float2" 0.29295 0.0067828801 ;
	setAttr ".uvtk[172]" -type "float2" 0.29294997 0.0067828801 ;
	setAttr ".uvtk[173]" -type "float2" 0.29294997 0.0067828875 ;
	setAttr ".uvtk[174]" -type "float2" 0.29294997 0.0067828875 ;
	setAttr ".uvtk[175]" -type "float2" 0.32219061 0.035234854 ;
	setAttr ".uvtk[176]" -type "float2" 0.2873686 0.035234883 ;
	setAttr ".uvtk[177]" -type "float2" 0.28736788 -0.035107076 ;
	setAttr ".uvtk[178]" -type "float2" 0.32219064 0.0024551004 ;
	setAttr ".uvtk[179]" -type "float2" 0.25184104 0.035235174 ;
	setAttr ".uvtk[180]" -type "float2" 0.25183931 -0.035235167 ;
	setAttr ".uvtk[181]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[182]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[183]" -type "float2" -0.17177777 0.50520611 ;
	setAttr ".uvtk[184]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[185]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[186]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[187]" -type "float2" -0.11155258 0.50823402 ;
	setAttr ".uvtk[188]" -type "float2" 0 -0.74030066 ;
	setAttr ".uvtk[189]" -type "float2" 0 -0.74030066 ;
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 17 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId6.id" "WallShape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape.iog.og[1].gco";
connectAttr "groupParts4.og" "WallShape.i";
connectAttr "polyTweakUV6.uvtk[0]" "WallShape.uvst[0].uvtw";
connectAttr "groupId7.id" "WallShape.ciog.cog[1].cgid";
connectAttr "groupId3.id" "Wall1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall1Shape.iog.og[0].gco";
connectAttr "groupParts2.og" "Wall1Shape.i";
connectAttr "groupId4.id" "Wall1Shape.ciog.cog[0].cgid";
connectAttr "groupId1.id" "Wall2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall2Shape.iog.og[0].gco";
connectAttr "groupParts1.og" "Wall2Shape.i";
connectAttr "groupId2.id" "Wall2Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV4.out" "Outside_cornerShape.i";
connectAttr "groupId5.id" "Outside_cornerShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_cornerShape.iog.og[0].gco";
connectAttr "polyTweakUV4.uvtk[0]" "Outside_cornerShape.uvst[0].uvtw";
connectAttr "polyBoolean1.out" "polySurfaceShape3.i";
connectAttr "groupId8.id" "Wall5Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "Wall5Shape.iog.og[1].gco";
connectAttr "groupParts5.og" "Wall5Shape.i";
connectAttr "polyTweakUV5.uvtk[0]" "Wall5Shape.uvst[0].uvtw";
connectAttr "groupId9.id" "Wall5Shape.ciog.cog[1].cgid";
connectAttr "polyTweakUV7.out" "InsideCornerShape.i";
connectAttr "groupId10.id" "InsideCornerShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "InsideCornerShape.iog.og[0].gco";
connectAttr "polyTweakUV7.uvtk[0]" "InsideCornerShape.uvst[0].uvtw";
connectAttr "groupId13.id" "Wall7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall7Shape.iog.og[0].gco";
connectAttr "groupId14.id" "Wall7Shape.ciog.cog[0].cgid";
connectAttr "groupId11.id" "Wall8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall8Shape.iog.og[0].gco";
connectAttr "groupId12.id" "Wall8Shape.ciog.cog[0].cgid";
connectAttr "bend1.og[0]" "Wall9Shape.i";
connectAttr "groupId15.id" "Wall9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall9Shape.iog.og[0].gco";
connectAttr "polySplit14.out" "Wall9ShapeOrig.i";
connectAttr "bend1.msg" "bend1Handle.sml";
connectAttr "bend1.cur" "bend1HandleShape.cur";
connectAttr "bend1.lb" "bend1HandleShape.lb";
connectAttr "bend1.hb" "bend1HandleShape.hb";
connectAttr "groupId16.id" "OutsideBendShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "OutsideBendShape.iog.og[0].gco";
connectAttr "polyTweakUV18.out" "Wall10Shape.i";
connectAttr "groupId17.id" "Wall10Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall10Shape.iog.og[0].gco";
connectAttr "polyTweakUV18.uvtk[0]" "Wall10Shape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySurfaceShape1.o" "polyMergeVert1.ip";
connectAttr "Wall1Shape.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySurfaceShape2.o" "polyMergeVert2.ip";
connectAttr "Wall2Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "Wall2Shape.o" "polyUnite1.ip[0]";
connectAttr "Wall1Shape.o" "polyUnite1.ip[1]";
connectAttr "Wall2Shape.wm" "polyUnite1.im[0]";
connectAttr "Wall1Shape.wm" "polyUnite1.im[1]";
connectAttr "groupParts3.og" "polyMergeVert3.ip";
connectAttr "Outside_cornerShape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "Outside_cornerShape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "Outside_cornerShape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyPlanarProj1.ip";
connectAttr "Outside_cornerShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyPlanarProj2.ip";
connectAttr "Outside_cornerShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj3.ip";
connectAttr "Outside_cornerShape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyPlanarProj4.ip";
connectAttr "Outside_cornerShape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyTweakUV4.ip";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polySurfaceShape4.o" "polyCut1.ip";
connectAttr "Wall5Shape.wm" "polyCut1.mp";
connectAttr "polySurfaceShape5.o" "polyCut2.ip";
connectAttr "WallShape.wm" "polyCut2.mp";
connectAttr "polyCut1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "polyCut2.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent5.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polyTweakUV5.ip";
connectAttr "deleteComponent12.og" "polyTweakUV6.ip";
connectAttr "WallShape.o" "polyUnite3.ip[0]";
connectAttr "Wall5Shape.o" "polyUnite3.ip[1]";
connectAttr "WallShape.wm" "polyUnite3.im[0]";
connectAttr "Wall5Shape.wm" "polyUnite3.im[1]";
connectAttr "polyTweakUV6.out" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polyTweakUV5.out" "groupParts5.ig";
connectAttr "groupId8.id" "groupParts5.gi";
connectAttr "polyUnite3.out" "groupParts6.ig";
connectAttr "groupId10.id" "groupParts6.gi";
connectAttr "groupParts6.og" "polyMergeVert6.ip";
connectAttr "InsideCornerShape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyTweakUV7.ip";
connectAttr "Wall9ShapeOrig.w" "bend1.ip[0].ig";
connectAttr "Wall9ShapeOrig.o" "bend1.orggeom[0]";
connectAttr "bend1HandleShape.dd" "bend1.dd";
connectAttr "bend1Handle.wm" "bend1.ma";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyMergeVert7.out" "polySplit1.ip";
connectAttr "groupParts7.og" "polyMergeVert7.ip";
connectAttr "Wall9Shape.wm" "polyMergeVert7.mp";
connectAttr "polyUnite4.out" "groupParts7.ig";
connectAttr "groupId15.id" "groupParts7.gi";
connectAttr "Wall8Shape.o" "polyUnite4.ip[0]";
connectAttr "Wall7Shape.o" "polyUnite4.ip[1]";
connectAttr "Wall8Shape.wm" "polyUnite4.im[0]";
connectAttr "Wall7Shape.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape6.o" "groupParts8.ig";
connectAttr "groupId17.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polyPlanarProj5.ip";
connectAttr "Wall10Shape.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyLayoutUV3.ip";
connectAttr "polyLayoutUV3.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyPlanarProj6.ip";
connectAttr "Wall10Shape.wm" "polyPlanarProj6.mp";
connectAttr "polyPlanarProj6.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyStraightenUVBorder1.ip";
connectAttr "polyStraightenUVBorder1.out" "polyStraightenUVBorder2.ip";
connectAttr "polyStraightenUVBorder2.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyAutoProj1.ip";
connectAttr "Wall10Shape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyStraightenUVBorder3.ip";
connectAttr "polyStraightenUVBorder3.out" "polyLayoutUV4.ip";
connectAttr "polyLayoutUV4.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyPlanarProj7.ip";
connectAttr "Wall10Shape.wm" "polyPlanarProj7.mp";
connectAttr "polyPlanarProj7.out" "polyTweakUV18.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "FloorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall2Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall1Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_cornerShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall5Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall5Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "InsideCornerShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall8Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall7Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall9Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "OutsideBendShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall10Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
// End of Modular.ma
