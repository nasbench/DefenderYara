
rule PWS_Win32_OnLineGames_CI{
	meta:
		description = "PWS:Win32/OnLineGames.CI,SIGNATURE_TYPE_PEHSTR,25 00 25 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6d 00 70 00 75 00 74 00 20 00 00 00 06 00 00 00 62 00 79 00 65 00 } //0a 00 
		$a_01_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 66 00 74 00 70 00 20 00 2d 00 73 00 3a 00 } //0a 00 
		$a_01_2 = {70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 00 00 00 00 43 00 6c 00 69 00 63 00 6b 00 } //05 00 
		$a_01_3 = {2e 00 73 00 65 00 72 00 76 00 65 00 68 00 74 00 74 00 70 00 2e 00 63 00 6f 00 6d 00 } //05 00 
		$a_01_4 = {2e 00 73 00 65 00 72 00 76 00 65 00 68 00 61 00 6c 00 66 00 6c 00 69 00 66 00 65 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_5 = {28 00 64 00 6f 00 77 00 6e 00 65 00 72 00 29 00 } //01 00 
		$a_01_6 = {28 00 66 00 74 00 75 00 70 00 65 00 72 00 29 00 } //01 00 
		$a_01_7 = {28 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 29 00 } //01 00 
		$a_01_8 = {28 00 65 00 6d 00 61 00 69 00 6c 00 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}