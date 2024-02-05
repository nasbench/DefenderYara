
rule TrojanDownloader_O97M_Bartallex_O{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.O,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2b 20 22 3a 2f 2f 22 } //01 00 
		$a_01_1 = {2b 20 22 2e 62 22 20 26 20 22 61 74 22 } //01 00 
		$a_01_2 = {2b 20 22 78 22 20 26 20 22 74 22 } //01 00 
		$a_01_3 = {3d 20 28 61 2e 72 65 73 70 6f 6e 73 65 74 65 78 74 29 } //01 00 
		$a_01_4 = {3d 20 43 53 74 72 28 49 6e 74 28 28 61 20 2f 20 32 20 2a 20 52 6e 64 29 20 2b 20 61 29 29 } //00 00 
	condition:
		any of ($a_*)
 
}