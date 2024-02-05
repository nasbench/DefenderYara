
rule Worm_Win32_DungCoi_PA_MTB{
	meta:
		description = "Worm:Win32/DungCoi.PA!MTB,SIGNATURE_TYPE_PEHSTR,09 00 09 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 4e 00 57 00 42 00 2e 00 64 00 61 00 74 00 } //02 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 75 00 6e 00 67 00 63 00 6f 00 69 00 76 00 62 00 2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 70 00 61 00 67 00 65 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 4e 00 57 00 42 00 2e 00 74 00 78 00 74 00 } //02 00 
		$a_01_2 = {43 00 3a 00 5c 00 50 00 4e 00 67 00 61 00 2e 00 74 00 78 00 74 00 } //02 00 
		$a_01_3 = {43 00 68 00 75 00 63 00 20 00 6d 00 75 00 6e 00 67 00 2c 00 20 00 62 00 61 00 6e 00 20 00 64 00 61 00 20 00 74 00 61 00 6d 00 20 00 74 00 68 00 6f 00 69 00 20 00 74 00 68 00 6f 00 61 00 74 00 20 00 6b 00 68 00 6f 00 69 00 20 00 57 00 6f 00 72 00 6d 00 20 00 44 00 75 00 6e 00 67 00 43 00 6f 00 69 00 } //01 00 
		$a_01_4 = {79 00 61 00 68 00 6f 00 6f 00 62 00 75 00 64 00 64 00 79 00 6d 00 61 00 69 00 6e 00 } //00 00 
		$a_01_5 = {00 67 } //16 00 
	condition:
		any of ($a_*)
 
}