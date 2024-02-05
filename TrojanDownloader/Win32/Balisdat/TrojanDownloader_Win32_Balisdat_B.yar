
rule TrojanDownloader_Win32_Balisdat_B{
	meta:
		description = "TrojanDownloader:Win32/Balisdat.B,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {4f 6c 64 5f 43 75 72 72 65 6e 74 90 02 10 2e 43 75 72 72 65 6e 74 90 02 10 70 70 45 76 65 6e 74 73 5c 53 63 68 65 6d 65 73 5c 41 70 70 73 5c 45 78 70 6c 6f 72 65 72 5c 4e 61 76 69 67 61 74 69 6e 67 5c 4f 6c 64 5f 43 75 72 72 65 6e 74 90 00 } //0a 00 
		$a_03_1 = {74 61 b1 01 ba 90 01 04 8b 45 fc e8 90 01 04 84 c0 74 4e 6a 01 b9 90 01 04 ba 90 01 04 8b 45 fc e8 90 01 04 eb 38 90 00 } //01 00 
		$a_03_2 = {3a 5c 68 73 74 64 6f 63 73 2e 65 78 65 90 02 05 68 74 74 70 3a 2f 2f 90 02 20 2f 6d 6e 2f 68 73 74 64 6f 63 73 2e 65 78 65 90 00 } //01 00 
		$a_03_3 = {3a 5c 49 6e 73 74 61 6c 6c 5f 56 43 2e 65 78 65 90 02 05 68 74 74 70 3a 2f 2f 90 02 25 2f 6d 6e 2f 49 6e 73 74 61 6c 6c 5f 56 43 2e 65 78 65 90 00 } //01 00 
		$a_03_4 = {3a 5c 68 73 70 64 2e 65 78 65 90 02 05 68 74 74 70 3a 2f 2f 90 02 20 2f 6d 6e 2f 68 73 70 64 2e 65 78 65 90 00 } //01 00 
		$a_03_5 = {3a 5c 77 69 6e 5f 68 73 74 2e 65 78 65 90 02 05 68 74 74 70 3a 2f 2f 90 02 25 2f 77 69 6e 5f 68 73 74 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}