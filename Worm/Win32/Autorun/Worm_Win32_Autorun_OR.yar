
rule Worm_Win32_Autorun_OR{
	meta:
		description = "Worm:Win32/Autorun.OR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4d 00 53 00 20 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 46 00 69 00 6e 00 61 00 6c 00 20 00 56 00 61 00 6c 00 67 00 61 00 5c 00 73 00 76 00 63 00 68 00 6f 00 74 00 73 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_00_1 = {65 00 6d 00 2e 00 7b 00 36 00 34 00 35 00 46 00 46 00 30 00 34 00 30 00 2d 00 35 00 30 00 38 00 31 00 2d 00 31 00 30 00 31 00 42 00 2d 00 39 00 46 00 30 00 38 00 2d 00 30 00 30 00 41 00 41 00 30 00 30 00 32 00 46 00 39 00 35 00 34 00 45 00 7d 00 } //01 00 
		$a_00_2 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 6f 00 70 00 65 00 6e 00 } //01 00 
		$a_00_3 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 } //01 00 
		$a_01_4 = {66 72 6d 56 61 6c 67 61 00 0d 01 0a 00 54 61 73 6b 4b 69 6c 6c 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}