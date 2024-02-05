
rule PWS_Win32_Lineage_gen_A{
	meta:
		description = "PWS:Win32/Lineage.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,16 00 12 00 34 00 00 01 00 "
		
	strings :
		$a_00_0 = {41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 20 7a 68 2d 63 6e } //02 00 
		$a_00_1 = {6e 61 6d 65 3d 22 66 69 6c 65 31 22 3b 20 66 69 6c 65 6e 61 6d 65 3d 22 63 3a } //02 00 
		$a_00_2 = {2d 37 64 35 36 62 31 63 66 30 36 61 36 } //01 00 
		$a_00_3 = {58 2d 4d 61 69 6c 65 72 3a 20 3c 46 4f 58 4d 41 49 4c } //01 00 
		$a_00_4 = {3b 20 63 68 61 72 73 65 74 3d 22 47 42 32 33 31 32 22 } //01 00 
		$a_00_5 = {26 73 75 62 6a 65 63 74 3d } //01 00 
		$a_00_6 = {26 73 65 6e 64 65 72 3d } //01 00 
		$a_00_7 = {43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 43 6c 6f 73 65 } //02 00 
		$a_01_8 = {4c 69 6e 65 61 67 65 20 57 69 6e 64 6f 77 73 20 43 6c 69 65 6e 74 } //02 00 
		$a_01_9 = {73 65 72 76 65 72 4c 69 73 74 57 6e 64 } //01 00 
		$a_00_10 = {4c 69 6e 65 61 67 65 2e 65 78 65 } //02 00 
		$a_01_11 = {4d 61 70 6c 65 53 74 6f 72 79 43 6c 61 73 73 } //01 00 
		$a_00_12 = {6c 69 6e 2e 62 69 6e } //01 00 
		$a_01_13 = {59 42 5f 4f 6e 6c 69 6e 65 43 6c 69 65 6e 74 } //01 00 
		$a_01_14 = {44 33 44 20 57 69 6e 64 6f 77 } //01 00 
		$a_01_15 = {51 45 6c 65 6d 65 6e 74 43 6c 69 65 6e 74 20 57 69 6e 64 6f 77 } //01 00 
		$a_01_16 = {45 6c 65 6d 65 6e 74 20 43 6c 69 65 6e 74 } //01 00 
		$a_00_17 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //01 00 
		$a_01_18 = {49 45 46 72 61 6d 65 } //01 00 
		$a_00_19 = {53 6f 66 74 77 61 72 65 5c 48 61 63 6b 65 72 } //01 00 
		$a_00_20 = {53 68 65 6c 6c 5f 54 72 61 79 57 6e 64 } //01 00 
		$a_00_21 = {63 3a 5c 67 61 6d 65 } //01 00 
		$a_01_22 = {4a 75 6d 70 48 6f 6f 6b 4f 6e } //01 00 
		$a_01_23 = {4a 75 6d 70 48 6f 6f 6b 4f 66 66 } //02 00 
		$a_00_24 = {6c 6f 63 6b 70 61 73 73 3a } //02 00 
		$a_00_25 = {67 61 6d 65 3a 54 69 61 6e 54 61 6e 67 } //01 00 
		$a_00_26 = {73 65 72 76 65 72 3a 00 } //02 00 
		$a_00_27 = {2e 67 61 6d 61 6e 69 61 2e 63 6f 6d } //01 00 
		$a_01_28 = {59 75 6c 67 61 6e 67 5f 46 69 6c 65 } //01 00 
		$a_00_29 = {26 53 65 72 76 65 72 3d } //01 00 
		$a_00_30 = {26 55 73 65 72 4e 61 6d 65 3d } //01 00 
		$a_00_31 = {26 50 61 73 73 77 6f 72 64 3d } //01 00 
		$a_00_32 = {26 52 6f 6c 65 33 3d } //01 00 
		$a_00_33 = {26 52 6f 6c 65 34 3d } //01 00 
		$a_00_34 = {26 52 6f 6c 65 31 3d } //01 00 
		$a_00_35 = {26 52 6f 6c 65 32 3d } //01 00 
		$a_00_36 = {26 50 43 4e 61 6d 65 3d } //01 00 
		$a_00_37 = {26 4d 6f 6e 65 79 3d } //01 00 
		$a_00_38 = {26 53 42 6f 64 79 3d } //01 00 
		$a_00_39 = {26 54 6f 4d 61 69 6c 3d } //01 00 
		$a_00_40 = {2e 63 67 69 3f 75 69 6e 31 3d } //01 00 
		$a_00_41 = {26 70 61 79 5f 73 65 6c 65 63 74 3d } //01 00 
		$a_00_42 = {26 70 61 79 5f 63 61 72 64 5f 6e 6f 3d } //01 00 
		$a_00_43 = {26 70 61 79 5f 63 61 72 64 5f 73 6e 3d } //01 00 
		$a_00_44 = {6e 61 6d 65 3d 22 61 63 63 6f 75 6e 74 22 } //02 00 
		$a_02_45 = {41 00 50 b8 90 01 02 41 00 50 6a 03 e8 90 00 } //03 00 
		$a_02_46 = {68 00 01 00 00 8d 85 90 01 03 ff 50 53 e8 90 01 03 ff c6 85 90 01 03 ff 00 68 00 01 00 00 8d 85 90 01 03 ff 50 53 90 00 } //04 00 
		$a_02_47 = {8b 45 fc 8b 55 f8 8a 5c 10 ff 90 02 03 8d 45 f4 8b d3 e8 90 01 03 ff 8b 55 f4 8b c7 e8 90 01 03 ff ff 45 f8 4e 75 d9 90 00 } //01 00 
		$a_01_48 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00 
		$a_00_49 = {47 65 74 57 69 6e 64 6f 77 54 65 78 74 41 } //01 00 
		$a_00_50 = {47 65 74 4b 65 79 62 6f 61 72 64 54 79 70 65 } //01 00 
		$a_00_51 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //00 00 
	condition:
		any of ($a_*)
 
}