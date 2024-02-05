
rule TrojanDownloader_Win32_VB_DE{
	meta:
		description = "TrojanDownloader:Win32/VB.DE,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_02_0 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 90 02 04 6b 00 33 00 34 00 6c 00 75 00 70 00 61 00 90 00 } //02 00 
		$a_02_1 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 90 02 0f 2e 00 65 00 78 00 65 00 90 01 06 61 00 6c 00 67 00 63 00 73 00 2e 00 65 00 78 00 65 00 90 00 } //02 00 
		$a_00_2 = {5c 00 43 00 6c 00 65 00 6d 00 69 00 73 00 2d 00 47 00 61 00 79 00 5c 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 31 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_00_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 00 } //01 00 
		$a_00_4 = {4c 6f 61 64 45 58 45 00 } //00 00 
	condition:
		any of ($a_*)
 
}