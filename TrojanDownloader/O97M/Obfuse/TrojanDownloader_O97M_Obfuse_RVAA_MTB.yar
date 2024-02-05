
rule TrojanDownloader_O97M_Obfuse_RVAA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVAA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 75 62 68 77 6f 70 73 64 78 6f 71 62 76 66 64 2e 52 75 6e 28 78 73 6a 63 67 6e 2c 20 6a 69 79 74 71 77 6e 76 63 73 7a 77 69 6b 75 29 } //01 00 
		$a_01_1 = {69 68 6b 6b 6e 67 69 6f 63 6b 6c 66 20 3d 20 22 57 53 43 72 69 70 74 2e 73 68 65 6c 6c 22 } //01 00 
		$a_01_2 = {68 66 66 28 31 38 31 29 20 26 20 68 66 66 28 31 39 31 29 20 26 20 68 66 66 28 32 31 34 29 20 26 20 68 66 66 28 31 34 36 29 20 26 20 68 66 66 28 31 36 31 29 20 26 20 68 66 66 28 31 38 31 29 20 26 20 68 66 66 28 31 34 36 29 20 26 20 68 66 66 28 31 39 34 29 20 26 20 68 66 66 28 32 32 35 29 20 26 20 68 66 66 28 32 30 38 29 20 26 20 68 66 66 28 32 33 33 29 20 26 20 68 66 66 28 32 30 38 29 20 26 20 68 66 66 28 31 38 33 29 20 26 20 68 66 66 28 31 39 36 29 20 26 20 68 66 66 28 32 32 39 29 20 26 20 68 66 66 28 32 30 38 29 } //01 00 
		$a_01_3 = {68 66 66 20 3d 20 43 68 72 28 62 67 66 62 67 20 2d 20 31 31 34 29 } //00 00 
	condition:
		any of ($a_*)
 
}