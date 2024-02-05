
rule TrojanSpy_iPhoneOS_XcodeGhost_A{
	meta:
		description = "TrojanSpy:iPhoneOS/XcodeGhost.A,SIGNATURE_TYPE_MACHOHSTR_EXT,16 00 16 00 13 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 65 74 48 69 64 64 65 6e 3a } //01 00 
		$a_01_1 = {45 6e 63 72 79 70 74 3a } //01 00 
		$a_01_2 = {61 70 70 65 6e 64 44 61 74 61 3a } //01 00 
		$a_01_3 = {6f 70 65 6e 55 52 4c 3a } //01 00 
		$a_01_4 = {63 6f 6e 6e 65 63 74 69 6f 6e 3a 64 69 64 52 65 63 65 69 76 65 44 61 74 61 3a } //01 00 
		$a_01_5 = {63 6f 6e 6e 65 63 74 69 6f 6e 44 69 64 46 69 6e 69 73 68 4c 6f 61 64 69 6e 67 } //01 00 
		$a_01_6 = {4c 61 75 6e 63 68 00 52 65 73 69 67 6e } //01 00 
		$a_01_7 = {50 4f 53 54 00 25 6c 75 00 43 6f 6e 74 65 6e 74 2d 4c 65 6e 67 74 68 } //01 00 
		$a_00_8 = {42 75 6e 64 6c 65 49 44 } //01 00 
		$a_00_9 = {54 69 6d 65 73 74 61 6d 70 } //01 00 
		$a_00_10 = {4f 53 56 65 72 73 69 6f 6e } //01 00 
		$a_00_11 = {44 65 76 69 63 65 54 79 70 65 } //01 00 
		$a_00_12 = {4c 61 6e 67 75 61 67 65 } //01 00 
		$a_00_13 = {43 6f 75 6e 74 72 79 43 6f 64 65 } //01 00 
		$a_00_14 = {57 69 66 69 } //05 00 
		$a_00_15 = {77 69 66 69 00 33 47 00 74 69 6d 65 73 74 61 6d 70 00 61 70 70 00 62 75 6e 64 6c 65 00 6e 61 6d 65 00 6f 73 00 74 79 70 65 00 73 74 61 74 75 73 00 6c 61 6e 67 75 61 67 65 00 63 6f 75 6e 74 72 79 00 69 64 66 76 00 6e 65 74 77 6f 72 6b 00 76 65 72 73 69 6f 6e } //0a 00 
		$a_00_16 = {68 74 74 70 3a 2f 2f 69 6e 69 74 2e 69 63 6c 6f 75 64 2d 61 6e 61 6c 79 73 69 73 2e 63 6f 6d } //0a 00 
		$a_01_17 = {68 00 74 00 70 00 73 00 3a 00 2f 00 69 00 6e 00 2e 00 63 00 72 00 61 00 2d 00 6c 00 79 00 6f 00 6d 00 75 00 64 00 67 00 } //0a 00 
		$a_01_18 = {68 00 65 00 61 00 64 00 72 00 62 00 6f 00 79 00 70 00 49 00 44 00 63 00 6e 00 6c 00 66 00 69 00 6d 00 76 00 75 00 } //00 00 
		$a_00_19 = {5d 04 00 00 d7 11 04 80 5c 2e 00 00 d8 11 04 80 00 00 01 00 } //08 00 
	condition:
		any of ($a_*)
 
}