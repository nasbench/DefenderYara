
rule TrojanDownloader_Win32_Vxgame{
	meta:
		description = "TrojanDownloader:Win32/Vxgame,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 2a 00 00 06 00 "
		
	strings :
		$a_00_0 = {8b fe 83 c9 ff 33 c0 33 d2 f2 ae f7 d1 49 74 15 80 04 32 } //06 00 
		$a_00_1 = {53 ff 15 70 31 30 40 00 0f 42 37 c0 33 db 33 44 04 14 00 00 89 85 } //06 00 
		$a_00_2 = {ff 15 6c 10 40 00 0f b7 c0 3d 04 14 00 00 89 85 } //05 00 
		$a_01_3 = {75 73 62 67 67 35 62 6d 6d } //05 00 
		$a_01_4 = {30 62 65 6d 70 62 65 2f 71 69 71 } //05 00 
		$a_01_5 = {69 75 75 71 3b 30 30 } //05 00 
		$a_00_6 = {83 c8 ff 40 80 3c 01 00 75 f9 } //05 00 
		$a_00_7 = {83 c4 38 89 c3 89 f0 25 ff 00 00 00 83 c0 1d } //05 00 
		$a_00_8 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 73 65 74 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 27 25 73 27 20 65 6e 61 62 6c 65 } //04 00 
		$a_01_9 = {2f 63 6a 7b 00 75 79 } //04 00 
		$a_00_10 = {ff ff 10 04 00 00 0f 84 } //04 00 
		$a_00_11 = {ff ff 10 04 00 00 bf b0 } //03 00 
		$a_00_12 = {74 72 61 66 66 34 61 6c 6c 2e 62 69 7a } //03 00 
		$a_00_13 = {00 00 63 3a 00 00 53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //03 00 
		$a_01_14 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //03 00 
		$a_01_15 = {2f 71 69 71 } //03 00 
		$a_01_16 = {2f 63 6a 7b } //03 00 
		$a_01_17 = {76 78 76 2e 70 68 70 } //03 00 
		$a_01_18 = {63 6e 74 72 2e 70 68 70 } //03 00 
		$a_01_19 = {73 76 63 70 2e 63 73 76 } //03 00 
		$a_00_20 = {65 00 25 73 5c 76 78 } //02 00 
		$a_01_21 = {74 69 62 73 2e } //02 00 
		$a_01_22 = {70 72 6f 78 79 2e } //02 00 
		$a_01_23 = {7a 67 61 6d 65 31 2e 65 78 65 } //02 00 
		$a_01_24 = {6b 65 72 6e 65 6c 73 38 2e 65 78 65 } //02 00 
		$a_00_25 = {89 d8 25 ff 00 00 00 83 c0 17 88 85 } //02 00 
		$a_00_26 = {ff ff 89 da c1 ea 08 88 95 } //02 00 
		$a_01_27 = {6e 6f 74 6f 75 74 70 6f 73 74 } //01 00 
		$a_01_28 = {68 69 64 65 5f } //01 00 
		$a_01_29 = {75 6e 5f 68 69 64 65 5f } //01 00 
		$a_01_30 = {5f 68 69 64 65 } //01 00 
		$a_01_31 = {5f 75 6e 5f 68 69 64 65 } //01 00 
		$a_01_32 = {5f 75 6e 68 69 64 65 } //01 00 
		$a_01_33 = {47 65 74 53 79 73 74 65 6d 44 65 66 61 75 6c 74 4c 61 6e 67 49 44 } //01 00 
		$a_01_34 = {4f 62 74 61 69 6e 55 73 65 72 41 67 65 6e 74 53 74 72 69 6e 67 } //01 00 
		$a_01_35 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //01 00 
		$a_01_36 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 } //01 00 
		$a_01_37 = {4e 74 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00 
		$a_01_38 = {4e 74 51 75 65 72 79 44 69 72 65 63 74 6f 72 79 46 69 6c 65 } //01 00 
		$a_01_39 = {4e 74 45 6e 75 6d 65 72 61 74 65 56 61 6c 75 65 4b 65 79 } //01 00 
		$a_00_40 = {25 73 25 73 25 73 25 73 } //01 00 
		$a_00_41 = {25 63 25 63 25 63 25 63 } //00 00 
	condition:
		any of ($a_*)
 
}