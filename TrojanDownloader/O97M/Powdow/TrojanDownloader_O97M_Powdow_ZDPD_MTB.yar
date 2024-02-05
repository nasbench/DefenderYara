
rule TrojanDownloader_O97M_Powdow_ZDPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.ZDPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 31 39 35 2e 31 32 33 2e 32 32 36 2e 37 34 2f 62 31 2f 90 02 0f 2e 65 78 65 22 22 20 90 02 1f 2e 65 78 65 2e 65 78 65 20 26 26 20 90 1b 01 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //01 00 
		$a_03_1 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 77 69 6e 6d 61 6e 69 6e 64 75 73 74 72 69 65 73 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 5a 7a 72 6f 68 67 73 72 6e 2e 65 78 65 22 22 20 90 02 1f 2e 65 78 65 2e 65 78 65 20 26 26 20 90 1b 00 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}