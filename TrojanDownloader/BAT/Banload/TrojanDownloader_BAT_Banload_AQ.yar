
rule TrojanDownloader_BAT_Banload_AQ{
	meta:
		description = "TrojanDownloader:BAT/Banload.AQ,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {2e 00 7a 00 69 00 70 00 90 01 02 43 00 6f 00 70 00 79 00 48 00 65 00 72 00 65 00 90 01 02 49 00 74 00 65 00 6d 00 73 00 90 01 02 72 00 75 00 6e 00 61 00 73 00 90 01 02 5c 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //0a 00 
		$a_03_1 = {25 16 02 7b 08 00 00 04 72 89 00 00 70 28 90 01 01 00 00 06 6f 90 01 01 00 00 06 72 8d 00 00 70 28 90 01 01 00 00 0a a2 14 90 00 } //01 00 
		$a_03_2 = {2e 7a 69 70 90 02 06 54 53 50 6c 61 79 65 72 90 00 } //01 00 
		$a_03_3 = {2e 7a 69 70 90 02 06 44 72 6f 70 58 90 00 } //01 00 
		$a_03_4 = {2e 7a 69 70 90 02 06 41 66 74 65 72 58 90 00 } //01 00 
		$a_03_5 = {44 72 6f 70 58 90 02 06 68 74 74 70 3a 2f 2f 90 00 } //00 00 
		$a_00_6 = {5d 04 00 00 20 70 03 80 5c 1f 00 } //00 21 
	condition:
		any of ($a_*)
 
}