
rule TrojanDownloader_O97M_Emotet_SAM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SAM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {46 75 6e 63 74 69 6f 6e 20 90 02 20 28 29 90 0c 02 00 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 90 02 25 20 3d 20 90 02 25 20 3d 20 90 02 20 20 2b 20 90 02 20 2e 53 74 6f 72 79 52 61 6e 67 65 73 28 77 64 4d 61 69 6e 54 65 78 74 53 74 6f 72 79 29 20 2b 20 90 02 25 47 6f 54 6f 20 90 02 15 53 65 74 90 00 } //01 00 
		$a_03_1 = {45 6e 64 20 49 66 90 02 10 3a 90 02 20 20 3d 20 22 90 02 20 3a 77 90 02 20 69 6e 90 02 20 33 90 02 20 32 90 02 20 5f 90 02 20 22 90 02 15 47 6f 54 6f 90 00 } //01 00 
		$a_03_2 = {45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e 20 90 02 20 28 90 02 20 29 90 02 20 20 3d 20 52 65 70 6c 61 63 65 28 90 02 20 2c 20 22 90 02 15 22 2c 20 90 02 20 29 90 00 } //01 00 
		$a_03_3 = {45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e 20 90 02 20 28 90 02 20 29 90 0c 02 00 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}