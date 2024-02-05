
rule Adware_Win32_BetterSurf{
	meta:
		description = "Adware:Win32/BetterSurf,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {5c 69 65 5c 52 65 6c 65 61 73 65 5c 42 65 74 74 65 72 53 90 12 01 00 72 66 2e 70 64 62 90 00 } //05 00 
		$a_03_1 = {43 43 6f 6d 4f 62 6a 65 63 74 40 56 43 42 65 74 74 65 72 53 90 12 01 00 72 66 42 48 4f 40 40 40 41 54 4c 40 40 90 00 } //01 00 
		$a_03_2 = {00 42 65 74 74 65 72 53 90 12 01 00 72 66 2e 64 6c 6c 00 90 00 } //01 00 
		$a_01_3 = {46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 00 00 00 00 4d 00 61 00 6b 00 69 00 6e 00 67 00 20 00 77 00 65 00 62 00 20 00 62 00 72 00 6f 00 77 00 73 00 69 00 6e 00 67 00 20 00 6d 00 6f 00 72 00 65 00 20 00 65 00 6e 00 6a 00 6f 00 79 00 61 00 62 00 6c 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_BetterSurf_2{
	meta:
		description = "Adware:Win32/BetterSurf,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 08 8d 55 f0 52 50 8b 81 b0 01 00 00 89 7d fc ff d0 68 90 01 04 ff 15 90 01 04 89 45 08 3b c7 75 90 01 01 68 0e 00 07 80 e8 90 01 04 8b 35 90 01 04 68 90 01 04 c6 45 fc 01 ff d6 90 00 } //02 00 
		$a_02_1 = {43 43 6f 6d 4f 62 6a 65 63 74 40 56 43 57 65 62 65 78 70 45 6e 68 61 6e 63 65 64 90 02 10 42 48 4f 40 40 40 41 54 4c 40 40 90 00 } //01 00 
		$a_00_2 = {27 00 77 00 77 00 77 00 2e 00 6a 00 73 00 75 00 74 00 69 00 6c 00 73 00 2e 00 6e 00 65 00 74 00 2f 00 65 00 78 00 74 00 2e 00 6a 00 73 00 3f 00 63 00 3d 00 } //01 00 
		$a_00_3 = {73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 65 00 74 00 41 00 74 00 74 00 72 00 69 00 62 00 75 00 74 00 65 00 28 00 27 00 69 00 64 00 27 00 2c 00 27 00 77 00 73 00 75 00 5f 00 6a 00 73 00 27 00 29 00 } //01 00 
		$a_00_4 = {69 00 66 00 28 00 68 00 65 00 61 00 64 00 20 00 26 00 26 00 20 00 21 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 67 00 65 00 74 00 45 00 6c 00 65 00 6d 00 65 00 6e 00 74 00 42 00 79 00 49 00 64 00 28 00 27 00 77 00 73 00 75 00 5f 00 6a 00 73 00 27 00 29 00 29 00 } //01 00 
		$a_00_5 = {69 00 66 00 28 00 74 00 6f 00 70 00 20 00 3d 00 3d 00 20 00 73 00 65 00 6c 00 66 00 29 00 20 00 7b 00 20 00 20 00 20 00 20 00 76 00 61 00 72 00 20 00 73 00 63 00 72 00 69 00 70 00 74 00 20 00 3d 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 63 00 72 00 65 00 61 00 74 00 65 00 45 00 6c 00 65 00 6d 00 65 00 6e 00 74 00 28 00 27 00 73 00 63 00 72 00 69 00 70 00 74 00 27 00 29 00 3b 00 } //01 00 
		$a_02_6 = {57 00 65 00 62 00 65 00 78 00 70 00 45 00 6e 00 68 00 61 00 6e 00 63 00 65 00 64 00 90 01 02 61 00 6c 00 70 00 68 00 61 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}