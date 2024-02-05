
rule TrojanDownloader_O97M_Emotet_SV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 6f 20 57 68 69 6c 65 20 90 02 15 2e 43 72 65 61 74 65 28 4e 75 6c 6c 20 26 90 00 } //01 00 
		$a_03_1 = {2c 20 4d 53 46 6f 72 6d 73 2c 20 54 65 78 74 42 6f 78 22 90 0c 02 00 50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 90 02 09 53 65 6c 65 63 74 20 43 61 73 65 90 00 } //01 00 
		$a_03_2 = {2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 20 2b 20 90 05 0f 06 41 2d 5a 61 2d 7a 2e 90 00 } //01 00 
		$a_03_3 = {46 75 6e 63 74 69 6f 6e 20 90 02 16 28 29 90 02 09 53 65 6c 65 63 74 20 43 61 73 65 90 00 } //01 00 
		$a_03_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 05 0f 06 41 2d 5a 61 2d 7a 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}