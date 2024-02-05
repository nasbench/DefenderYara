
rule TrojanDownloader_Win32_Small_ZZ{
	meta:
		description = "TrojanDownloader:Win32/Small.ZZ,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {6f 00 6c 00 6c 00 79 00 64 00 62 00 67 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {66 00 69 00 6c 00 65 00 6d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_2 = {77 00 68 00 69 00 72 00 65 00 73 00 68 00 61 00 72 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_3 = {43 00 3a 00 5c 00 66 00 69 00 6c 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_4 = {2a 00 5c 00 41 00 45 00 3a 00 5c 00 53 00 74 00 75 00 66 00 66 00 5c 00 4c 00 69 00 6c 00 69 00 74 00 68 00 20 00 50 00 72 00 65 00 6d 00 69 00 75 00 6d 00 5c 00 53 00 74 00 61 00 72 00 74 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 6b 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_00_5 = {72 00 65 00 67 00 6d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_6 = {56 00 42 00 21 00 43 00 52 00 59 00 50 00 54 00 2e 00 4c 00 49 00 4c 00 49 00 54 00 48 00 21 00 } //01 00 
		$a_00_7 = {70 00 72 00 6f 00 63 00 6d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_8 = {44 00 45 00 43 00 52 00 59 00 50 00 54 00 3a 00 20 00 2a 00 24 00 } //01 00 
		$a_01_9 = {67 6d 6b 67 6c 64 66 67 66 64 67 6f } //00 00 
	condition:
		any of ($a_*)
 
}