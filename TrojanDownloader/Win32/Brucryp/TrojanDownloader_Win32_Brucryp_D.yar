
rule TrojanDownloader_Win32_Brucryp_D{
	meta:
		description = "TrojanDownloader:Win32/Brucryp.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 25 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_1 = {57 00 69 00 6e 00 52 00 65 00 73 00 53 00 79 00 6e 00 63 00 00 00 } //01 00 
		$a_01_2 = {2e 00 62 00 6e 00 73 00 73 00 79 00 6e 00 63 00 2e 00 75 00 73 00 00 00 } //01 00 
		$a_01_3 = {43 00 72 00 79 00 70 00 74 00 6f 00 55 00 70 00 64 00 61 00 74 00 65 00 00 00 } //01 00 
		$a_01_4 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 2e 00 65 00 78 00 65 00 2e 00 74 00 70 00 6c 00 00 00 } //00 00 
		$a_00_5 = {78 39 01 } //00 05 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Brucryp_D_2{
	meta:
		description = "TrojanDownloader:Win32/Brucryp.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 72 00 79 00 70 00 74 00 6f 00 55 00 70 00 64 00 61 00 74 00 65 00 00 00 } //01 00 
		$a_01_1 = {2e 00 62 00 6e 00 73 00 73 00 79 00 6e 00 63 00 2e 00 75 00 73 00 00 00 } //02 00 
		$a_01_2 = {69 00 70 00 63 00 73 00 79 00 6e 00 63 00 74 00 72 00 74 00 68 00 00 00 } //02 00 
		$a_01_3 = {69 00 70 00 63 00 69 00 6e 00 70 00 72 00 6f 00 63 00 73 00 79 00 6e 00 63 00 00 00 } //01 00 
		$a_01_4 = {57 00 69 00 6e 00 52 00 65 00 73 00 53 00 79 00 6e 00 63 00 00 00 } //01 00 
		$a_01_5 = {75 79 6c 6b 75 74 2e 74 70 6c 00 } //01 00 
		$a_01_6 = {64 73 66 73 64 66 2e 74 70 6c 00 } //01 00 
		$a_01_7 = {25 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 25 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_8 = {63 00 65 00 72 00 74 00 5f 00 76 00 25 00 64 00 5f 00 25 00 64 00 2e 00 74 00 70 00 6c 00 00 00 } //01 00 
		$a_01_9 = {68 72 74 75 6b 6a 79 72 75 2e 74 70 6c 00 } //00 00 
		$a_00_10 = {5d 04 00 } //00 2f 
	condition:
		any of ($a_*)
 
}