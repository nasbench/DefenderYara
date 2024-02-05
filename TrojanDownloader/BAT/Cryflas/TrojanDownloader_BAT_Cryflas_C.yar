
rule TrojanDownloader_BAT_Cryflas_C{
	meta:
		description = "TrojanDownloader:BAT/Cryflas.C,SIGNATURE_TYPE_PEHSTR_EXT,11 00 10 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6a 00 61 00 76 00 61 00 2d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 6e 00 64 00 69 00 72 00 2e 00 74 00 78 00 74 00 } //04 00 
		$a_01_1 = {73 00 74 00 61 00 72 00 74 00 3d 00 20 00 22 00 7b 00 30 00 7d 00 22 00 20 00 20 00 } //02 00 
		$a_01_2 = {6a 00 61 00 76 00 61 00 2d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 74 00 78 00 74 00 } //02 00 
		$a_01_3 = {6d 65 74 68 6f 64 5f 32 00 66 6c 61 73 68 70 6c 61 79 65 72 5f 4c 6f 61 64 } //02 00 
		$a_01_4 = {66 6c 61 73 68 70 6c 61 79 65 72 5f 4c 6f 61 64 00 45 76 65 6e 74 41 72 67 73 } //01 00 
		$a_01_5 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //00 00 
		$a_00_6 = {87 10 00 00 f2 97 45 14 fa 22 47 } //86 79 
	condition:
		any of ($a_*)
 
}