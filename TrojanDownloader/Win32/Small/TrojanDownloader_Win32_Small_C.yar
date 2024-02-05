
rule TrojanDownloader_Win32_Small_C{
	meta:
		description = "TrojanDownloader:Win32/Small.C,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {89 02 c6 45 90 01 01 55 c6 45 90 01 01 52 c6 45 90 01 01 4c c6 45 90 01 01 44 90 00 } //0a 00 
		$a_01_1 = {00 5f 2e 65 78 65 00 } //01 00 
		$a_03_2 = {68 74 74 70 3a 2f 2f 90 02 08 2e 63 6f 6d 2f 66 69 6c 65 2e 65 78 65 90 00 } //01 00 
		$a_01_3 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 00 00 00 00 4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 00 00 00 00 } //01 00 
		$a_01_4 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 00 00 57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}