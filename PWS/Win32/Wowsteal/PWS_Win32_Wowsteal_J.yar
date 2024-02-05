
rule PWS_Win32_Wowsteal_J{
	meta:
		description = "PWS:Win32/Wowsteal.J,SIGNATURE_TYPE_PEHSTR,5f 01 5f 01 0b 00 00 64 00 "
		
	strings :
		$a_01_0 = {41 00 75 00 74 00 6f 00 6d 00 61 00 74 00 69 00 63 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 73 00 } //64 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 32 00 30 00 34 00 2e 00 31 00 33 00 2e 00 36 00 39 00 2e 00 31 00 32 00 2f 00 66 00 67 00 } //64 00 
		$a_01_2 = {25 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 25 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 20 00 2d 00 6b 00 20 00 6e 00 65 00 74 00 73 00 76 00 63 00 73 00 } //0a 00 
		$a_01_3 = {53 65 72 76 69 63 65 4d 61 69 6e } //0a 00 
		$a_01_4 = {49 6e 6a 65 63 74 53 65 72 76 69 63 65 } //0a 00 
		$a_01_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 57 } //0a 00 
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00 
		$a_01_7 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00 
		$a_01_8 = {70 00 6f 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_9 = {70 00 6f 00 6c 00 63 00 6f 00 72 00 65 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_10 = {46 46 58 49 53 65 72 76 69 63 65 2e 64 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}