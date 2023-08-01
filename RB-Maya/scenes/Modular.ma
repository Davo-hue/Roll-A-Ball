//Maya ASCII 2023 scene
//Name: Modular.ma
//Last modified: Tue, Aug 01, 2023 12:41:26 PM
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
fileInfo "UUID" "55FCEF6B-4609-8044-964D-398397F41145";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "35253E69-49E0-3F7B-C9F9-5C85A41F7A6B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.2274382235110748 2.6825178945698172 6.7158256717181466 ;
	setAttr ".r" -type "double3" -7.5383525338351154 5380.9999999971724 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A6FE12B0-48BD-D627-3D59-2191FF4F54CF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.5066402108362418;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.4515381809324026 0.5 -1.5 ;
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
	setAttr ".t" -type "double3" -1.7918281768806184 1.5862095000248697 1000.1178883697702 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "377944C6-40B2-E7A9-3D5B-249541E99713";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1003.9375980289686;
	setAttr ".ow" 8.5899596358176655;
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
	setAttr ".v" no;
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
createNode transform -n "Wall1";
	rename -uid "9FBE35A1-43E3-5539-C59B-E594128A51B6";
	setAttr ".v" no;
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
	setAttr ".v" no;
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
	setAttr ".v" no;
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
	setAttr ".v" no;
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
createNode transform -n "Wall12";
	rename -uid "D105EB55-4F45-26BD-4E41-3284D19EDFD7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.99999999999996136 0 -2.9999999999999973 ;
	setAttr ".r" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".rp" -type "double3" -1.0000000000000093 0 -2.9999999999999987 ;
	setAttr ".rpt" -type "double3" 1.9999999999999707 0 5.9999999999999964 ;
	setAttr ".sp" -type "double3" -1.0000000000000093 0 -2.9999999999999987 ;
createNode mesh -n "Wall12Shape" -p "Wall12";
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
createNode transform -n "InsideCorner";
	rename -uid "95E110A4-4713-0374-0F00-F19EB384E569";
	setAttr ".v" no;
createNode mesh -n "InsideCornerShape" -p "InsideCorner";
	rename -uid "37EBAC06-40F1-71F7-F070-8193A38F2994";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:1]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[2:3]" "f[13:14]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[8:9]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[15]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[12]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[6:7]" "f[10:11]";
	setAttr ".pv" -type "double2" 0.83022305369377136 0.17337648198008537 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.39556476 0.27336243
		 0.39548883 0.21537045 0.82238847 0.59022993 0.88824111 0.59040016 0.022394083 0.21585855
		 0.022551276 0.33597872 0.022632591 0.39816117 0.022469886 0.27379623 0.7567178 0.51971167
		 0.75687665 0.45835438 0.022795253 0.52252614 0.88858175 0.45869502 0.82272917 0.4585247
		 0.022876598 0.58470863 0.022995599 0.67569894 0.3960903 0.6751315 0.26961312 0.52220327
		 0.33288804 0.58430308 0.26945043 0.39783829 0.33256266 0.33557317 0.75899732 0.10212898
		 0.83023751 0.10214347 0.83020854 0.24462399 0.75896829 0.2446095 0.90147781 0.10215796
		 0.90146434 0.1685352 0.65107656 0.31684467 0.65115565 0.37730592 0.34845817 0.37770188
		 0.40884024 0.31716159 0.65127146 0.46577746 0.28850412 0.46596533 0.65076029 0.075000122
		 0.28799361 0.075670525 0.28791967 0.01914078 0.6506865 0.018666208 0.40868205 0.19623932
		 0.34814185 0.13585725 0.65083927 0.1354613 0.65091836 0.19592243;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  -0.048243761 0 0 -0.048243761 
		0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 
		0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 
		0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 0 0 -0.048243761 
		0 0 -0.048243761 0 0;
	setAttr -s 18 ".vt[0:17]"  0.048243761 0 -0.00080996752 0.048243761 0.46696702 -0.00080996752
		 -0.94999999 1 -3 -0.44999999 1 -3 0.050000001 0.46586883 -3 -0.94999999 0 -3 -0.44999999 0 -3
		 0.050000001 0 -3 -0.94991821 1 -1.0076868534 -0.44991824 1 -0.50362182 -0.94991827 0 -1.0076868534
		 -0.44991824 0 -0.50362182 -2.95307636 0 -1 -2.95307636 0 -0.5 -2.95307636 0 0 -2.95307636 1 -1
		 -2.95307636 1 -0.5 -2.95307636 0.46586883 0;
	setAttr -s 32 ".ed[0:31]"  2 3 0 3 4 0 5 6 0 6 7 0 0 1 0 1 4 0 2 5 0
		 3 6 1 4 7 0 5 10 0 6 11 1 7 0 0 8 2 0 9 3 1 9 8 0 1 9 0 11 10 0 0 11 0 10 8 0 12 13 0
		 13 14 0 15 16 0 16 17 0 12 15 0 13 16 1 14 17 0 15 8 0 16 9 1 17 1 0 0 14 0 10 12 0
		 11 13 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 7 -3 -7
		mu 0 4 3 2 12 11
		f 4 1 8 -4 -8
		mu 0 4 2 8 9 12
		f 4 2 10 16 -10
		mu 0 4 6 5 19 18
		f 4 3 11 17 -11
		mu 0 4 5 7 0 19
		f 4 -12 -9 -6 -5
		mu 0 4 0 7 4 1
		f 4 9 18 12 6
		mu 0 4 6 18 16 10
		f 4 -15 13 -1 -13
		mu 0 4 16 17 13 10
		f 4 -16 5 -2 -14
		mu 0 4 17 15 14 13
		f 4 19 24 -22 -24
		mu 0 4 20 21 22 23
		f 4 20 25 -23 -25
		mu 0 4 21 24 25 22
		f 4 21 27 14 -27
		mu 0 4 26 27 28 29
		f 4 22 28 15 -28
		mu 0 4 27 30 31 28
		f 4 -30 4 -29 -26
		mu 0 4 32 33 34 35
		f 4 -17 31 -20 -31
		mu 0 4 36 37 38 39
		f 4 -18 29 -21 -32
		mu 0 4 37 33 32 38
		f 4 -19 30 23 26
		mu 0 4 29 36 39 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall7";
	rename -uid "E67EF18D-402F-7A9D-B5A7-5D9BAC69EA73";
	setAttr ".v" no;
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
	setAttr ".v" no;
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
createNode transform -n "InnerCurve";
	rename -uid "CA01D658-4F38-E903-27DE-95A09CDE605C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.99496613116934896 0 0 ;
	setAttr ".r" -type "double3" -1 0 0 ;
	setAttr ".rp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
	setAttr ".rpt" -type "double3" 0 0.052420656696253738 0.0091843359312582824 ;
	setAttr ".sp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
createNode mesh -n "InnerCurveShape" -p "InnerCurve";
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
createNode mesh -n "InnerCurveShapeOrig" -p "InnerCurve";
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
createNode transform -n "OutsideCurve";
	rename -uid "7873D444-4BAE-BFDB-B088-DAAADE9598F4";
	setAttr ".v" no;
createNode mesh -n "OutsideCurveShape" -p "OutsideCurve";
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
createNode mesh -n "OutsideCurveShapeOrig" -p "OutsideCurve";
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
createNode transform -n "OuterCurve1";
	rename -uid "FBAA6797-44C0-FDEF-5293-5F9C9FAF3BE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.0050338688306510448 0 -0.014970988461553869 ;
	setAttr ".r" -type "double3" -1 0 0 ;
	setAttr ".rp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
	setAttr ".rpt" -type "double3" 0 0.052420656696253738 0.0091843359312582824 ;
	setAttr ".sp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
createNode mesh -n "OuterCurve1Shape" -p "OuterCurve1";
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
createNode mesh -n "OuterCurve1ShapeOrig" -p "OuterCurve1";
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
createNode mesh -n "polySurfaceShape6" -p "OuterCurve1";
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
createNode transform -n "Floor_HP";
	rename -uid "FE596347-469D-60E8-67DB-7FA1CDE9FD7A";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0 -0.0092160475075591108 ;
	setAttr ".sp" -type "double3" 0 0 -0.0092160475075591108 ;
createNode mesh -n "Floor_HPShape" -p "Floor_HP";
	rename -uid "9EDDFBAE-48A6-084A-54E9-18A05E2E5C2A";
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
createNode transform -n "Wall_HP";
	rename -uid "6B6832C3-4168-A046-E02F-FABDBDE5864F";
	setAttr ".v" no;
createNode mesh -n "Wall_HPShape" -p "Wall_HP";
	rename -uid "A147B4D8-46B6-92D8-D2AC-6C8B5F6B88A7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 12 "f[27:28]" "f[30:32]" "f[34]" "f[37]" "f[39]" "f[44:45]" "f[70]" "f[73:74]" "f[78]" "f[82]" "f[85:86]" "f[89]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 14 "f[0]" "f[3]" "f[6:7]" "f[9]" "f[13]" "f[36]" "f[38]" "f[46:47]" "f[51]" "f[53:54]" "f[57]" "f[80]" "f[83:84]" "f[88]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 14 "f[2]" "f[5]" "f[8]" "f[10:11]" "f[14]" "f[19]" "f[23]" "f[40:41]" "f[52]" "f[55:56]" "f[59]" "f[62]" "f[65:66]" "f[69]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[16]" "f[26]" "f[49:50]" "f[61]" "f[71]" "f[81]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[12]" "f[15]" "f[25]" "f[35]" "f[48]" "f[58]" "f[67]" "f[77]" "f[87]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 12 "f[17:18]" "f[20:22]" "f[24]" "f[29]" "f[33]" "f[42:43]" "f[60]" "f[63:64]" "f[68]" "f[72]" "f[75:76]" "f[79]";
	setAttr ".pv" -type "double2" 0.3264012336730957 0.40127460658550262 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 132 ".uvst[0].uvsp[0:131]" -type "float2" 0.63599259 0.31435734
		 0.68034166 0.023450229 0.63586819 0.21928447 0.63585716 0.21088222 0.8365975 0.023481984
		 0.63573301 0.11580931 0.63571745 0.10392672 0.68028063 0.32327408 0.8238439 0.32329684
		 0.83661538 0.31213215 0.98054719 0.15919508 0.63543266 0.016481685 0.016599018 0.32705021
		 0.016874243 0.53748083 0.016975412 0.63219327 0.016946102 0.64128482 0.017284626
		 0.78613234 0.016278833 0.017226923 0.01630816 0.10473693 0.016460193 0.22009455 0.98265481
		 0.36496508 0.82959282 0.36456919 0.016324759 0.1166195 0.81606567 0.3645342 0.66300374
		 0.36413831 0.8239094 0.023479449 0.98016548 0.023511222 0.63628244 0.53667045 0.63645339
		 0.63140041 0.63648313 0.64047438 0.63643867 0.78525788 0.98182803 0.68461621 0.82880676
		 0.68416297 0.81518799 0.67227268 0.662193 0.50879365 0.016584504 0.31516764 0.016449178
		 0.21169265 0.63600814 0.32623994 0.6362679 0.5247879 0.016858699 0.52559823 0.63601714
		 0.32029861 0.67692971 0.014477684 0.64193684 0.31661022 0.64194649 0.32397148 0.67137051
		 0.020034596 0.63587129 0.21508333 0.83674395 0.014510208 0.64179838 0.21077867 0.83025438
		 0.023441682 0.64180958 0.21937186 0.82376754 0.014507568 0.63574445 0.10987125 0.98913801
		 0.020148935 0.64166164 0.10614671 0.64167136 0.11354613 0.98357314 0.014540062 0.63629138
		 0.53073239 0.6713081 0.32668602 0.64221215 0.52704078 0.64222181 0.53440064 0.6768629
		 0.33224523 0.63647568 0.63593656 0.82337356 0.332275 0.64234871 0.6314224 0.83038318
		 0.32021743 0.64236122 0.64100242 0.83541942 0.32669306 0.6386891 0.78990132 0.63767129
		 0.01183226 0.98525131 0.16669865 0.64255118 0.78615886 0.64154315 0.01561683 0.98911023
		 0.15685655 0.01092036 0.52786696 0.99138379 0.68828094 0.016849957 0.53153634 0.98544478
		 0.6941908 0.010929988 0.53522676 0.82182276 0.68087906 0.011056908 0.63223612 0.82926506
		 0.69378698 0.016954213 0.6367383 0.81641817 0.68779832 0.011069457 0.64182961 0.65307045
		 0.50633556 0.010251304 0.016405039 0.011259336 0.78702176 0.65711474 0.51673561 0.014071533
		 0.012648049 0.015089312 0.79071701 0.01657496 0.32110894 0.9922294 0.36135027 0.010654763
		 0.3247973 0.010645136 0.31743604 0.98631912 0.35540935 0.01644605 0.21589361 0.82977062
		 0.35500443 0.010517971 0.22019759 0.82282835 0.36450711 0.010506728 0.21160454 0.81593633
		 0.35496867 0.016298441 0.11067502 0.6593976 0.35456377 0.01037946 0.11437201 0.010369778
		 0.1069724 0.65344787 0.36052713 0.64194167 0.32029086 0.67137164 0.014476553 0.83025527
		 0.014508888 0.64180398 0.21507557 0.64166653 0.10986024 0.98913914 0.014541194 0.64221698
		 0.53072143 0.67130697 0.3322441 0.83019072 0.3322764 0.64235461 0.63593686 0.64255607
		 0.78989625 0.9891091 0.16257921 0.6415382 0.011827201 0.010925174 0.53154731 0.99136847
		 0.69420612 0.011062831 0.63676262 0.82197762 0.69376814 0.65305483 0.51237607 0.011264175
		 0.79072201 0.010246396 0.012653053 0.010649949 0.32111669 0.99224472 0.35542467 0.82285398
		 0.35498655 0.010512352 0.21590137 0.010374635 0.110686 0.65346336 0.35454842;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".vt[0:91]"  -0.0082695447 0.0082695447 -2.971766 -0.028233992 0 -2.971766
		 -0.028233992 0.0082695447 -2.99173045 -0.028233992 0.028233992 -3 -0.0082695447 0.028233992 -2.99173045
		 0 0.028233992 -2.971766 -0.5 0 -2.971766 -0.51996446 0 -2.971766 -0.51996291 0.0082695447 -2.99173045
		 -0.51996446 0.028233992 -3 -0.5 0.028233992 -3 -0.48003554 0.028233992 -3 -0.48003563 0.0082695447 -2.99173045
		 -0.48003554 0 -2.971766 -0.99173045 0.0082695577 -2.97177744 -1 0.028233992 -2.971766
		 -0.99173045 0.028233992 -2.99173045 -0.971766 0.028233992 -3 -0.97174835 0.0082695754 -2.99173045
		 -0.971766 0 -2.971766 -0.0082695456 0.99173045 -2.97176313 0 0.971766 -2.971766 -0.0082695447 0.97176623 -2.99173045
		 -0.028233992 0.971766 -3 -0.028233992 0.99173045 -2.99173045 -0.028233992 1 -2.971766
		 -0.4982053 0.99590188 -2.97203708 -0.47840562 1 -2.97198224 -0.47921211 0.99173266 -2.99180198
		 -0.48002124 0.97174579 -3 -0.50065106 0.96168947 -3 -0.52020532 0.93660283 -3 -0.51716667 0.9703626 -2.99191356
		 -0.51471132 0.98428446 -2.97206998 -0.99609083 0.46432462 -2.97093773 -0.98491001 0.48198891 -2.9709568
		 -0.97891086 0.47461373 -2.99190569 -0.97305387 0.45522466 -3 -0.9905774 0.44506997 -2.99190664
		 -1 0.44378796 -2.9709568 -0.0082695456 0.9717682 -0.0082695447 0 0.971766 -0.028233992
		 -0.0082695447 0.99173045 -0.028235396 -0.028233992 1 -0.028233992 -0.028233992 0.99173045 -0.0082695447
		 -0.028233992 0.971766 0 -0.50060433 0.96159053 0 -0.47991547 0.97159618 0 -0.47911635 0.99168861 -0.0082299346
		 -0.4783223 1 -0.028125899 -0.49818364 0.995902 -0.028021269 -0.51471132 0.98428446 -0.02793009
		 -0.51716667 0.9703626 -0.0080864457 -0.52020532 0.93660283 0 -0.99056274 0.4452481 -0.0079534799
		 -0.97305387 0.45522466 0 -0.97902185 0.47447366 -0.0079545137 -0.98512024 0.48176432 -0.028638622
		 -0.99614525 0.46434614 -0.028649125 -1 0.44409558 -0.028638622 -0.0082695447 0.0082695447 -0.028233992
		 0 0.028233992 -0.028233992 -0.0082695447 0.028233992 -0.0082695447 -0.028233992 0.028233992 0
		 -0.028233992 0.0082695447 -0.0082695447 -0.028233992 0 -0.028233992 -0.5 0 -0.028233992
		 -0.48003554 0 -0.028233992 -0.48003629 0.0082695447 -0.0082695447 -0.48003554 0.028233992 0
		 -0.5 0.028233992 0 -0.51996446 0.028233992 0 -0.51996291 0.0082695447 -0.0082695447
		 -0.51996446 0 -0.028233992 -0.99173045 0.0082695484 -0.028228302 -0.971766 0 -0.028233992
		 -0.97174835 0.0082695754 -0.0082695223 -0.971766 0.028233992 0 -0.99173045 0.028233992 -0.0082695447
		 -1 0.028233992 -0.028233992 -0.011938782 0.011938782 -2.98806119 -0.49999759 0.0082695456 -2.99173045
		 -0.98806936 0.011939861 -2.98806143 -0.011938731 0.98806125 -2.98806 -0.49938005 0.98593748 -2.99183631
		 -0.99048293 0.46211132 -2.98815799 -0.011938778 0.98806196 -0.011939396 -0.49934497 0.98590797 -0.0081832772
		 -0.99051708 0.46212482 -0.011645727 -0.011938782 0.011938782 -0.011938782 -0.49999791 0.0082695456 -0.0082695438
		 -0.98806947 0.011939771 -0.011940899;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  1 0 1 0 60 0 60 65 1 65 1 1 0 5 1 5 61 1 61 60 1 3 2 1
		 2 12 0 12 11 1 11 3 1 2 1 1 1 13 1 13 12 1 5 4 1 4 22 0 22 21 1 21 5 1 4 3 1 3 23 1
		 23 22 1 7 6 1 6 66 1 66 73 1 73 7 1 6 13 1 13 67 1 67 66 1 9 8 1 8 18 0 18 17 1 17 9 1
		 8 7 1 7 19 1 19 18 1 11 10 1 10 30 1 30 29 1 29 11 1 10 9 1 9 31 1 31 30 1 15 14 1
		 14 74 0 74 79 1 79 15 1 14 19 1 19 75 1 75 74 1 17 16 1 16 38 0 38 37 1 37 17 1 16 15 1
		 15 39 1 39 38 1 21 20 1 20 42 0 42 41 1 41 21 1 20 25 1 25 43 1 43 42 1 25 24 1 24 28 0
		 28 27 1 27 25 1 24 23 1 23 29 1 29 28 1 27 26 1 26 50 1 50 49 1 49 27 1 26 33 1 33 51 1
		 51 50 1 33 32 1 32 36 0 36 35 1 35 33 1 32 31 1 31 37 1 37 36 1 35 34 1 34 58 1 58 57 1
		 57 35 1 34 39 1 39 59 1 59 58 1 41 40 1 40 62 0 62 61 1 61 41 1 40 45 1 45 63 1 63 62 1
		 45 44 1 44 48 0 48 47 1 47 45 1 44 43 1 43 49 1 49 48 1 47 46 1 46 70 1 70 69 1 69 47 1
		 46 53 1 53 71 1 71 70 1 53 52 1 52 56 0 56 55 1 55 53 1 52 51 1 51 57 1 57 56 1 55 54 1
		 54 78 0 78 77 1 77 55 1 54 59 1 59 79 1 79 78 1 65 64 1 64 68 0 68 67 1 67 65 1 64 63 1
		 63 69 1 69 68 1 73 72 1 72 76 0 76 75 1 75 73 1 72 71 1 71 77 1 77 76 1 0 80 0 80 4 0
		 2 80 0 6 81 1 81 12 0 8 81 0 10 81 1 14 82 0 82 18 0 16 82 0 20 83 0 83 24 0 22 83 0
		 26 84 1 84 32 0 28 84 0 30 84 1 34 85 1 85 38 0 36 85 0 40 86 0 86 44 0 42 86 0 46 87 1
		 87 52 0 48 87 0;
	setAttr ".ed[166:179]" 50 87 1 54 88 0 88 58 1 56 88 0 60 89 0 89 64 0 62 89 0
		 66 90 1 90 72 0 68 90 0 70 90 1 74 91 0 91 78 0 76 91 0;
	setAttr -s 90 -ch 360 ".fc[0:89]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 40 90 35
		f 4 4 5 6 -2
		mu 0 4 40 37 12 90
		f 4 7 8 9 10
		mu 0 4 1 41 50 25
		f 4 11 12 13 -9
		mu 0 4 42 0 2 49
		f 4 14 15 16 17
		mu 0 4 37 43 58 38
		f 4 18 19 20 -16
		mu 0 4 44 1 7 57
		f 4 21 22 23 24
		mu 0 4 3 45 95 36
		f 4 25 26 27 -23
		mu 0 4 45 2 19 95
		f 4 28 29 30 31
		mu 0 4 4 46 55 26
		f 4 32 33 34 -30
		mu 0 4 47 3 5 54
		f 4 35 36 37 38
		mu 0 4 25 48 64 8
		f 4 39 40 41 -37
		mu 0 4 48 4 9 64
		f 4 42 43 44 45
		mu 0 4 6 51 101 18
		f 4 46 47 48 -44
		mu 0 4 51 5 22 101
		f 4 49 50 51 52
		mu 0 4 26 52 72 10
		f 4 53 54 55 -51
		mu 0 4 53 6 11 71
		f 4 56 57 58 59
		mu 0 4 38 56 75 39
		f 4 60 61 62 -58
		mu 0 4 56 27 13 75
		f 4 63 64 65 66
		mu 0 4 27 59 63 28
		f 4 67 68 69 -65
		mu 0 4 60 7 8 62
		f 4 70 71 72 73
		mu 0 4 28 61 81 14
		f 4 74 75 76 -72
		mu 0 4 61 29 15 81
		f 4 77 78 79 80
		mu 0 4 29 65 70 30
		f 4 81 82 83 -79
		mu 0 4 66 9 10 69
		f 4 84 85 86 87
		mu 0 4 30 67 89 16
		f 4 88 89 90 -86
		mu 0 4 68 11 17 88
		f 4 91 92 93 94
		mu 0 4 39 73 92 12
		f 4 95 96 97 -93
		mu 0 4 74 31 20 91
		f 4 98 99 100 101
		mu 0 4 31 76 80 32
		f 4 102 103 104 -100
		mu 0 4 77 13 14 79
		f 4 105 106 107 108
		mu 0 4 32 78 98 21
		f 4 109 110 111 -107
		mu 0 4 78 33 23 98
		f 4 112 113 114 115
		mu 0 4 33 82 87 34
		f 4 116 117 118 -114
		mu 0 4 83 15 16 86
		f 4 119 120 121 122
		mu 0 4 34 84 105 24
		f 4 123 124 125 -121
		mu 0 4 85 17 18 104
		f 4 126 127 128 129
		mu 0 4 35 93 97 19
		f 4 130 131 132 -128
		mu 0 4 94 20 21 96
		f 4 133 134 135 136
		mu 0 4 36 99 103 22
		f 4 137 138 139 -135
		mu 0 4 100 23 24 102
		f 4 -11 -39 -69 -20
		mu 0 4 1 25 8 7
		f 4 -32 -53 -83 -41
		mu 0 4 4 26 10 9
		f 4 -67 -74 -104 -62
		mu 0 4 27 28 14 13
		f 4 -81 -88 -118 -76
		mu 0 4 29 30 16 15
		f 4 -102 -109 -132 -97
		mu 0 4 31 32 21 20
		f 4 -116 -123 -139 -111
		mu 0 4 33 34 24 23
		f 4 -130 -27 -13 -4
		mu 0 4 35 19 2 0
		f 4 -137 -48 -34 -25
		mu 0 4 36 22 5 3
		f 4 -46 -125 -90 -55
		mu 0 4 6 18 17 11
		f 4 -6 -18 -60 -95
		mu 0 4 12 37 38 39
		f 4 -15 -5 140 141
		mu 0 4 43 37 40 106
		f 4 -1 -12 142 -141
		mu 0 4 40 0 42 106
		f 4 -8 -19 -142 -143
		mu 0 4 41 1 44 107
		f 4 -14 -26 143 144
		mu 0 4 49 2 45 109
		f 4 -22 -33 145 -144
		mu 0 4 45 3 47 109
		f 4 -29 -40 146 -146
		mu 0 4 46 4 48 108
		f 4 -36 -10 -145 -147
		mu 0 4 48 25 50 108
		f 4 -35 -47 147 148
		mu 0 4 54 5 51 110
		f 4 -43 -54 149 -148
		mu 0 4 51 6 53 110
		f 4 -50 -31 -149 -150
		mu 0 4 52 26 55 111
		f 4 -64 -61 150 151
		mu 0 4 59 27 56 112
		f 4 -57 -17 152 -151
		mu 0 4 56 38 58 112
		f 4 -21 -68 -152 -153
		mu 0 4 57 7 60 113
		f 4 -78 -75 153 154
		mu 0 4 65 29 61 115
		f 4 -71 -66 155 -154
		mu 0 4 61 28 63 115
		f 4 -70 -38 156 -156
		mu 0 4 62 8 64 114
		f 4 -42 -82 -155 -157
		mu 0 4 64 9 66 114
		f 4 -56 -89 157 158
		mu 0 4 71 11 68 118
		f 4 -85 -80 159 -158
		mu 0 4 67 30 70 116
		f 4 -84 -52 -159 -160
		mu 0 4 69 10 72 117
		f 4 -99 -96 160 161
		mu 0 4 76 31 74 120
		f 4 -92 -59 162 -161
		mu 0 4 73 39 75 119
		f 4 -63 -103 -162 -163
		mu 0 4 75 13 77 119
		f 4 -113 -110 163 164
		mu 0 4 82 33 78 122
		f 4 -106 -101 165 -164
		mu 0 4 78 32 80 122
		f 4 -105 -73 166 -166
		mu 0 4 79 14 81 121
		f 4 -77 -117 -165 -167
		mu 0 4 81 15 83 121
		f 4 -91 -124 167 168
		mu 0 4 88 17 85 125
		f 4 -120 -115 169 -168
		mu 0 4 84 34 87 123
		f 4 -119 -87 -169 -170
		mu 0 4 86 16 89 124
		f 4 -127 -3 170 171
		mu 0 4 93 35 90 126
		f 4 -7 -94 172 -171
		mu 0 4 90 12 92 126
		f 4 -98 -131 -172 -173
		mu 0 4 91 20 94 127
		f 4 -134 -24 173 174
		mu 0 4 99 36 95 129
		f 4 -28 -129 175 -174
		mu 0 4 95 19 97 129
		f 4 -133 -108 176 -176
		mu 0 4 96 21 98 128
		f 4 -112 -138 -175 -177
		mu 0 4 98 23 100 128
		f 4 -126 -45 177 178
		mu 0 4 104 18 101 130
		f 4 -49 -136 179 -178
		mu 0 4 101 22 103 130
		f 4 -140 -122 -179 -180
		mu 0 4 102 24 105 131;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "OutsideCorner_HP";
	rename -uid "108C00C3-4CE5-9411-727A-CA86436507CB";
	setAttr ".v" no;
createNode mesh -n "OutsideCorner_HPShape" -p "OutsideCorner_HP";
	rename -uid "E2FA5BF8-4F74-E752-FC1F-DBB6CE24EC95";
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
createNode mesh -n "polySurfaceShape7" -p "OutsideCorner_HP";
	rename -uid "B2677A85-4D20-007C-21C7-29ADA5613337";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.77785921096801758 0.49994486570358276 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.29584432 0.037838623
		 0.22512387 0.037838623 0.5509758 0.86416018 0.43728518 0.037838623 0.15440336 0.037838623
		 0.088510484 0.037838623 0.088510484 0.46216142 0.22512387 0.46216142 0.29584432 0.46216142
		 0.15440336 0.46216142 0.937132 0.043113615 0.937132 0.14273557 0.72332579 0.043113615
		 0.72332579 0.25689724 0.83022302 0.25689724 0.83022302 0.043113615 0.43728518 0.46216142
		 0.65629447 0.86416018 0.86010063 0.31490403 0.9784534 0.31697732 0.43838978 0.48515391
		 0.54932415 0.43394679 0.65915561 0.3990007 0.43838978 0.91484606 0.72240996 0.69164807
		 0.83180666 0.63670707 0.94884902 0.94911373 0.84986329 0.94911373 0.84986329 0.75101429
		 0.94884902 0.75101429 0.75101435 0.84298694 0.75101435 0.75101429 0.29515904 0.91484606
		 0.22354367 0.91484606 0.22354367 0.48515391 0.29515904 0.48515391 0.15192828 0.91484606
		 0.15192828 0.48515391 0.085201591 0.91484606 0.085201591 0.48515391 0.97277308 0.64123392
		 0.85347414 0.69316912 0.83330846 0.30835152 0.72409439 0.30824167 0.65566933 0.5490607
		 0.5509758 0.5040139 0.66730118 0.10910738 0.55870378 0.10292529;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -1 0 0 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.46586883 0
		 -1 1 -4 -0.50296825 1 -3.4996841 0 0.46586883 -3 -1 0 -4 -0.5003264 0 -3.4996841
		 0 0 -3 3 1 -4 3 1 -3.5 3 0.46586883 -3 3 0 -4 3 0 -3.5 3 0 -3;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 8 11 0 9 0 0 10 1 1 11 2 0 12 13 0
		 13 14 0 15 16 0 16 17 0 6 12 0 7 13 1 8 14 0 12 15 0 13 16 1 14 17 0 15 9 0 16 10 1
		 17 11 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 12 15 14 13
		f 4 1 10 -4 -10
		mu 0 4 15 10 11 14
		f 4 2 12 -5 -12
		mu 0 4 2 17 44 45
		f 4 3 13 -6 -13
		mu 0 4 18 19 40 41
		f 4 6 17 -1 -17
		mu 0 4 8 7 1 0
		f 4 7 18 -2 -18
		mu 0 4 7 9 4 1
		f 4 -19 -16 -14 -11
		mu 0 4 4 9 6 5
		f 4 16 8 11 14
		mu 0 4 8 0 3 16
		f 4 4 24 -20 -24
		mu 0 4 21 22 46 47
		f 4 5 25 -21 -25
		mu 0 4 24 25 42 43
		f 4 19 27 -22 -27
		mu 0 4 26 27 28 29
		f 4 20 28 -23 -28
		mu 0 4 27 30 31 28
		f 4 21 30 -7 -30
		mu 0 4 32 33 34 35
		f 4 22 31 -8 -31
		mu 0 4 33 36 37 34
		f 4 -32 -29 -26 15
		mu 0 4 37 36 38 39
		f 4 29 -15 23 26
		mu 0 4 32 35 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "OutsideCurve_HP";
	rename -uid "2CFE5206-4C5D-D9B0-8CE7-9C9000357543";
	setAttr ".v" no;
createNode mesh -n "OutsideCurve_HPShape" -p "OutsideCurve_HP";
	rename -uid "48B221FC-4193-5DB3-9922-B7A8E467339D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:359]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.17234243452548981 0.85207003355026245 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 436 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.1529797 0.82551694 0.94372046
		 0.97218239 0.15319946 0.8834967 0.81812024 0.9650054 0.15310642 0.53519154 0.94435203
		 0.72844636 0.82721347 0.72814345 0.81877244 0.72812164 0.70078188 0.72781646 0.50271195
		 0.8195371 0.49988863 0.20204602 0.7283262 0.071449071 0.49950084 0.14408329 0.83376485
		 0.071470074 0.49914759 0.084576547 0.7284137 0.27515531 0.82668728 0.27531236 0.83377099
		 0.26921642 0.93240738 0.16424865 0.1501265 0.20799088 0.50249147 0.82500851 0.45886683
		 0.87894785 0.5027951 0.88312763 0.45884725 0.96493274 0.82660389 0.9718523 0.7000891
		 0.83871216 0.45829397 0.70211059 0.50248754 0.64798522 0.45831051 0.64417022 0.50241178
		 0.59003192 0.45834982 0.5846467 0.50233936 0.53466421 0.45865709 0.81959349 0.50256538
		 0.70752984 0.8267225 0.071468636 0.93221927 0.071432665 0.50004935 0.32501513 0.50006229
		 0.37891942 0.45875117 0.37894571 0.49994615 0.38311833 0.4995788 0.46482676 0.45884722
		 0.46492463 0.45849729 0.20210069 0.45837218 0.14414194 0.45834982 0.084629953 0.45865709
		 0.31958914 0.50014484 0.20752771 0.50029141 0.31953469 0.19418137 0.20793274 0.15027301
		 0.3199982 0.1501193 0.20248507 0.19426069 0.14842418 0.15004353 0.1445563 0.19425863
		 0.090488955 0.19395523 0.035064638 0.14996564 0.085048467 0.19441107 0.38353312 0.1504631
		 0.46533149 0.19409977 0.32543048 0.15050434 0.37932855 0.15257891 0.70797813 0.19418135
		 0.70792377 0.152733 0.81998515 0.15281032 0.70246381 0.15282054 0.64853978 0.19408198
		 0.64841676 0.15300269 0.64461166 0.15312316 0.59040946 0.1939932 0.59035915 0.19395524
		 0.53508216 0.19441098 0.88346064 0.19454299 0.82543641 0.28243762 0.81981587 0.32634592
		 0.70775157 0.326397 0.82512099 0.28253907 0.87929851 0.32657561 0.88331175 0.28262776
		 0.96519053 0.32611987 0.53490353 0.28213033 0.58488858 0.28221342 0.64443052 0.32618877
		 0.5902251 0.28224045 0.70248181 0.32630643 0.64813942 0.32649249 0.81975865 0.37040079
		 0.70769447 0.32623327 0.70239884 0.37039044 0.64811349 0.32625175 0.64436191 0.37028119
		 0.59017879 0.37017477 0.53484267 0.3261852 0.58482969 0.3706305 0.8832674 0.32668263
		 0.9651258 0.37041137 0.825082 0.32662493 0.87921739 0.28243762 0.31982252 0.32634592
		 0.207757 0.32633448 0.32528004 0.28266865 0.37912503 0.32657567 0.38338196 0.2826277
		 0.46514729 0.32611984 0.034887761 0.2821303 0.084865667 0.28201133 0.14436062 0.32643503
		 0.090355292 0.28207082 0.20228623 0.32639006 0.14826085 0.32649249 0.31976396 0.37040079
		 0.2076986 0.32616773 0.20222913 0.37041384 0.14819437 0.32608423 0.14429811 0.3704567
		 0.090295695 0.37017474 0.034827564 0.32618517 0.084807083 0.37063053 0.38331863 0.3266826
		 0.46508861 0.37044626 0.32521626 0.32669875 0.37907013 0.41460222 0.31964687 0.45851052
		 0.20758216 0.4143917 0.20213854 0.45844898 0.14804772 0.41426891 0.14418834 0.45847735
		 0.090151131 0.45828447 0.034714129 0.41429493 0.084688842 0.45874029 0.38319457 0.41479236
		 0.46497756 0.45865715 0.32506865 0.41473639 0.37898335 0.37054735 0.31970564 0.41445565
		 0.20763992 0.41455659 0.32514349 0.37071857 0.37902722 0.41468543 0.38326049 0.37073749
		 0.46503383 0.4142296 0.034771577 0.37024003 0.084747739 0.37017128 0.14424045 0.41446498
		 0.09022706 0.37027729 0.20218006 0.41443279 0.14812265 0.23838274 0.31988114 0.28229105
		 0.20781554 0.23799099 0.20235066 0.28235781 0.14832097 0.23795472 0.14442672 0.28239608
		 0.090407655 0.28206494 0.034945559 0.23807541 0.084927127 0.28252083 0.38343745 0.23857284
		 0.46520773 0.28223893 0.32533622 0.23862651 0.37918693 0.19432786 0.31993949 0.2382362
		 0.20787407 0.23816068 0.32538578 0.19457114 0.3792612 0.23846595 0.38348973 0.19451798
		 0.46527165 0.23801009 0.035004944 0.19402052 0.084987685 0.19391437 0.14449491 0.2383371
		 0.090450272 0.19392982 0.20242052 0.238315 0.14837514 0.41460222 0.81964427 0.45851052
		 0.70758682 0.41425258 0.7021991 0.45856068 0.64805108 0.41429785 0.64423603 0.45849627
		 0.59010106 0.4582845 0.53472376 0.41429496 0.58470905 0.45874026 0.88317615 0.41479239
		 0.96499455 0.45843917 0.82504129 0.41478229 0.87904847 0.37054735 0.81970125 0.41445565
		 0.70763713 0.41441295 0.82505763 0.37070379 0.87914211 0.4146854 0.88322508 0.37073752
		 0.9650594 0.41422963 0.53478307 0.37024006 0.58476955 0.37028241 0.64429969 0.41438627
		 0.5901373 0.37023443 0.70230246 0.41448122 0.64809114 0.23838273 0.81987333 0.28229105
		 0.70780903 0.23834452 0.70253497 0.28223151 0.64817536 0.23817514 0.64449817 0.28210366
		 0.59026653 0.28206497 0.53496373 0.23807544 0.58494836 0.28252071 0.88335705 0.2385729
		 0.96525276 0.28240007 0.82515866 0.23845558 0.87935549 0.19432786 0.81993079 0.2382362
		 0.70786625 0.23850486 0.82522094 0.19438234 0.87927943 0.23846585 0.88340658 0.19451803
		 0.96531218 0.23801011 0.53502327 0.19402055 0.58500677 0.1941195 0.64456034 0.23803611
		 0.5903092 0.19438174 0.70243531 0.23815328 0.64823568 0.50278962 0.87889278 0.50290209
		 0.96487051 0.15311366 0.58506054 0.49902624 0.034721442 0.15019554 0.14846936 0.15016344
		 0.09052486 0.15310012 0.87927675 0.15368606 0.96531266 0.50232524 0.70203346 0.50232702
		 0.64410245 0.50240469 0.5845874 0.15028016 0.32547837 0.15035617 0.38358867 0.14990035
		 0.035125293 0.49973729 0.14798769 0.49915826 0.090049841 0.15281081 0.82274985 0.94610101
		 0.97814304 0.1502789 0.82450467 0.15027437 0.82104039 0.9499746 0.9744786 0.153136
		 0.88137084 0.81882423 0.97425932 0.15035634 0.88370633 0.82228881 0.96998179 0.15035059
		 0.87930405 0.8268531 0.97783476 0.15199132 0.53303677 0.15255953 0.96741879 0.69468296
		 0.83719325 0.14989987 0.5347631 0.15046364 0.96575016 0.69715196 0.84360558 0.15264872
		 0.70522231;
	setAttr ".uvst[0].uvsp[250:435]" 0.95061684 0.72618186 0.15012512 0.70693743
		 0.15012059 0.70347446 0.94676417 0.72249818 0.15288174 0.64657295 0.82731467 0.72218925
		 0.15004881 0.64858234 0.82299048 0.7281099 0.15004358 0.64458632 0.81861913 0.72216672
		 0.15307711 0.58773768 0.69860226 0.7218563 0.14997138 0.58943343 0.14996698 0.5860728
		 0.69497198 0.72553927 0.15027657 0.32272893 0.50271553 0.82226783 0.45866066 0.82232547
		 0.15035342 0.38146877 0.50279236 0.88100773 0.45873749 0.88106537 0.15046583 0.46742153
		 0.14989762 0.03303951 0.50233662 0.53257847 0.50290483 0.96696055 0.45828176 0.53263611
		 0.45884997 0.96701819 0.19417778 0.70519161 0.19410095 0.64645177 0.19402409 0.58771193
		 0.5000875 0.20478764 0.72638321 0.066468969 0.5025596 0.20312014 0.50256401 0.20647961
		 0.72334689 0.069546409 0.49964947 0.14603642 0.83383417 0.066490836 0.50248241 0.14407599
		 0.83024329 0.071451493 0.50248754 0.14802122 0.82665443 0.066489376 0.49920633 0.087313518
		 0.93714148 0.06959033 0.50240606 0.085616931 0.50241047 0.089000568 0.9340629 0.066511214
		 0.50023985 0.32227403 0.72330469 0.27715006 0.50271326 0.32055736 0.50271773 0.32395482
		 0.72637409 0.28026348 0.50001699 0.38099903 0.82643205 0.28028384 0.50278968 0.3789365
		 0.83031875 0.27362642 0.5027954 0.38332582 0.83308488 0.27720544 0.50074244 0.46696338
		 0.50017422 0.032581281 0.93498456 0.16839428 0.50290257 0.46524242 0.50233889 0.034308657
		 0.93712252 0.16296335 0.45866066 0.32232547 0.45873749 0.38106537 0.45828176 0.032636084
		 0.45884997 0.46701819 0.50256181 0.70478821 0.15012291 0.20524926 0.19417778 0.20519164
		 0.50248498 0.64604837 0.1500461 0.14650942 0.19410095 0.1464518 0.50240827 0.58730853
		 0.14996921 0.087769568 0.19402409 0.087711945 0.32649606 0.32249838 0.2824412 0.32255602
		 0.32634234 0.20501874 0.37039721 0.20496112 0.32626554 0.1462789 0.37032038 0.14622128
		 0.32618874 0.087539062 0.37024361 0.087481439 0.32668534 0.46719104 0.32611713 0.032808982
		 0.28206223 0.032866612 0.28263044 0.46724868 0.3265729 0.38123825 0.28251803 0.38129586
		 0.32649606 0.82249838 0.2824412 0.82255602 0.32634234 0.70501876 0.37039721 0.70496112
		 0.32626554 0.64627886 0.37032038 0.64622122 0.32618874 0.58753908 0.37024361 0.58748144
		 0.32668534 0.96719104 0.32611713 0.53280902 0.28206223 0.53286666 0.28263044 0.96724868
		 0.3265729 0.88123822 0.28251803 0.88129586 0.23823263 0.70513403 0.28228748 0.7050764
		 0.23838632 0.82261366 0.19433144 0.82267129 0.23846316 0.8813535 0.1944083 0.88141114
		 0.23857558 0.96730626 0.23800737 0.53292429 0.1939525 0.53298187 0.19452071 0.96736389
		 0.23807898 0.58765435 0.28213388 0.58759671 0.23815581 0.64639413 0.28221068 0.6463365
		 0.4146058 0.82238311 0.37055093 0.82244074 0.41445208 0.70490348 0.45850694 0.70484585
		 0.41437525 0.64616358 0.45843011 0.646106 0.4142985 0.5874238 0.4583534 0.58736616
		 0.4147951 0.96707582 0.41422689 0.53269374 0.37017202 0.53275138 0.37074023 0.9671334
		 0.41468263 0.88112295 0.37062776 0.88118058 0.23823263 0.205134 0.28228748 0.20507637
		 0.23838632 0.32261366 0.19433144 0.32267129 0.23846316 0.3813535 0.1944083 0.38141114
		 0.23857558 0.46730629 0.23800737 0.032924246 0.1939525 0.03298188 0.19452071 0.46736389
		 0.23807898 0.087654315 0.28213388 0.087596685 0.23815581 0.14639416 0.28221068 0.14633653
		 0.4146058 0.32238311 0.37055093 0.32244074 0.41445208 0.20490348 0.45850694 0.20484585
		 0.41437525 0.14616364 0.45843011 0.146106 0.4142985 0.087423809 0.4583534 0.087366179
		 0.4147951 0.46707579 0.41422689 0.032693718 0.37017202 0.032751352 0.37074023 0.4671334
		 0.41468263 0.38112301 0.37062776 0.38118064 0.15027657 0.82272893 0.94996512 0.97815305
		 0.82214254 0.9778226 0.15035342 0.88146877 0.14989762 0.53303951 0.69467324 0.84094387
		 0.15046583 0.96742153 0.15012291 0.70524925 0.95062631 0.72250819 0.82280385 0.72217757
		 0.1500461 0.64650941 0.14996921 0.58776957 0.69498152 0.72184694 0.50256181 0.20478822
		 0.72334754 0.066468351 0.83024472 0.066490106 0.50248498 0.14604838 0.50240827 0.087308556
		 0.93714207 0.06651184 0.50271553 0.32226783 0.72330403 0.28026286 0.83020133 0.28028461
		 0.50279236 0.38100773 0.50290483 0.46696055 0.93712187 0.16611205 0.50233662 0.032578453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 362 ".vt";
	setAttr ".vt[0:165]"  2.97666883 0.99316299 -3.99469042 2.97667193 1 -3.97822046
		 2.9931674 0.99317795 -3.97821784 3 0.97670805 -3.97818494 2.9931674 0.97669119 -3.99465466
		 2.97667193 0.97667199 -4.0014762878 2.97708821 0.99671823 -3.52638578 2.97725368 0.9873817 -3.51258826
		 2.99336123 0.97644305 -3.51131105 3 0.94990426 -3.50915885 3 0.96903855 -3.52553582
		 3 0.97660065 -3.54242349 2.99323177 0.99315214 -3.54278398 2.97690845 1 -3.5427177
		 2.97649193 0.46449807 -3.0025343895 2.97656345 0.44751516 -2.99949384 2.99349785 0.44875607 -3.0076212883
		 3 0.45708445 -3.022158384 2.99344134 0.4729037 -3.017204285 2.97643924 0.47894755 -3.011948347
		 2.97674489 0.0068071093 -3.9916656 2.97674417 0.023255819 -3.99852371 2.99318862 0.023273671 -3.99170136
		 3 0.023291551 -3.97523141 2.99318862 0.0068219556 -3.97519851 2.97674417 0 -3.97519588
		 2.97670794 0 -3.52172399 2.97672176 0 -3.53820848 2.99318218 0.0068218578 -3.53890753
		 3 0.023291931 -3.53924084 3 0.023291931 -3.52277088 3 0.023291931 -3.50630093 2.99317431 0.006821848 -3.5059545
		 2.97669435 0 -3.50523949 2.97698593 0.006712243 -3.016286373 2.97696924 0 -3.032768488
		 2.99325609 0.0068248222 -3.03339839 3 0.023291931 -3.033400297 2.9933145 0.023158044 -3.016609669
		 2.97698736 0.023024846 -3.0091948509 0.18180811 1 -2.91952181 0.17013019 0.9931975 -2.93116546
		 0.16523974 0.97675568 -2.93600059 0.44756046 0.97674501 -3.1909163 0.45195347 0.99319339 -3.18563628
		 0.4624331 1 -3.17290592 0.49905488 0.98682642 -2.54957676 0.48979166 0.9965632 -2.55977082
		 0.47826585 1 -2.5716157 0.74461895 0.98688304 -2.77030325 0.73640853 0.99657941 -2.78138399
		 0.72620219 1 -2.79437637 0.8165617 0.44811463 -2.18232059 0.81450921 0.46463302 -2.18449974
		 0.8086459 0.47885689 -2.1912179 1.027531862 0.44809863 -2.37184787 1.025706291 0.4646208 -2.37420321
		 1.020494819 0.47882828 -2.38147211 2.58223081 0.023256175 -3.99853611 2.58239365 0.0068072444 -3.99167824
		 2.5827868 0 -3.97520828 2.63141012 0 -3.49099731 2.63001585 0 -3.50742364 2.62862158 0 -3.52384996
		 2.677948 0.023026681 -2.99732661 2.67740226 0.0067131342 -3.0043947697 2.67607641 0 -3.020824909
		 -0.99202609 0.006822045 -0.023286248 -0.97553438 0 -0.0233189 -0.97636127 0.0068220799 -0.0068477467
		 -0.97670805 0.023291931 -2.5662279e-05 -0.9927671 0.023291951 -0.0068939663 -0.99885714 0.023291931 -0.023263874
		 -0.49891129 0 -0.023849897 -0.48242188 0 -0.023891812 -0.48320025 0.0068212058 -0.0074089798
		 -0.48353016 0.023289962 -0.00057975185 -0.5 0.023289962 -0.00055427756 -0.5164699 0.023289962 -0.00052880321
		 -0.51615822 0.0068212436 -0.0073485165 -0.51540071 0 -0.023807982 -0.0063196211 0.0068218731 -0.024805089
		 0.00050433463 0.023291457 -0.024789108 -0.0065629985 0.023153245 -0.0082763387 -0.023021311 0.023021316 -0.001457726
		 -0.02302227 0.0067400094 -0.0083081191 -0.022793449 0 -0.024792831 -0.99202621 0.99317795 -0.023285832
		 -0.99885714 0.97670805 -0.023263874 -0.99259055 0.97640145 -0.0068895863 -0.97610509 0.97610509 -1.8252911e-05
		 -0.97605515 0.99300259 -0.0068450593 -0.9755348 1 -0.023310626 -0.50038981 0.99661124 -0.02324954
		 -0.51671863 1 -0.023444826 -0.51680338 0.99319583 -0.0071355207 -0.51644152 0.97674626 -0.00037331105
		 -0.49941042 0.96861309 -0.00038614776 -0.48331383 0.94822639 -0.00039740972 -0.48550701 0.97568655 -0.0070128152
		 -0.48676571 0.98700428 -0.023068262 -0.0027076029 0.46458811 -0.024398733 -0.011922342 0.47915548 -0.024409959
		 -0.017177261 0.47308624 -0.0072367443 -0.022053245 0.4571574 -0.00066616485 -0.0075507564 0.44874728 -0.0072353096
		 0.00051371584 0.44766435 -0.024379065 -0.97919935 0.97670805 -0.42340648 -0.97240204 0.99317795 -0.42273605
		 -0.9559918 1 -0.42111748 -0.4703103 0.9867686 -0.37171146 -0.48394743 0.99654698 -0.37320012
		 -0.50036389 1 -0.3747969 0.0068308096 0.44818026 -0.31548584 0.0037456953 0.46465755 -0.31580728
		 -0.0050860359 0.47887856 -0.31683424 0.17755751 0 -2.92076683 0.16589464 0.0068408628 -2.93242741
		 0.16111714 0.023336874 -2.93724513 -0.094518058 0.023332451 -2.65237403 -0.089247912 0.0068387599 -2.64808989
		 -0.076421 0 -2.63772249 0.49768761 0 -2.54866886 0.48599118 0 -2.56029868 0.47429475 0 -2.5719285
		 0.27757174 0 -2.30186486 0.26469526 0 -2.31217146 0.25181878 0 -2.32247806 0.8165617 0.023162363 -2.18866944
		 0.8117497 0.0067693875 -2.19369078 0.80009675 0 -2.20535898 0.62744826 0.023189195 -1.97584689
		 0.62213343 0.0067803985 -1.98029125 0.60927129 0 -1.99061036 -0.66238779 1 -1.62421799
		 -0.6776951 0.99318475 -1.63034713 -0.68405104 0.97672445 -1.63289118 -0.51732117 0.97673208 -1.99766612
		 -0.51123226 0.9931879 -1.99451792 -0.49658975 1 -1.98693383 -0.66367185 0 -1.62470174
		 -0.67898774 0.0068288096 -1.63080871 -0.68531632 0.023308227 -1.63333297 -0.8184858 0.023301812 -1.24679494
		 -0.81194001 0.0068261754 -1.24488342 -0.79611808 0 -1.2402463 -0.22509244 0 -1.41950989
		 -0.24047263 0 -1.42545509 -0.25585282 0 -1.4314003 -0.33608842 0 -1.084961891 -0.3519637 0 -1.089414954
		 -0.36783898 0 -1.093868017 0.20143846 0.023254823 -1.21630406 0.1950561 0.0068072146 -1.21882737
		 0.17963503 0 -1.2246598 0.10971412 0.023269488 -0.9288848 0.10312424 0.0068131681 -0.93074954
		 0.087207243 0 -0.93504488 0.20143846 0.448174 -1.21289527 0.19865367 0.46467036 -1.21413279
		 0.19068035 0.47893381 -1.21794069 0.31891522 0.44817263 -1.48381948 0.31628263 0.46466804 -1.48532653
		 0.30874798 0.47892743 -1.48996162 -0.22741178 0.9866783 -1.41953886 -0.23991399 0.99652088 -1.42515707;
	setAttr ".vt[166:331]" -0.25521955 1 -1.43137693 -0.086590566 0.98669171 -1.73550606
		 -0.098454177 0.99652463 -1.74239683 -0.11306531 1 -1.75012028 1.43509066 1 -3.74880075
		 1.42896986 0.99316597 -3.76411247 1.42643273 0.97667933 -3.77042222 1.79413533 0.97667539 -3.89647222
		 1.79599106 0.99316448 -3.88992977 1.80046761 1 -3.87405276 1.43505967 0 -3.74613404
		 1.42895818 0.0068097175 -3.76145339 1.42643273 0.02326197 -3.76783133 1.077641487 0.023266615 -3.60827947
		 1.080802083 0.0068114842 -3.60219336 1.088437557 0 -3.58757401 1.60813963 0 -3.26157141
		 1.6022656 0 -3.27697802 1.59639156 0 -3.29238462 1.29869163 0 -3.12650371 1.29130697 0 -3.14125085
		 1.28392231 0 -3.15599799 1.77968252 0.023062861 -2.80356836 1.77732325 0.0067282771 -2.81021547
		 1.7715956 0 -2.82567692 1.51042473 0.023083961 -2.68713665 1.50742245 0.0067370329 -2.69349623
		 1.50013769 0 -2.70828915 1.77968252 0.44804019 -2.79484034 1.77858138 0.46457046 -2.79759645
		 1.7754463 0.4787026 -2.80611968 2.0653615 0.44801846 -2.88504338 2.064513683 0.46455255 -2.88788986
		 2.062101841 0.4786585 -2.89669466 1.60762668 0.98711473 -3.26745582 1.60278332 0.99664521 -3.28045321
		 1.59685349 1 -3.2958529 1.93249559 0.9871915 -3.37522101 1.92883396 0.99666691 -3.38862586
		 1.92444015 1 -3.40452266 2.18246222 0 -3.95604134 2.18027067 0.0068076556 -3.97242498
		 2.17936373 0.023257062 -3.97924638 1.79413533 0.023260219 -3.8937304 1.79598165 0.0068088532 -3.88711834
		 1.80044246 0 -3.87123704 2.182477 1 -3.95896864 2.18027616 0.99316376 -3.97535133
		 2.17936373 0.97667402 -3.98210216 2.58223081 0.97667235 -4.0014643669 2.58239508 0.99316317 -3.99467802
		 2.58279157 1 -3.97820807 2.27440858 0.98724157 -3.45217824 2.27194929 0.99668097 -3.4658711
		 2.26906705 1 -3.48210454 2.62850142 1 -3.52847147 2.62991929 0.99668729 -3.51204467
		 2.63115883 0.9872638 -3.49817753 2.36553383 0.44800204 -2.94931555 2.36495352 0.46454021 -2.95222712
		 2.36330342 0.47862968 -2.961236 2.67680383 0.47861853 -2.99978018 2.67765021 0.4645341 -2.99064422
		 2.677948 0.44799086 -2.98769259 2.36553383 0.023033774 -2.95875716 2.36441326 0.0067161433 -2.96574998
		 2.361691 0 -2.9820087 2.05943656 0 -2.91698408 2.063633442 0.0067230053 -2.90103626
		 2.0653615 0.023051994 -2.89417887 2.27504325 0 -3.44509554 2.27217865 0 -3.46133256
		 2.26931405 0 -3.47756958 1.92484808 0 -3.40012288 1.92923117 0 -3.38422728 1.93361425 0 -3.36833167
		 0.76393765 1 -3.39769697 0.75478292 0.99316895 -3.4114151 0.75098878 0.9766866 -3.4170692
		 1.077641487 0.97668135 -3.6106863 1.080815077 0.99316698 -3.60466576 1.088471651 1 -3.59005737
		 0.76377565 0 -3.39534998 0.75473249 0.0068125706 -3.40913582 0.75098878 0.023268849 -3.41487432
		 0.44361699 0.023331659 -3.19174528 0.44785705 0.0068383301 -3.18643665 0.45821989 0 -3.17360449
		 1.0095267296 0 -2.96211123 1.00061273575 0 -2.97598886 0.99169868 0 -2.9898665 0.72135371 0 -2.79482222
		 0.7317189 0 -2.78199148 0.74208409 0 -2.76916075 1.25923491 0.023108376 -2.54534101
		 1.2555964 0.0067471331 -2.55133104 1.24677324 0 -2.56526232 1.012980938 0 -2.3973124
		 1.023281336 0.0067619891 -2.3844223 1.027531862 0.023148246 -2.37887812 1.25923491 0.44808415 -2.53767848
		 1.25765026 0.46460959 -2.54018617 1.25312972 0.47880206 -2.54793382 1.50525916 0.47875702 -2.68970799
		 1.50908303 0.46459278 -2.68154407 1.51042473 0.44806769 -2.67890358 1.013261318 0.98693699 -2.96345425
		 1.0061609745 0.99659473 -2.97529268 0.99734581 1 -2.98925447 1.2881707 1 -3.15658712
		 1.29556835 0.99662137 -3.14185619 1.30154109 0.98703218 -3.12940049 -0.30228496 0 -2.3260293
		 -0.3161096 0.0068352376 -2.33501959 -0.32180294 0.023323596 -2.33873534 -0.51924443 0.023316348 -1.99826872
		 -0.51319844 0.0068321493 -1.99514318 -0.49854457 0 -1.98758113 -0.29960552 1 -2.32519531
		 -0.3134189 0.99319142 -2.334203 -0.31917354 0.97674072 -2.33794236 -0.0911493 0.97674692 -2.65136456
		 -0.085796811 0.9931941 -2.64705586 -0.072978266 1 -2.63667798 0.082230337 0.98672491 -2.030616522
		 0.071125969 0.99653411 -2.038704395 0.057377692 1 -2.047882318 0.25477087 1 -2.32226014
		 0.26744822 0.99655849 -2.31172872 0.27765262 0.98681355 -2.30256391 0.46123567 0.44815779 -1.73686302
		 0.45877764 0.46465912 -1.73861837 0.45174634 0.47890973 -1.74401903 0.61871809 0.47887051 -1.97828054
		 0.62518579 0.46464378 -1.97219205 0.62744826 0.44814011 -1.97021496 0.46123567 0.023214174 -1.7417562
		 0.45548916 0.0067906301 -1.74558163 0.44159088 0 -1.75445449 0.29805249 0 -1.49851835
		 0.31281012 0.0068027191 -1.49114847 0.31891522 0.023246733 -1.48796666 0.082936689 0 -2.030203342
		 0.069049984 0 -2.039099932 0.055163275 0 -2.047996521 -0.11445999 0 -1.75026977 -0.099739641 0 -1.74283648
		 -0.08501929 0 -1.73540318 -0.89411914 1 -0.83744031 -0.91029692 0.99317825 -0.8406232
		 -0.91699779 0.97670871 -0.84194672 -0.81781876 0.97671849 -1.24611366 -0.81126106 0.99318224 -1.2441709
		 -0.79544836 1 -1.23950303 -0.89411396 0 -0.83784175 -0.91029519 0.0068224571 -0.84100372
		 -0.91699779 0.023292976 -0.84230828 -0.97919935 0.023291931 -0.42340648 -0.97240198 0.0068220487 -0.4227365
		 -0.95599169 0 -0.42111903 -0.41685703 0 -0.73464191 -0.43307441 0 -0.73761117 -0.4492918 0 -0.74058044
		 -0.49917692 0 -0.37488541 -0.48275864 0 -0.37338898 -0.46634036 0 -0.37189254;
	setAttr ".vt[332:361]" 0.044591323 0.023280263 -0.62814695 0.037861403 0.0068175206 -0.62935907
		 0.021610199 0 -0.63213021 -0.016429847 0 -0.31859595 1.8245961e-05 0.0068214838 -0.31740111
		 0.0068308096 0.023291113 -0.31686205 0.044591323 0.44818184 -0.62613589 0.04157865 0.46466577 -0.62677646
		 0.032951675 0.47890776 -0.62876683 0.098471917 0.47891614 -0.93006158 0.10680441 0.46467161 -0.92713976
		 0.10971412 0.44819584 -0.92619234 -0.42036211 0.98671716 -0.73448986 -0.43375471 0.99653214 -0.73738849
		 -0.44995719 1 -0.74053085 -0.36785996 1 -1.093962312 -0.35205823 0.99653047 -1.089285135
		 -0.33907151 0.98671395 -1.085010767 2.99013448 0.99014097 -3.99165893 2.9932816 0.98864961 -3.52618313
		 2.99044991 0.46272665 -3.0075073242 2.99016643 0.0098385355 -3.98864317 2.99317837 0.0068218596 -3.52243161
		 2.99030113 0.0097742034 -3.019767046 -0.98961365 0.0098490715 -0.0099007832 -0.49968043 0.0068212436 -0.0073787002
		 -0.0095535247 0.0097893765 -0.011335113 -0.98948437 0.990022 -0.0098998202 -0.50016475 0.98845643 -0.0070908749
		 -0.0075884485 0.46277168 -0.010283252;
	setAttr -s 720 ".ed";
	setAttr ".ed[0:165]"  1 0 1 217 1 1 0 5 1 5 215 1 3 2 1 2 12 0 12 11 1 11 3 1
		 2 1 1 1 13 1 13 12 1 5 4 1 4 22 0 22 21 1 21 5 1 4 3 1 3 23 1 23 22 1 7 6 1 223 7 1
		 6 13 1 13 221 1 9 8 1 8 18 0 18 17 1 17 9 1 8 7 1 7 19 1 19 18 1 11 10 1 10 30 1
		 30 29 1 29 11 1 10 9 1 9 31 1 31 30 1 15 14 1 229 15 1 14 19 1 19 227 1 17 16 1 16 38 0
		 38 37 1 37 17 1 16 15 1 15 39 1 39 38 1 21 20 1 20 59 0 59 58 1 58 21 1 20 25 1 25 60 1
		 60 59 1 25 24 1 24 28 0 28 27 1 27 25 1 24 23 1 23 29 1 29 28 1 27 26 1 63 27 1 26 33 1
		 33 61 1 33 32 1 32 36 0 36 35 1 35 33 1 32 31 1 31 37 1 37 36 1 35 34 1 66 35 1 34 39 1
		 39 64 1 289 40 1 42 287 1 42 41 1 41 44 0 44 43 1 43 42 1 41 40 1 40 45 1 45 44 1
		 244 43 1 45 242 1 295 46 1 48 293 1 48 47 1 51 48 1 47 46 1 46 49 1 51 50 1 274 51 1
		 50 49 1 49 272 1 301 52 1 54 299 1 54 53 1 57 54 1 53 52 1 52 55 1 57 56 1 268 57 1
		 56 55 1 55 266 1 208 58 1 60 206 1 63 62 1 238 63 1 62 61 1 61 236 1 66 65 1 232 66 1
		 65 64 1 64 230 1 68 67 1 325 68 1 67 72 1 72 323 1 70 69 1 69 79 0 79 78 1 78 70 1
		 69 68 1 68 80 1 80 79 1 72 71 1 71 89 0 89 88 1 88 72 1 71 70 1 70 90 1 90 89 1 74 73 1
		 331 74 1 73 80 1 80 329 1 76 75 1 75 85 0 85 84 1 84 76 1 75 74 1 74 86 1 86 85 1
		 78 77 1 77 97 1 97 96 1 96 78 1 77 76 1 76 98 1 98 97 1 82 81 1 337 82 1 81 86 1
		 86 335 1 84 83 1 83 105 0 105 104 1 104 84 1 83 82 1 82 106 1 106 105 1 88 87 1 87 108 0;
	setAttr ".ed[166:331]" 108 107 1 107 88 1 87 92 1 92 109 1 109 108 1 92 91 1
		 91 95 0 95 94 1 94 92 1 91 90 1 90 96 1 96 95 1 94 93 1 112 94 1 93 100 1 100 110 1
		 100 99 1 99 103 0 103 102 1 102 100 1 99 98 1 98 104 1 104 103 1 102 101 1 115 102 1
		 101 106 1 106 113 1 316 107 1 109 314 1 112 111 1 346 112 1 111 110 1 110 344 1 115 114 1
		 340 115 1 114 113 1 113 338 1 253 116 1 118 251 1 118 117 1 117 120 0 120 119 1 119 118 1
		 117 116 1 116 121 1 121 120 1 280 119 1 121 278 1 259 122 1 124 257 1 124 123 1 127 124 1
		 123 122 1 122 125 1 127 126 1 310 127 1 126 125 1 125 308 1 265 128 1 130 263 1 130 129 1
		 133 130 1 129 128 1 128 131 1 133 132 1 304 133 1 132 131 1 131 302 1 319 134 1 136 317 1
		 136 135 1 135 138 0 138 137 1 137 136 1 135 134 1 134 139 1 139 138 1 286 137 1 139 284 1
		 283 140 1 142 281 1 142 141 1 141 144 0 144 143 1 143 142 1 141 140 1 140 145 1 145 144 1
		 322 143 1 145 320 1 313 146 1 148 311 1 148 147 1 151 148 1 147 146 1 146 149 1 151 150 1
		 328 151 1 150 149 1 149 326 1 307 152 1 154 305 1 154 153 1 157 154 1 153 152 1 152 155 1
		 157 156 1 334 157 1 156 155 1 155 332 1 343 158 1 160 341 1 160 159 1 163 160 1 159 158 1
		 158 161 1 163 162 1 298 163 1 162 161 1 161 296 1 349 164 1 166 347 1 166 165 1 169 166 1
		 165 164 1 164 167 1 169 168 1 292 169 1 168 167 1 167 290 1 247 170 1 172 245 1 172 171 1
		 171 174 0 174 173 1 173 172 1 171 170 1 170 175 1 175 174 1 214 173 1 175 212 1 211 176 1
		 178 209 1 178 177 1 177 180 0 180 179 1 179 178 1 177 176 1 176 181 1 181 180 1 250 179 1
		 181 248 1 241 182 1 184 239 1 184 183 1 187 184 1 183 182 1 182 185 1 187 186 1 256 187 1
		 186 185 1 185 254 1 235 188 1 190 233 1 190 189 1 193 190 1;
	setAttr ".ed[332:497]" 189 188 1 188 191 1 193 192 1 262 193 1 192 191 1 191 260 1
		 271 194 1 196 269 1 196 195 1 199 196 1 195 194 1 194 197 1 199 198 1 226 199 1 198 197 1
		 197 224 1 277 200 1 202 275 1 202 201 1 205 202 1 201 200 1 200 203 1 205 204 1 220 205 1
		 204 203 1 203 218 1 208 207 1 207 210 0 210 209 1 209 208 1 207 206 1 206 211 1 211 210 1
		 214 213 1 213 216 0 216 215 1 215 214 1 213 212 1 212 217 1 217 216 1 220 219 1 219 222 1
		 222 221 1 221 220 1 219 218 1 218 223 1 223 222 1 226 225 1 225 228 1 228 227 1 227 226 1
		 225 224 1 224 229 1 229 228 1 232 231 1 231 234 0 234 233 1 233 232 1 231 230 1 230 235 1
		 235 234 1 238 237 1 237 240 1 240 239 1 239 238 1 237 236 1 236 241 1 241 240 1 244 243 1
		 243 246 0 246 245 1 245 244 1 243 242 1 242 247 1 247 246 1 250 249 1 249 252 0 252 251 1
		 251 250 1 249 248 1 248 253 1 253 252 1 256 255 1 255 258 1 258 257 1 257 256 1 255 254 1
		 254 259 1 259 258 1 262 261 1 261 264 0 264 263 1 263 262 1 261 260 1 260 265 1 265 264 1
		 268 267 1 267 270 1 270 269 1 269 268 1 267 266 1 266 271 1 271 270 1 274 273 1 273 276 1
		 276 275 1 275 274 1 273 272 1 272 277 1 277 276 1 280 279 1 279 282 0 282 281 1 281 280 1
		 279 278 1 278 283 1 283 282 1 286 285 1 285 288 0 288 287 1 287 286 1 285 284 1 284 289 1
		 289 288 1 292 291 1 291 294 1 294 293 1 293 292 1 291 290 1 290 295 1 295 294 1 298 297 1
		 297 300 1 300 299 1 299 298 1 297 296 1 296 301 1 301 300 1 304 303 1 303 306 0 306 305 1
		 305 304 1 303 302 1 302 307 1 307 306 1 310 309 1 309 312 1 312 311 1 311 310 1 309 308 1
		 308 313 1 313 312 1 316 315 1 315 318 0 318 317 1 317 316 1 315 314 1 314 319 1 319 318 1
		 322 321 1 321 324 0 324 323 1 323 322 1 321 320 1 320 325 1 325 324 1;
	setAttr ".ed[498:663]" 328 327 1 327 330 1 330 329 1 329 328 1 327 326 1 326 331 1
		 331 330 1 334 333 1 333 336 0 336 335 1 335 334 1 333 332 1 332 337 1 337 336 1 340 339 1
		 339 342 1 342 341 1 341 340 1 339 338 1 338 343 1 343 342 1 346 345 1 345 348 1 348 347 1
		 347 346 1 345 344 1 344 349 1 349 348 1 40 48 1 51 45 1 46 54 1 57 49 1 253 257 1
		 124 116 1 259 263 1 130 122 1 265 55 1 52 128 1 43 251 1 118 42 1 112 109 1 115 110 1
		 325 329 1 331 335 1 337 113 1 107 323 1 119 287 1 127 121 1 133 125 1 301 131 1 295 299 1
		 289 293 1 58 215 1 63 60 1 66 61 1 229 64 1 223 227 1 217 221 1 173 209 1 178 172 1
		 170 202 1 205 175 1 200 196 1 199 203 1 194 188 1 235 197 1 241 233 1 190 182 1 211 239 1
		 184 176 1 179 245 1 187 181 1 193 185 1 271 191 1 277 269 1 247 275 1 137 281 1 142 136 1
		 134 166 1 169 139 1 164 160 1 163 167 1 158 152 1 307 161 1 313 305 1 154 146 1 283 311 1
		 148 140 1 143 317 1 151 145 1 157 149 1 343 155 1 349 341 1 319 347 1 316 322 1 320 328 1
		 326 334 1 332 338 1 340 344 1 346 314 1 286 280 1 278 310 1 308 304 1 302 296 1 298 290 1
		 292 284 1 244 250 1 248 256 1 254 262 1 260 266 1 268 272 1 274 242 1 214 208 1 206 238 1
		 236 232 1 230 224 1 226 218 1 220 212 1 47 50 1 53 56 1 26 62 1 34 65 0 93 111 1
		 101 114 1 123 126 1 129 132 0 147 150 1 153 156 0 159 162 1 165 168 1 183 186 1 189 192 0
		 195 198 1 201 204 1 59 207 0 177 210 0 174 213 0 0 216 0 204 219 1 6 222 1 198 225 1
		 14 228 1 65 231 0 189 234 0 62 237 1 183 240 1 44 243 0 171 246 0 180 249 0 117 252 0
		 186 255 1 123 258 1 192 261 0 129 264 0 56 267 1 195 270 1 50 273 1 201 276 1 120 279 0
		 141 282 0 138 285 0 41 288 0 168 291 1 47 294 1 162 297 1 53 300 1;
	setAttr ".ed[664:719]" 132 303 0 153 306 0 126 309 1 147 312 1 108 315 0 135 318 0
		 144 321 0 67 324 0 150 327 1 73 330 1 156 333 0 81 336 0 114 339 1 159 342 1 111 345 1
		 165 348 1 0 350 0 350 4 0 2 350 0 6 351 1 351 12 0 8 351 0 10 351 1 14 352 1 352 18 0
		 16 352 0 20 353 0 353 24 0 22 353 0 26 354 1 354 32 0 28 354 0 30 354 1 34 355 0
		 355 38 0 36 355 0 67 356 0 356 71 0 69 356 0 73 357 1 357 79 0 75 357 0 77 357 1
		 81 358 0 358 85 0 83 358 0 87 359 0 359 91 0 89 359 0 93 360 1 360 99 0 95 360 0
		 97 360 1 101 361 1 361 105 0 103 361 0;
	setAttr -s 360 -ch 1440 ".fc[0:359]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 1 233 242 24
		f 4 8 9 10 -6
		mu 0 4 234 0 222 241
		f 4 11 12 13 14
		mu 0 4 62 235 251 60
		f 4 15 16 17 -13
		mu 0 4 236 1 5 250
		f 4 22 23 24 25
		mu 0 4 3 238 248 25
		f 4 26 27 28 -24
		mu 0 4 239 2 223 247
		f 4 29 30 31 32
		mu 0 4 24 240 257 6
		f 4 33 34 35 -31
		mu 0 4 240 3 7 257
		f 4 40 41 42 43
		mu 0 4 25 245 264 8
		f 4 44 45 46 -42
		mu 0 4 246 4 218 263
		f 4 47 48 49 50
		mu 0 4 60 249 277 61
		f 4 51 52 53 -49
		mu 0 4 249 63 214 277
		f 4 54 55 56 57
		mu 0 4 63 252 256 64
		f 4 58 59 60 -56
		mu 0 4 253 5 6 255
		f 4 65 66 67 68
		mu 0 4 66 258 262 67
		f 4 69 70 71 -67
		mu 0 4 259 7 8 261
		f 4 78 79 80 81
		mu 0 4 9 266 267 32
		f 4 82 83 84 -80
		mu 0 4 266 20 178 267
		f 4 121 122 123 124
		mu 0 4 11 281 290 34
		f 4 125 126 127 -123
		mu 0 4 282 10 230 289
		f 4 128 129 130 131
		mu 0 4 46 283 298 47
		f 4 132 133 134 -130
		mu 0 4 284 11 15 297
		f 4 139 140 141 142
		mu 0 4 13 286 295 35
		f 4 143 144 145 -141
		mu 0 4 287 12 231 294
		f 4 146 147 148 149
		mu 0 4 34 288 304 16
		f 4 150 151 152 -148
		mu 0 4 288 13 17 304
		f 4 157 158 159 160
		mu 0 4 35 292 312 18
		f 4 161 162 163 -159
		mu 0 4 293 14 219 311
		f 4 164 165 166 167
		mu 0 4 47 296 313 45
		f 4 168 169 170 -166
		mu 0 4 296 36 130 313
		f 4 171 172 173 174
		mu 0 4 36 299 303 37
		f 4 175 176 177 -173
		mu 0 4 300 15 16 302
		f 4 182 183 184 185
		mu 0 4 39 305 310 40
		f 4 186 187 188 -184
		mu 0 4 306 17 18 309
		f 4 205 206 207 208
		mu 0 4 19 318 319 48
		f 4 209 210 211 -207
		mu 0 4 318 50 166 319
		f 4 236 237 238 239
		mu 0 4 108 326 327 96
		f 4 240 241 242 -238
		mu 0 4 326 98 154 327
		f 4 247 248 249 250
		mu 0 4 97 328 329 109
		f 4 251 252 253 -249
		mu 0 4 328 110 142 329
		f 4 298 299 300 301
		mu 0 4 84 340 341 72
		f 4 302 303 304 -300
		mu 0 4 340 74 202 341
		f 4 309 310 311 312
		mu 0 4 73 342 343 85
		f 4 313 314 315 -311
		mu 0 4 342 86 190 343
		f 4 358 359 360 361
		mu 0 4 205 354 355 193
		f 4 362 363 364 -360
		mu 0 4 354 194 82 355
		f 4 365 366 367 368
		mu 0 4 192 356 357 204
		f 4 369 370 371 -367
		mu 0 4 356 206 71 357
		f 4 372 373 374 375
		mu 0 4 203 358 359 207
		f 4 376 377 378 -374
		mu 0 4 358 208 70 359
		f 4 379 380 381 382
		mu 0 4 201 360 363 209
		f 4 383 384 385 -381
		mu 0 4 361 210 69 362
		f 4 386 387 388 389
		mu 0 4 213 364 365 197
		f 4 390 391 392 -388
		mu 0 4 364 199 79 365
		f 4 393 394 395 396
		mu 0 4 215 366 367 195
		f 4 397 398 399 -395
		mu 0 4 366 196 80 367
		f 4 400 401 402 403
		mu 0 4 168 368 369 180
		f 4 404 405 406 -402
		mu 0 4 368 182 94 369
		f 4 407 408 409 410
		mu 0 4 181 370 371 169
		f 4 411 412 413 -409
		mu 0 4 370 170 26 371
		f 4 414 415 416 417
		mu 0 4 191 372 373 171
		f 4 418 419 420 -416
		mu 0 4 372 172 28 373
		f 4 421 422 423 424
		mu 0 4 189 374 375 173
		f 4 425 426 427 -423
		mu 0 4 374 175 30 375
		f 4 428 429 430 431
		mu 0 4 177 376 379 185
		f 4 432 433 434 -430
		mu 0 4 377 186 90 378
		f 4 435 436 437 438
		mu 0 4 179 380 381 183
		f 4 439 440 441 -437
		mu 0 4 380 184 92 381
		f 4 442 443 444 445
		mu 0 4 157 382 383 145
		f 4 446 447 448 -444
		mu 0 4 382 146 106 383
		f 4 449 450 451 452
		mu 0 4 144 384 385 156
		f 4 453 454 455 -451
		mu 0 4 384 158 58 385
		f 4 456 457 458 459
		mu 0 4 155 386 387 159
		f 4 460 461 462 -458
		mu 0 4 386 160 56 387
		f 4 463 464 465 466
		mu 0 4 153 388 391 161
		f 4 467 468 469 -465
		mu 0 4 389 162 54 390
		f 4 470 471 472 473
		mu 0 4 165 392 393 149
		f 4 474 475 476 -472
		mu 0 4 392 151 103 393
		f 4 477 478 479 480
		mu 0 4 167 394 395 147
		f 4 481 482 483 -479
		mu 0 4 394 148 104 395
		f 4 484 485 486 487
		mu 0 4 120 396 397 132
		f 4 488 489 490 -486
		mu 0 4 396 134 118 397
		f 4 491 492 493 494
		mu 0 4 133 398 399 121
		f 4 495 496 497 -493
		mu 0 4 398 122 42 399
		f 4 498 499 500 501
		mu 0 4 143 400 401 123
		f 4 502 503 504 -500
		mu 0 4 400 124 43 401
		f 4 505 506 507 508
		mu 0 4 141 402 403 125
		f 4 509 510 511 -507
		mu 0 4 402 127 44 403
		f 4 512 513 514 515
		mu 0 4 129 404 407 137
		f 4 516 517 518 -514
		mu 0 4 405 138 114 406
		f 4 519 520 521 522
		mu 0 4 131 408 409 135
		f 4 523 524 525 -521
		mu 0 4 408 136 116 409
		f 4 526 -91 527 -84
		mu 0 4 20 216 21 178
		f 4 528 -101 529 -93
		mu 0 4 22 217 23 176
		f 4 -8 -33 -60 -17
		mu 0 4 1 24 6 5
		f 4 -26 -44 -71 -35
		mu 0 4 3 25 8 7
		f 4 530 -216 531 -204
		mu 0 4 26 171 27 224
		f 4 532 -226 533 -215
		mu 0 4 28 173 29 225
		f 4 -225 534 -103 535
		mu 0 4 226 30 174 31
		f 4 536 -205 537 -82
		mu 0 4 32 169 33 9
		f 4 -125 -150 -177 -134
		mu 0 4 11 34 16 15
		f 4 -143 -161 -188 -152
		mu 0 4 13 35 18 17
		f 4 -175 -180 538 -170
		mu 0 4 36 37 38 130
		f 4 -186 -191 539 -182
		mu 0 4 39 40 41 128
		f 4 540 -139 -127 -119
		mu 0 4 42 123 230 10
		f 4 541 -157 -145 -137
		mu 0 4 43 125 231 12
		f 4 -155 542 -193 -163
		mu 0 4 14 44 126 219
		f 4 543 -121 -132 -168
		mu 0 4 45 121 46 47
		f 4 -209 544 -78 -538
		mu 0 4 19 48 156 49
		f 4 -532 -218 545 -211
		mu 0 4 50 220 51 166
		f 4 -534 -228 546 -220
		mu 0 4 52 221 53 164
		f 4 547 -230 -536 -98
		mu 0 4 54 163 55 229
		f 4 548 -99 -529 -88
		mu 0 4 56 161 57 228
		f 4 549 -89 -527 -77
		mu 0 4 58 159 59 227
		f 4 -51 550 -4 -15
		mu 0 4 60 61 204 62
		f 4 -58 -63 551 -53
		mu 0 4 63 64 65 214
		f 4 -69 -74 552 -65
		mu 0 4 66 67 68 212
		f 4 553 -76 -46 -38
		mu 0 4 69 211 218 4
		f 4 554 -40 -28 -20
		mu 0 4 70 209 223 2
		f 4 555 -22 -10 -2
		mu 0 4 71 207 222 0
		f 4 556 -309 557 -302
		mu 0 4 72 193 73 84
		f 4 558 -352 559 -304
		mu 0 4 74 95 75 202
		f 4 560 -342 561 -354
		mu 0 4 76 93 77 200
		f 4 562 -329 563 -344
		mu 0 4 78 91 79 198
		f 4 564 -330 565 -319
		mu 0 4 80 197 81 88
		f 4 566 -320 567 -308
		mu 0 4 82 195 83 86
		f 4 -558 -313 568 -298
		mu 0 4 84 73 85 180
		f 4 -568 -322 569 -315
		mu 0 4 86 83 87 190
		f 4 -566 -332 570 -324
		mu 0 4 88 81 89 188
		f 4 571 -334 -563 -339
		mu 0 4 90 187 91 78
		f 4 572 -340 -561 -349
		mu 0 4 92 185 93 76
		f 4 573 -350 -559 -297
		mu 0 4 94 183 95 74
		f 4 574 -247 575 -240
		mu 0 4 96 145 97 108
		f 4 576 -290 577 -242
		mu 0 4 98 119 99 154
		f 4 578 -280 579 -292
		mu 0 4 100 117 101 152
		f 4 580 -267 581 -282
		mu 0 4 102 115 103 150
		f 4 582 -268 583 -257
		mu 0 4 104 149 105 112
		f 4 584 -258 585 -246
		mu 0 4 106 147 107 110
		f 4 -576 -251 586 -236
		mu 0 4 108 97 109 132
		f 4 -586 -260 587 -253
		mu 0 4 110 107 111 142
		f 4 -584 -270 588 -262
		mu 0 4 112 105 113 140
		f 4 589 -272 -581 -277
		mu 0 4 114 139 115 102
		f 4 590 -278 -579 -287
		mu 0 4 116 137 117 100
		f 4 591 -288 -577 -235
		mu 0 4 118 135 119 98
		f 4 592 -495 -544 -194
		mu 0 4 120 133 121 45
		f 4 593 -502 -541 -497
		mu 0 4 122 143 123 42
		f 4 594 -509 -542 -504
		mu 0 4 124 141 125 43
		f 4 -543 -511 595 -203
		mu 0 4 126 44 127 138
		f 4 -540 -201 596 -199
		mu 0 4 128 41 129 136
		f 4 -539 -197 597 -195
		mu 0 4 130 38 131 134
		f 4 -587 -255 -593 -488
		mu 0 4 132 109 133 120
		f 4 -598 -523 -592 -490
		mu 0 4 134 131 135 118
		f 4 -597 -516 -591 -525
		mu 0 4 136 129 137 116
		f 4 -596 -276 -590 -518
		mu 0 4 138 127 139 114
		f 4 -589 -274 -595 -266
		mu 0 4 140 113 141 124
		f 4 -588 -264 -594 -256
		mu 0 4 142 111 143 122
		f 4 598 -446 -575 -244
		mu 0 4 144 157 145 96
		f 4 599 -481 -585 -448
		mu 0 4 146 167 147 106
		f 4 600 -474 -583 -483
		mu 0 4 148 165 149 104
		f 4 -582 -476 601 -286
		mu 0 4 150 103 151 162
		f 4 -580 -284 602 -296
		mu 0 4 152 101 153 160
		f 4 -578 -294 603 -245
		mu 0 4 154 99 155 158
		f 4 -545 -213 -599 -453
		mu 0 4 156 48 157 144
		f 4 -604 -460 -550 -455
		mu 0 4 158 155 159 58
		f 4 -603 -467 -549 -462
		mu 0 4 160 153 161 56
		f 4 -602 -234 -548 -469
		mu 0 4 162 151 163 54
		f 4 -547 -232 -601 -224
		mu 0 4 164 53 165 148
		f 4 -546 -222 -600 -214
		mu 0 4 166 51 167 146
		f 4 604 -411 -537 -86
		mu 0 4 168 181 169 32
		f 4 605 -418 -531 -413
		mu 0 4 170 191 171 26
		f 4 606 -425 -533 -420
		mu 0 4 172 189 173 28
		f 4 -535 -427 607 -107
		mu 0 4 174 30 175 186
		f 4 -530 -105 608 -97
		mu 0 4 176 23 177 184
		f 4 -528 -95 609 -87
		mu 0 4 178 21 179 182
		f 4 -569 -317 -605 -404
		mu 0 4 180 85 181 168
		f 4 -610 -439 -574 -406
		mu 0 4 182 179 183 94
		f 4 -609 -432 -573 -441
		mu 0 4 184 177 185 92
		f 4 -608 -338 -572 -434
		mu 0 4 186 175 187 90
		f 4 -571 -336 -607 -328
		mu 0 4 188 89 189 172
		f 4 -570 -326 -606 -318
		mu 0 4 190 87 191 170
		f 4 610 -362 -557 -306
		mu 0 4 192 205 193 72
		f 4 611 -397 -567 -364
		mu 0 4 194 215 195 82
		f 4 612 -390 -565 -399
		mu 0 4 196 213 197 80
		f 4 -564 -392 613 -348
		mu 0 4 198 79 199 210
		f 4 -562 -346 614 -358
		mu 0 4 200 77 201 208
		f 4 -560 -356 615 -307
		mu 0 4 202 75 203 206
		f 4 -551 -108 -611 -369
		mu 0 4 204 61 205 192
		f 4 -616 -376 -556 -371
		mu 0 4 206 203 207 71
		f 4 -615 -383 -555 -378
		mu 0 4 208 201 209 70
		f 4 -614 -117 -554 -385
		mu 0 4 210 199 211 69
		f 4 -553 -115 -613 -113
		mu 0 4 212 68 213 196
		f 4 -552 -111 -612 -109
		mu 0 4 214 65 215 194
		f 4 89 616 -94 90
		mu 0 4 216 269 270 21
		f 4 91 92 -96 -617
		mu 0 4 269 22 176 270
		f 4 99 617 -104 100
		mu 0 4 217 274 276 23
		f 4 101 102 -106 -618
		mu 0 4 273 31 174 275
		f 4 61 618 -110 62
		mu 0 4 64 254 278 65
		f 4 63 64 -112 -619
		mu 0 4 254 66 212 278
		f 4 72 619 -114 73
		mu 0 4 67 260 279 68
		f 4 74 75 -116 -620
		mu 0 4 260 218 211 279
		f 4 178 620 -196 179
		mu 0 4 37 301 314 38
		f 4 180 181 -198 -621
		mu 0 4 301 39 128 314
		f 4 189 621 -200 190
		mu 0 4 40 307 316 41
		f 4 191 192 -202 -622
		mu 0 4 308 219 126 315
		f 4 216 622 -221 217
		mu 0 4 220 321 322 51
		f 4 218 219 -223 -623
		mu 0 4 321 52 164 322
		f 4 226 623 -231 227
		mu 0 4 221 324 325 53
		f 4 228 229 -233 -624
		mu 0 4 324 55 163 325
		f 4 258 624 -263 259
		mu 0 4 107 330 331 111
		f 4 260 261 -265 -625
		mu 0 4 330 112 140 331
		f 4 268 625 -273 269
		mu 0 4 105 332 333 113
		f 4 270 271 -275 -626
		mu 0 4 332 115 139 333
		f 4 278 626 -283 279
		mu 0 4 117 334 337 101
		f 4 280 281 -285 -627
		mu 0 4 335 102 150 336
		f 4 288 627 -293 289
		mu 0 4 119 338 339 99
		f 4 290 291 -295 -628
		mu 0 4 338 100 152 339
		f 4 320 628 -325 321
		mu 0 4 83 344 345 87
		f 4 322 323 -327 -629
		mu 0 4 344 88 188 345
		f 4 330 629 -335 331
		mu 0 4 81 346 347 89
		f 4 332 333 -337 -630
		mu 0 4 346 91 187 347
		f 4 340 630 -345 341
		mu 0 4 93 348 351 77
		f 4 342 343 -347 -631
		mu 0 4 349 78 198 350
		f 4 350 631 -355 351
		mu 0 4 95 352 353 75
		f 4 352 353 -357 -632
		mu 0 4 352 76 200 353
		f 4 -50 632 -359 107
		mu 0 4 61 277 354 205
		f 4 -54 108 -363 -633
		mu 0 4 277 214 194 354
		f 4 -314 633 -365 307
		mu 0 4 86 342 355 82
		f 4 -310 308 -361 -634
		mu 0 4 342 73 193 355
		f 4 -301 634 -366 305
		mu 0 4 72 341 356 192
		f 4 -305 306 -370 -635
		mu 0 4 341 202 206 356
		f 4 0 635 -372 1
		mu 0 4 0 232 357 71
		f 4 2 3 -368 -636
		mu 0 4 232 62 204 357
		f 4 354 636 -373 355
		mu 0 4 75 353 358 203
		f 4 356 357 -377 -637
		mu 0 4 353 200 208 358
		f 4 18 637 -379 19
		mu 0 4 2 237 359 70
		f 4 20 21 -375 -638
		mu 0 4 237 222 207 359
		f 4 344 638 -380 345
		mu 0 4 77 351 360 201
		f 4 346 347 -384 -639
		mu 0 4 350 198 210 361
		f 4 36 639 -386 37
		mu 0 4 4 243 362 69
		f 4 38 39 -382 -640
		mu 0 4 244 223 209 363
		f 4 113 640 -387 114
		mu 0 4 68 279 364 213
		f 4 115 116 -391 -641
		mu 0 4 279 211 199 364
		f 4 -333 641 -393 328
		mu 0 4 91 346 365 79
		f 4 -331 329 -389 -642
		mu 0 4 346 81 197 365
		f 4 109 642 -394 110
		mu 0 4 65 278 366 215
		f 4 111 112 -398 -643
		mu 0 4 278 212 196 366
		f 4 -323 643 -400 318
		mu 0 4 88 344 367 80
		f 4 -321 319 -396 -644
		mu 0 4 344 83 195 367
		f 4 -81 644 -401 85
		mu 0 4 32 267 368 168
		f 4 -85 86 -405 -645
		mu 0 4 267 178 182 368
		f 4 -303 645 -407 296
		mu 0 4 74 340 369 94
		f 4 -299 297 -403 -646
		mu 0 4 340 84 180 369
		f 4 -312 646 -408 316
		mu 0 4 85 343 370 181
		f 4 -316 317 -412 -647
		mu 0 4 343 190 170 370
		f 4 -210 647 -414 203
		mu 0 4 224 317 371 26
		f 4 -206 204 -410 -648
		mu 0 4 317 33 169 371
		f 4 324 648 -415 325
		mu 0 4 87 345 372 191
		f 4 326 327 -419 -649
		mu 0 4 345 188 172 372
		f 4 -219 649 -421 214
		mu 0 4 225 320 373 28
		f 4 -217 215 -417 -650
		mu 0 4 320 27 171 373
		f 4 334 650 -422 335
		mu 0 4 89 347 374 189
		f 4 336 337 -426 -651
		mu 0 4 347 187 175 374
		f 4 -229 651 -428 224
		mu 0 4 226 323 375 30
		f 4 -227 225 -424 -652
		mu 0 4 323 29 173 375
		f 4 103 652 -429 104
		mu 0 4 23 276 376 177
		f 4 105 106 -433 -653
		mu 0 4 275 174 186 377
		f 4 -343 653 -435 338
		mu 0 4 78 349 378 90
		f 4 -341 339 -431 -654
		mu 0 4 348 93 185 379
		f 4 93 654 -436 94
		mu 0 4 21 270 380 179
		f 4 95 96 -440 -655
		mu 0 4 270 176 184 380
		f 4 -353 655 -442 348
		mu 0 4 76 352 381 92
		f 4 -351 349 -438 -656
		mu 0 4 352 95 183 381
		f 4 -208 656 -443 212
		mu 0 4 48 319 382 157
		f 4 -212 213 -447 -657
		mu 0 4 319 166 146 382
		f 4 -252 657 -449 245
		mu 0 4 110 328 383 106
		f 4 -248 246 -445 -658
		mu 0 4 328 97 145 383
		f 4 -239 658 -450 243
		mu 0 4 96 327 384 144
		f 4 -243 244 -454 -659
		mu 0 4 327 154 158 384
		f 4 -83 659 -456 76
		mu 0 4 227 265 385 58
		f 4 -79 77 -452 -660
		mu 0 4 265 49 156 385
		f 4 292 660 -457 293
		mu 0 4 99 339 386 155
		f 4 294 295 -461 -661
		mu 0 4 339 152 160 386
		f 4 -92 661 -463 87
		mu 0 4 228 268 387 56
		f 4 -90 88 -459 -662
		mu 0 4 268 59 159 387
		f 4 282 662 -464 283
		mu 0 4 101 337 388 153
		f 4 284 285 -468 -663
		mu 0 4 336 150 162 389
		f 4 -102 663 -470 97
		mu 0 4 229 272 390 54
		f 4 -100 98 -466 -664
		mu 0 4 271 57 161 391
		f 4 230 664 -471 231
		mu 0 4 53 325 392 165
		f 4 232 233 -475 -665
		mu 0 4 325 163 151 392
		f 4 -271 665 -477 266
		mu 0 4 115 332 393 103
		f 4 -269 267 -473 -666
		mu 0 4 332 105 149 393
		f 4 220 666 -478 221
		mu 0 4 51 322 394 167
		f 4 222 223 -482 -667
		mu 0 4 322 164 148 394
		f 4 -261 667 -484 256
		mu 0 4 112 330 395 104
		f 4 -259 257 -480 -668
		mu 0 4 330 107 147 395
		f 4 -167 668 -485 193
		mu 0 4 45 313 396 120
		f 4 -171 194 -489 -669
		mu 0 4 313 130 134 396
		f 4 -241 669 -491 234
		mu 0 4 98 326 397 118
		f 4 -237 235 -487 -670
		mu 0 4 326 108 132 397
		f 4 -250 670 -492 254
		mu 0 4 109 329 398 133
		f 4 -254 255 -496 -671
		mu 0 4 329 142 122 398
		f 4 117 671 -498 118
		mu 0 4 10 280 399 42
		f 4 119 120 -494 -672
		mu 0 4 280 46 121 399
		f 4 262 672 -499 263
		mu 0 4 111 331 400 143
		f 4 264 265 -503 -673
		mu 0 4 331 140 124 400
		f 4 135 673 -505 136
		mu 0 4 12 285 401 43
		f 4 137 138 -501 -674
		mu 0 4 285 230 123 401
		f 4 272 674 -506 273
		mu 0 4 113 333 402 141
		f 4 274 275 -510 -675
		mu 0 4 333 139 127 402
		f 4 153 675 -512 154
		mu 0 4 14 291 403 44
		f 4 155 156 -508 -676
		mu 0 4 291 231 125 403
		f 4 199 676 -513 200
		mu 0 4 41 316 404 129
		f 4 201 202 -517 -677
		mu 0 4 315 126 138 405
		f 4 -281 677 -519 276
		mu 0 4 102 335 406 114
		f 4 -279 277 -515 -678
		mu 0 4 334 117 137 407
		f 4 195 678 -520 196
		mu 0 4 38 314 408 131
		f 4 197 198 -524 -679
		mu 0 4 314 128 136 408
		f 4 -291 679 -526 286
		mu 0 4 100 338 409 116
		f 4 -289 287 -522 -680
		mu 0 4 338 119 135 409
		f 4 -12 -3 680 681
		mu 0 4 235 62 232 410
		f 4 -1 -9 682 -681
		mu 0 4 232 0 234 410
		f 4 -5 -16 -682 -683
		mu 0 4 233 1 236 411
		f 4 -11 -21 683 684
		mu 0 4 241 222 237 413
		f 4 -19 -27 685 -684
		mu 0 4 237 2 239 413
		f 4 -23 -34 686 -686
		mu 0 4 238 3 240 412
		f 4 -30 -7 -685 -687
		mu 0 4 240 24 242 412
		f 4 -29 -39 687 688
		mu 0 4 247 223 244 416
		f 4 -37 -45 689 -688
		mu 0 4 243 4 246 414
		f 4 -41 -25 -689 -690
		mu 0 4 245 25 248 415
		f 4 -55 -52 690 691
		mu 0 4 252 63 249 417
		f 4 -48 -14 692 -691
		mu 0 4 249 60 251 417
		f 4 -18 -59 -692 -693
		mu 0 4 250 5 253 418
		f 4 -66 -64 693 694
		mu 0 4 258 66 254 420
		f 4 -62 -57 695 -694
		mu 0 4 254 64 256 420
		f 4 -61 -32 696 -696
		mu 0 4 255 6 257 419
		f 4 -36 -70 -695 -697
		mu 0 4 257 7 259 419
		f 4 -47 -75 697 698
		mu 0 4 263 218 260 421
		f 4 -73 -68 699 -698
		mu 0 4 260 67 262 421
		f 4 -72 -43 -699 -700
		mu 0 4 261 8 264 422
		f 4 -129 -120 700 701
		mu 0 4 283 46 280 423
		f 4 -118 -126 702 -701
		mu 0 4 280 10 282 423
		f 4 -122 -133 -702 -703
		mu 0 4 281 11 284 424
		f 4 -128 -138 703 704
		mu 0 4 289 230 285 426
		f 4 -136 -144 705 -704
		mu 0 4 285 12 287 426
		f 4 -140 -151 706 -706
		mu 0 4 286 13 288 425
		f 4 -147 -124 -705 -707
		mu 0 4 288 34 290 425
		f 4 -146 -156 707 708
		mu 0 4 294 231 291 427
		f 4 -154 -162 709 -708
		mu 0 4 291 14 293 427
		f 4 -158 -142 -709 -710
		mu 0 4 292 35 295 428
		f 4 -172 -169 710 711
		mu 0 4 299 36 296 429
		f 4 -165 -131 712 -711
		mu 0 4 296 47 298 429
		f 4 -135 -176 -712 -713
		mu 0 4 297 15 300 430
		f 4 -183 -181 713 714
		mu 0 4 305 39 301 432
		f 4 -179 -174 715 -714
		mu 0 4 301 37 303 432
		f 4 -178 -149 716 -716
		mu 0 4 302 16 304 431
		f 4 -153 -187 -715 -717
		mu 0 4 304 17 306 431
		f 4 -164 -192 717 718
		mu 0 4 311 219 308 435
		f 4 -190 -185 719 -718
		mu 0 4 307 40 310 433
		f 4 -189 -160 -719 -720
		mu 0 4 309 18 312 434;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "OutsideCurve_HPShapeOrig" -p "OutsideCurve_HP";
	rename -uid "E52C6096-4B57-DB35-88DE-E1B5A6ED32FD";
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
createNode transform -n "InsideCorner_HP";
	rename -uid "4576824A-4AC8-0D2D-6E8D-FA9EDB0E10B2";
	setAttr ".v" no;
createNode mesh -n "InsideCorner_HPShape" -p "InsideCorner_HP";
	rename -uid "9035DC22-4F7C-0BC3-56CA-8E8409AFB1C2";
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
createNode mesh -n "polySurfaceShape8" -p "InsideCorner_HP";
	rename -uid "57BBAE19-4AD5-236D-48FD-57B3C157399B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.83022305369377136 0.17337648198008537 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.39556476 0.27336243
		 0.39548883 0.21537045 0.82238847 0.59022993 0.88824111 0.59040016 0.022394083 0.21585855
		 0.022551276 0.33597872 0.022632591 0.39816117 0.022469886 0.27379623 0.7567178 0.51971167
		 0.75687665 0.45835438 0.022795253 0.52252614 0.88858175 0.45869502 0.82272917 0.4585247
		 0.022876598 0.58470863 0.022995599 0.67569894 0.3960903 0.6751315 0.26961312 0.52220327
		 0.33288804 0.58430308 0.26945043 0.39783829 0.33256266 0.33557317 0.75899732 0.10212898
		 0.83023751 0.10214347 0.83020854 0.24462399 0.75896829 0.2446095 0.90147781 0.10215796
		 0.90146434 0.1685352 0.65107656 0.31684467 0.65115565 0.37730592 0.34845817 0.37770188
		 0.40884024 0.31716159 0.65127146 0.46577746 0.28850412 0.46596533 0.65076029 0.075000122
		 0.28799361 0.075670525 0.28791967 0.01914078 0.6506865 0.018666208 0.40868205 0.19623932
		 0.34814185 0.13585725 0.65083927 0.1354613 0.65091836 0.19592243;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.048243761 0 -0.00080996752 0.048243761 0.46696702 -0.00080996752
		 -0.94999999 1 -3 -0.44999999 1 -3 0.050000001 0.46586883 -3 -0.94999999 0 -3 -0.44999999 0 -3
		 0.050000001 0 -3 -0.94991821 1 -1.0076868534 -0.44991824 1 -0.50362182 -0.94991827 0 -1.0076868534
		 -0.44991824 0 -0.50362182 -2.95307636 0 -1 -2.95307636 0 -0.5 -2.95307636 0 0 -2.95307636 1 -1
		 -2.95307636 1 -0.5 -2.95307636 0.46586883 0;
	setAttr -s 32 ".ed[0:31]"  2 3 0 3 4 0 5 6 0 6 7 0 0 1 0 1 4 0 2 5 0
		 3 6 1 4 7 0 5 10 0 6 11 1 7 0 0 8 2 0 9 3 1 9 8 0 1 9 0 11 10 0 0 11 0 10 8 0 12 13 0
		 13 14 0 15 16 0 16 17 0 12 15 0 13 16 1 14 17 0 15 8 0 16 9 1 17 1 0 0 14 0 10 12 0
		 11 13 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 7 -3 -7
		mu 0 4 3 2 12 11
		f 4 1 8 -4 -8
		mu 0 4 2 8 9 12
		f 4 2 10 16 -10
		mu 0 4 6 5 19 18
		f 4 3 11 17 -11
		mu 0 4 5 7 0 19
		f 4 -12 -9 -6 -5
		mu 0 4 0 7 4 1
		f 4 9 18 12 6
		mu 0 4 6 18 16 10
		f 4 -15 13 -1 -13
		mu 0 4 16 17 13 10
		f 4 -16 5 -2 -14
		mu 0 4 17 15 14 13
		f 4 19 24 -22 -24
		mu 0 4 20 21 22 23
		f 4 20 25 -23 -25
		mu 0 4 21 24 25 22
		f 4 21 27 14 -27
		mu 0 4 26 27 28 29
		f 4 22 28 15 -28
		mu 0 4 27 30 31 28
		f 4 -30 4 -29 -26
		mu 0 4 32 33 34 35
		f 4 -17 31 -20 -31
		mu 0 4 36 37 38 39
		f 4 -18 29 -21 -32
		mu 0 4 37 33 32 38
		f 4 -19 30 23 26
		mu 0 4 29 36 39 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "InnerCurve1";
	rename -uid "CC7B60F7-40BE-CDF3-DFC8-C08714B18E39";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.99496613116934896 0 0 ;
	setAttr ".r" -type "double3" -1 0 0 ;
	setAttr ".rp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
	setAttr ".rpt" -type "double3" 0 0.052420656696253738 0.0091843359312582824 ;
	setAttr ".sp" -type "double3" 0.0050338688306510448 -0.052420656696253724 -0.0011860231077810979 ;
createNode mesh -n "InnerCurve1Shape" -p "InnerCurve1";
	rename -uid "FAE67090-48A9-4660-B8C4-E18E60FB1E16";
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
	setAttr ".dr" 1;
createNode mesh -n "InnerCurve1ShapeOrig" -p "InnerCurve1";
	rename -uid "EE458000-4269-4682-28E0-46A7C1646033";
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
createNode mesh -n "polySurfaceShape9" -p "InnerCurve1";
	rename -uid "F5F16F91-43D8-F980-0400-369DADB239F2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42247536033391953 0.65480825304985046 ;
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
	setAttr ".dr" 1;
createNode transform -n "Floor_HP1";
	rename -uid "B8298375-44AC-E5A9-129C-3AB57E87FD12";
	setAttr ".v" no;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.85882354 0.58039218 0.33725491 ;
	setAttr ".rp" -type "double3" 0 0 -0.0092160475075591108 ;
	setAttr ".sp" -type "double3" 0 0 -0.0092160475075591108 ;
createNode mesh -n "Floor_HP1Shape" -p "Floor_HP1";
	rename -uid "9616C398-4508-8802-342B-8CABC9B221BB";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.87800002 0.68599999 0.294 ;
	setAttr ".ovca" 0.30000001192092896;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
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
	setAttr ".pv" -type "double2" 0.5 0.5 ;
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
createNode transform -n "OutsideCurve1";
	rename -uid "6BE83F9C-4EC9-4158-2C1B-8989DB229905";
	setAttr ".v" no;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" 0 -0.26405715384380612 0 ;
createNode mesh -n "OutsideCurve1ShapeOrig" -p "OutsideCurve1";
	rename -uid "F50B3B0E-4F0F-89D0-F0B1-FBB8FEC5577B";
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
createNode transform -n "FloorBend";
	rename -uid "AD040F29-443C-FA9E-0DAC-928907556C80";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0 -0.0092160475075591108 ;
	setAttr ".sp" -type "double3" 0 0 -0.0092160475075591108 ;
createNode mesh -n "FloorBendShape" -p "FloorBend";
	rename -uid "1039AACB-4A81-F033-3F07-53BFD04EAA97";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 6 "e[24:28]" "e[32:36]" "e[39:40]" "e[44:46]" "e[48:53]" "e[55:69]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0.5 0.5 0.75 0.5
		 0.75 0.75 0.5 0.75 0.25 0.25 0.5 0.25 0.25 0.5 0.25 0 0.5 0 1 0.5 1 0.75 0.75 0.25
		 0.75 0 1 0.25 1 0 0 0 0.023762522 0.25 0.014863774 0.20900247 0.0094112288 0.16404849
		 0.0022769365 0.10536074 0.0012905808 0.059818923 0 0.00035060628 1 1 0.96132183 1
		 0.95349634 0.99968934 0.89264935 0.99728739 0.84753734 0.99171662 0.78851128 0.98446739
		 0.75 0.97618014 0.29628277 0.75 0.27218723 0.72835678 0.25 0.70338339 0.5 0.89219415
		 0.46720359 0.87367666 0.41974497 0.84699887 0.38628751 0.8229571 0.34251061 0.7916308
		 0.31204695 0.7641598 0.10900202 0.5 0.24487963 0.69762003 0.20914942 0.65755153 0.18514864
		 0.62374353 0.15374523 0.57966101 0.13319443 0.54300839 0.74516702 0.97514009 0.68845385
		 0.96299928 0.64720237 0.94991225 0.59322751 0.93287301 0.55434722 0.91605663 0.50347489
		 0.8941561 0.10630508 0.49520546 0.089341655 0.45597211 0.067146152 0.40479076 0.053901337
		 0.36328232 0.036571372 0.3091197 0.027167767 0.26568836;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  1.5 0 -1.5 2.25 0 -1.5 2.25 0 -2.25 1.5 0 -2.25
		 0.75 0 -0.75 1.5 0 -0.75 0.75 0 -1.5 0.75 0 0 1.5 0 0 3 0 -1.5 3 0 -2.25 2.25 0 -0.75
		 2.25 0 0 3 0 -0.75 3 0 0 0 0 0 0.071287565 0 -0.75 0.044591323 0 -0.62700737 0.028233688 0 -0.49214551
		 0.0068308096 0 -0.31608221 0.0038717426 0 -0.17945677 1.110223e-16 1.3877788e-17 -0.0010518188
		 3 0 -3 2.88396549 0 -3 2.86048889 0 -2.99906802 2.677948 0 -2.9918623 2.54261208 0 -2.97514987
		 2.36553383 0 -2.95340228 2.25 0 -2.92854047 0.88884836 0 -2.25 0.8165617 0 -2.18507028
		 0.75 0 -2.1101501 1.5 0 -2.67658257 1.40161073 0 -2.62103009 1.25923491 0 -2.54099655
		 1.15886247 0 -2.46887112 1.027531862 0 -2.37489247 0.93614084 0 -2.29247928 0.32700607 0 -1.5
		 0.73463887 0 -2.092860222 0.62744826 0 -1.97265458 0.55544591 0 -1.8712306 0.46123567 0 -1.73898292
		 0.39958328 0 -1.62902522 2.23550081 0 -2.92542028 2.0653615 0 -2.88899803 1.941607 0 -2.84973669
		 1.77968252 0 -2.79861903 1.66304159 0 -2.7481699 1.51042473 0 -2.68246841 0.31891522 0 -1.48561633
		 0.26802498 0 -1.36791623 0.20143846 0 -1.21437228 0.161704 0 -1.089846969 0.10971412 0 -0.9273591
		 0.081503302 0 -0.79706508;
	setAttr -s 70 ".ed[0:69]"  0 1 1 1 2 1 2 3 1 3 0 1 4 5 1 5 0 1 0 6 1
		 6 4 1 7 8 0 8 5 1 4 7 1 1 9 1 9 10 0 10 2 1 5 11 1 11 1 1 8 12 0 12 11 1 11 13 1
		 13 9 0 12 14 0 14 13 0 15 7 0 4 16 1 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 15 0
		 10 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 2 1 3 29 1 29 30 0 30 31 0
		 31 6 1 3 32 1 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 29 0 38 6 1 31 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 38 0 28 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 32 0
		 38 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 16 0;
	setAttr -s 15 -ch 92 ".fc[0:14]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 0 6
		f 4 8 9 -5 10
		mu 0 4 7 8 5 4
		f 4 11 12 13 -2
		mu 0 4 1 9 10 2
		f 4 14 15 -1 -6
		mu 0 4 5 11 1 0
		f 4 16 17 -15 -10
		mu 0 4 8 12 11 5
		f 4 18 19 -12 -16
		mu 0 4 11 13 9 1
		f 4 20 21 -19 -18
		mu 0 4 12 14 13 11
		f 9 22 -11 23 24 25 26 27 28 29
		mu 0 9 15 7 4 16 17 18 19 20 21
		f 9 -14 30 31 32 33 34 35 36 37
		mu 0 9 2 10 22 23 24 25 26 27 28
		f 6 -7 -4 38 39 40 41
		mu 0 6 6 0 3 29 30 31
		f 8 -39 42 43 44 45 46 47 48
		mu 0 8 29 3 32 33 34 35 36 37
		f 8 49 -42 50 51 52 53 54 55
		mu 0 8 38 6 31 39 40 41 42 43
		f 10 -3 -38 56 57 58 59 60 61 62 -43
		mu 0 10 3 2 28 44 45 46 47 48 49 32
		f 10 -24 -8 -50 63 64 65 66 67 68 69
		mu 0 10 16 4 6 38 50 51 52 53 54 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "imagePlane1";
	rename -uid "0F4EEC5C-4964-91E6-1E6A-A28CE5B24D2E";
	setAttr ".t" -type "double3" 3.6005371239684694 2.0386139439269622 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "59D26CFA-41AD-C324-31B8-DC8214747F67";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "C:/Users/lnowland1/Workspace/AGA206/Roll-A-Ball/Assets/Images/Untitled.png";
	setAttr ".cov" -type "short2" 1878 830 ;
	setAttr ".dlc" no;
	setAttr ".w" 18.78;
	setAttr ".h" 8.3;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCylinder1";
	rename -uid "6554F804-4196-2FED-E7E0-289A9FBDCD2D";
	setAttr ".t" -type "double3" -3.1765221972148487 2.0011599509779541 0 ;
	setAttr ".s" -type "double3" 1.0024454455636147 1.0024454455636147 1.0024454455636147 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "A1B8840C-4CF6-193B-D50A-FCBCEF162E67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  5.2154064e-08 0 0 5.2154064e-08 
		0 0 5.9604645e-08 0 0 3.7252903e-08 0 0 -6.7055225e-08 0 0 -3.7252903e-08 0 0 -4.4703484e-08 
		0 0 2.682209e-07 0 0 7.4505806e-09 0 0 3.054738e-07 0 0 8.1956387e-08 0 0 8.1956387e-08 
		0 0 3.054738e-07 0 0 7.4505806e-09 0 0 2.682209e-07 0 0 -4.4703484e-08 0 0 -3.7252903e-08 
		0 0 -6.7055225e-08 0 0 3.7252903e-08 0 0 5.9604645e-08 0 0 -0.58339369 -0.18902981 
		0.1895559 -0.49626398 -0.18902981 0.36055708 -0.36055693 -0.18902981 0.49626404 -0.18955575 
		-0.18902981 0.58339363 1.4248826e-07 -0.18902981 0.61341619 0.18955635 -0.18902981 
		0.58339363 0.3605572 -0.18902981 0.49626386 0.49626428 -0.18902981 0.36055696 0.58339375 
		-0.18902981 0.18955578 0.61341661 -0.18902981 -1.0968734e-07 0.58339369 -0.18902981 
		-0.18955614 0.49626422 -0.18902981 -0.36055714 0.36055738 -0.18902981 -0.49626404 
		0.18955626 -0.18902981 -0.58339363 1.6076962e-07 -0.18902981 -0.61341619 -0.18955563 
		-0.18902981 -0.58339363 -0.36055666 -0.18902981 -0.49626398 -0.4962635 -0.18902981 
		-0.36055711 -0.58339322 -0.18902981 -0.18955608 -0.61341584 -0.18902981 -1.0968734e-07 
		-1.5646219e-07 0 0 -1.7881393e-07 -0.18902984 2.2097725e-18;
createNode transform -n "pSphere1";
	rename -uid "54D7A664-410A-47BC-BD25-BD93EF8DD511";
	setAttr ".t" -type "double3" -3.2717065051712075 3.5532777908708031 0 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "1318CC99-4BB3-D88E-6C24-8F874C23E5B5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere2";
	rename -uid "BFD62D34-494E-F8CF-6599-468EC5ECC48C";
	setAttr ".t" -type "double3" -4.0984691316967847 2.019704760446615 0 ;
	setAttr ".s" -type "double3" 0.3091107172713296 0.3091107172713296 0.3091107172713296 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	rename -uid "4C0108D2-4D82-C2E9-D491-FE946BF22BAC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere3";
	rename -uid "008A225C-4F55-4A1B-52AD-93A2E970541F";
	setAttr ".t" -type "double3" -2.2406499903405317 2.019704760446615 0 ;
	setAttr ".s" -type "double3" 0.3091107172713296 0.3091107172713296 0.3091107172713296 ;
createNode mesh -n "pSphereShape3" -p "pSphere3";
	rename -uid "6A62416A-4C1D-2E47-F851-8F979BCABC18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere4";
	rename -uid "F7AC0F1E-4394-C63A-18ED-0CAE5E20B625";
	setAttr ".t" -type "double3" -2.7999660990827646 0.18685472255861635 0 ;
	setAttr ".s" -type "double3" 0.20241366433765751 0.20241366433765751 0.20241366433765751 ;
createNode mesh -n "pSphereShape4" -p "pSphere4";
	rename -uid "B2D91283-44F2-3C23-8EC1-569AB833B086";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere5";
	rename -uid "1BBB0228-4391-A4D5-9D19-A6BAB434E3BD";
	setAttr ".t" -type "double3" -3.3984953375049365 0.18685472255861635 0 ;
	setAttr ".s" -type "double3" 0.20241366433765751 0.20241366433765751 0.20241366433765751 ;
createNode mesh -n "pSphereShape5" -p "pSphere5";
	rename -uid "2E88C0ED-4C00-D2CE-AD66-57B816C4DE83";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCone1";
	rename -uid "C9A860B5-4726-AF70-D8E5-518F02D9AE10";
	setAttr ".t" -type "double3" -2.2279320357098737 4.4031097375079904 0 ;
	setAttr ".r" -type "double3" 0 0 -50.02257136736975 ;
	setAttr ".s" -type "double3" 0.58867669150371915 0.58867669150371915 0.58867669150371915 ;
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "C2FB92AD-49B3-509D-B4EE-719C514F0291";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[20]" -type "float3" 0.047394376 -0.49572316 1.1175871e-08 ;
createNode transform -n "pCone2";
	rename -uid "9BD1A493-44B9-DBF3-9061-9794A9E8D072";
	setAttr ".t" -type "double3" -4.4099204962663023 4.2852541227383263 0 ;
	setAttr ".r" -type "double3" 0 0 59.130063135774591 ;
	setAttr ".s" -type "double3" 0.58867669150371915 0.58867669150371915 0.58867669150371915 ;
createNode mesh -n "pConeShape2" -p "pCone2";
	rename -uid "7A89D892-4310-C9E2-6E3A-F3B34589096A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.7377643 0.1727457
		 0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-07
		 0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573
		 0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573
		 0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631
		 0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002
		 0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005
		 0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994
		 0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[20]" -type "float3" 0.047394376 -0.49572316 1.1175871e-08 ;
	setAttr -s 21 ".vt[0:20]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 0 20 1 1 20 1 2 20 1 3 20 1 4 20 1 5 20 1 6 20 1 7 20 1 8 20 1 9 20 1
		 10 20 1 11 20 1 12 20 1 13 20 1 14 20 1 15 20 1 16 20 1 17 20 1 18 20 1 19 20 1;
	setAttr -s 21 -ch 80 ".fc[0:20]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 3 0 21 -21
		mu 0 3 20 21 41
		f 3 1 22 -22
		mu 0 3 21 22 41
		f 3 2 23 -23
		mu 0 3 22 23 41
		f 3 3 24 -24
		mu 0 3 23 24 41
		f 3 4 25 -25
		mu 0 3 24 25 41
		f 3 5 26 -26
		mu 0 3 25 26 41
		f 3 6 27 -27
		mu 0 3 26 27 41
		f 3 7 28 -28
		mu 0 3 27 28 41
		f 3 8 29 -29
		mu 0 3 28 29 41
		f 3 9 30 -30
		mu 0 3 29 30 41
		f 3 10 31 -31
		mu 0 3 30 31 41
		f 3 11 32 -32
		mu 0 3 31 32 41
		f 3 12 33 -33
		mu 0 3 32 33 41
		f 3 13 34 -34
		mu 0 3 33 34 41
		f 3 14 35 -35
		mu 0 3 34 35 41
		f 3 15 36 -36
		mu 0 3 35 36 41
		f 3 16 37 -37
		mu 0 3 36 37 41
		f 3 17 38 -38
		mu 0 3 37 38 41
		f 3 18 39 -39
		mu 0 3 38 39 41
		f 3 19 20 -40
		mu 0 3 39 40 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder2";
	rename -uid "5CC5FF62-4B0F-B631-4DC3-DB80F479E832";
	setAttr ".t" -type "double3" -2.8057835619711593 0.65137511062794862 0 ;
	setAttr ".s" -type "double3" 0.20189757101165734 0.20189757101165734 0.20189757101165734 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "591DA9A4-4466-8088-72D4-438E14B031E2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder3";
	rename -uid "18A5D7E4-422E-228A-7A08-89A0C903108E";
	setAttr ".t" -type "double3" -3.4650748240027074 0.65137511062794862 0 ;
	setAttr ".s" -type "double3" 0.20189757101165734 0.20189757101165734 0.20189757101165734 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "30013D32-4332-005A-171C-A8BF0BA3E7B2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
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
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	rename -uid "41027597-4A62-BD9A-8CC5-10A6911DDC6F";
	setAttr ".t" -type "double3" -3.8449840609870964 2.4305718510396126 0 ;
	setAttr ".r" -type "double3" 0 0 -28.919269565399304 ;
	setAttr ".s" -type "double3" 0.20189757101165734 0.20189757101165734 0.20189757101165734 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "1E6E0D16-4054-96D9-619D-91B2AE71EC69";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
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
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5";
	rename -uid "D060C7D9-46A4-E54A-B08F-B6934E2A8C8F";
	setAttr ".t" -type "double3" -2.4316376231077736 2.4305718510396126 0 ;
	setAttr ".r" -type "double3" 0 0 23.149736094780845 ;
	setAttr ".s" -type "double3" 0.20189757101165734 0.20189757101165734 0.20189757101165734 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "AE8C9AAC-4DFF-A129-B0C7-0DA43ADA95A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
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
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7FC4EAC5-456C-B492-929B-0EAFD039A0EF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "539AFFB7-4BAC-5276-5E3E-E7BF88FA351D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EC54F05A-406E-561C-F4CD-54B9862593EE";
createNode displayLayerManager -n "layerManager";
	rename -uid "34E6235C-406C-12EE-45AE-85BAA7893B66";
createNode displayLayer -n "defaultLayer";
	rename -uid "05FE70C4-461B-D8E3-28E2-849BDD6E787E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "515B6EEA-431A-6510-23DE-BCBC32191EA8";
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
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 344\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 344\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 556\n            -height 344\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 732\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
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
createNode polyUnite -n "polyUnite2";
	rename -uid "51374610-4202-04B5-F340-F48CED17E78C";
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
	setAttr -s 63 ".uvtk";
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
	setAttr -s 63 ".uvtk";
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
	setAttr -s 61 ".uvtk";
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
	setAttr -s 6 ".uvtk[20:25]" -type "float2" 0.023785165 -0.20455243 0.023785165
		 -0.20455243 0.023785165 -0.20455241 0.023785165 -0.20455241 0.023785165 -0.20455243
		 0.023785165 -0.20455241;
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
	setAttr -s 36 ".uvtk";
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
	setAttr -s 38 ".uvtk";
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
createNode groupId -n "groupId16";
	rename -uid "CB1AD33B-45BA-7FFF-BA5E-50898DA7204A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "B47E5403-4349-33DC-BCCA-00BA36A2238A";
	setAttr ".ihi" 0;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "0FE54745-4C92-06D7-5D22-50A91A18EC42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode groupId -n "groupId20";
	rename -uid "54821170-4AC3-F002-7E96-EF93773D6477";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "EB3E70C0-4FA3-E4C3-3978-E48DA83CD0F0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode polyBevel3 -n "polyBevel2";
	rename -uid "E1177872-40D8-5410-535B-6CBAE4C1790F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode groupId -n "groupId21";
	rename -uid "6BDCD65F-4920-C578-9B81-83B077D7521F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "CDB3B613-4E6B-CAB4-1BA7-968BAB6779B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode polyBevel3 -n "polyBevel3";
	rename -uid "B7511100-43B6-6B23-DB59-A4AB349AA2D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[6:7]" "e[10:12]" "e[14]" "e[16:37]" "e[44:49]" "e[56:61]" "e[68:73]" "e[80:85]" "e[92:97]" "e[104:109]" "e[116:121]" "e[128:133]" "e[140:145]" "e[152:157]" "e[164:169]" "e[176:181]" "e[188:193]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.99984769515639127 -0.017452406437283512 0
		 0 0.017452406437283512 0.99984769515639127 0 0.99496613116934896 0.052433371733654754 0.0082692886878220073 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode groupId -n "groupId22";
	rename -uid "FA02D990-454B-D60A-B757-3D9D02B6F0CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "FB3C41F8-4120-B321-524E-878AAFAC9FE0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId25";
	rename -uid "38BB66E5-4ECB-03E4-C3FA-BCBD4CB4DA98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "99AF5823-493C-1274-8AAD-1FB547996BBC";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "80BC37EC-4C55-C4C8-113F-07BD049F466F";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySphere -n "polySphere1";
	rename -uid "B4459136-4F67-3876-EEB3-D4AAF777AECC";
createNode polySphere -n "polySphere2";
	rename -uid "3F747AE0-4822-4279-90BC-78AFD2931E2C";
createNode polyCone -n "polyCone1";
	rename -uid "73CCC8D5-49CB-3B3B-4DF8-8BB69C1F06C8";
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "A7A332C2-49DA-2DBE-D1AB-309AB7D6B749";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
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
	setAttr -s 36 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 18 ".gn";
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
connectAttr "groupId26.id" "InsideCornerShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "InsideCornerShape.iog.og[0].gco";
connectAttr "groupId13.id" "Wall7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall7Shape.iog.og[0].gco";
connectAttr "groupId14.id" "Wall7Shape.ciog.cog[0].cgid";
connectAttr "groupId11.id" "Wall8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall8Shape.iog.og[0].gco";
connectAttr "groupId12.id" "Wall8Shape.ciog.cog[0].cgid";
connectAttr "bend1.og[0]" "InnerCurveShape.i";
connectAttr "groupId15.id" "InnerCurveShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "InnerCurveShape.iog.og[0].gco";
connectAttr "polySplit14.out" "InnerCurveShapeOrig.i";
connectAttr "bend1.msg" "bend1Handle.sml";
connectAttr "bend1.cur" "bend1HandleShape.cur";
connectAttr "bend1.lb" "bend1HandleShape.lb";
connectAttr "bend1.hb" "bend1HandleShape.hb";
connectAttr "groupId16.id" "OutsideCurveShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "OutsideCurveShape.iog.og[0].gco";
connectAttr "polyTweakUV18.out" "OuterCurve1Shape.i";
connectAttr "groupId17.id" "OuterCurve1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "OuterCurve1Shape.iog.og[0].gco";
connectAttr "polyTweakUV18.uvtk[0]" "OuterCurve1Shape.uvst[0].uvtw";
connectAttr "polyBevel1.out" "OutsideCorner_HPShape.i";
connectAttr "groupId20.id" "OutsideCorner_HPShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "OutsideCorner_HPShape.iog.og[0].gco";
connectAttr "groupId19.id" "OutsideCurve_HPShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "OutsideCurve_HPShape.iog.og[0].gco";
connectAttr "polyBevel2.out" "InsideCorner_HPShape.i";
connectAttr "groupId21.id" "InsideCorner_HPShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "InsideCorner_HPShape.iog.og[0].gco";
connectAttr "polyBevel3.out" "InnerCurve1Shape.i";
connectAttr "groupId22.id" "InnerCurve1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "InnerCurve1Shape.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "Floor_HP1Shape.iog.og[0].gco";
connectAttr "groupId25.id" "Floor_HP1Shape.ciog.cog[0].cgid";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "polySphere2.out" "pSphereShape2.i";
connectAttr "polyCone1.out" "pConeShape1.i";
connectAttr "polyCylinder2.out" "pCylinderShape2.i";
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
connectAttr "InnerCurveShapeOrig.w" "bend1.ip[0].ig";
connectAttr "InnerCurveShapeOrig.o" "bend1.orggeom[0]";
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
connectAttr "InnerCurveShape.wm" "polyMergeVert7.mp";
connectAttr "polyUnite4.out" "groupParts7.ig";
connectAttr "groupId15.id" "groupParts7.gi";
connectAttr "Wall8Shape.o" "polyUnite4.ip[0]";
connectAttr "Wall7Shape.o" "polyUnite4.ip[1]";
connectAttr "Wall8Shape.wm" "polyUnite4.im[0]";
connectAttr "Wall7Shape.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape6.o" "groupParts8.ig";
connectAttr "groupId17.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polyPlanarProj5.ip";
connectAttr "OuterCurve1Shape.wm" "polyPlanarProj5.mp";
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
connectAttr "OuterCurve1Shape.wm" "polyPlanarProj6.mp";
connectAttr "polyPlanarProj6.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyStraightenUVBorder1.ip";
connectAttr "polyStraightenUVBorder1.out" "polyStraightenUVBorder2.ip";
connectAttr "polyStraightenUVBorder2.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyAutoProj1.ip";
connectAttr "OuterCurve1Shape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyStraightenUVBorder3.ip";
connectAttr "polyStraightenUVBorder3.out" "polyLayoutUV4.ip";
connectAttr "polyLayoutUV4.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyPlanarProj7.ip";
connectAttr "OuterCurve1Shape.wm" "polyPlanarProj7.mp";
connectAttr "polyPlanarProj7.out" "polyTweakUV18.ip";
connectAttr "groupParts9.og" "polyBevel1.ip";
connectAttr "OutsideCorner_HPShape.wm" "polyBevel1.mp";
connectAttr "polySurfaceShape7.o" "groupParts9.ig";
connectAttr "groupId20.id" "groupParts9.gi";
connectAttr "groupParts10.og" "polyBevel2.ip";
connectAttr "InsideCorner_HPShape.wm" "polyBevel2.mp";
connectAttr "polySurfaceShape8.o" "groupParts10.ig";
connectAttr "groupId21.id" "groupParts10.gi";
connectAttr "groupParts11.og" "polyBevel3.ip";
connectAttr "InnerCurve1Shape.wm" "polyBevel3.mp";
connectAttr "polySurfaceShape9.o" "groupParts11.ig";
connectAttr "groupId22.id" "groupParts11.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "FloorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall2Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall1Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_cornerShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall8Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall7Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "InnerCurveShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "OutsideCurveShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "OuterCurve1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_HPShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_HPShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OutsideCurve_HPShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "OutsideCorner_HPShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "InsideCorner_HPShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "InnerCurve1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_HP1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_HP1Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "FloorBendShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "InsideCornerShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
// End of Modular.ma
