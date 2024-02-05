
rule TrojanDownloader_O97M_Emotet_QV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.QV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 28 90 02 35 2c 20 90 02 25 2c 20 90 02 25 2c 20 90 02 25 29 90 00 } //01 00 
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 20 28 90 02 20 2e 90 02 45 29 29 90 00 } //01 00 
		$a_03_2 = {28 52 65 70 6c 61 63 65 90 02 01 28 90 02 20 2c 20 22 90 02 20 22 2c 20 22 22 29 29 90 00 } //01 00 
		$a_03_3 = {3d 20 4d 73 67 42 6f 78 28 90 02 20 2e 90 02 20 2c 20 76 62 43 72 69 74 69 63 61 6c 2c 20 90 02 20 2e 90 02 20 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}