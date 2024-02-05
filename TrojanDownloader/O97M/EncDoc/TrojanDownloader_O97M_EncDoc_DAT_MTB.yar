
rule TrojanDownloader_O97M_EncDoc_DAT_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.DAT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 22 20 28 42 79 56 61 6c 20 70 43 61 6c 6c 65 72 20 41 73 20 4c 6f 6e 67 2c 20 5f } //01 00 
		$a_01_1 = {42 79 56 61 6c 20 73 7a 55 52 4c 20 41 73 20 53 74 72 69 6e 67 2c 20 42 79 56 61 6c 20 73 7a 46 69 6c 65 4e 61 6d 65 20 41 73 20 53 74 72 69 6e 67 2c 20 5f } //01 00 
		$a_01_2 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 44 61 73 65 72 74 28 29 } //01 00 
		$a_01_3 = {48 47 53 48 72 66 65 79 61 74 67 64 72 6a 20 3d 20 43 68 72 24 28 31 30 34 29 20 26 20 43 68 72 24 28 31 31 36 29 20 26 20 43 68 72 24 28 31 31 36 29 20 26 20 43 68 72 24 28 31 31 32 29 20 26 20 43 68 72 24 28 35 38 29 20 26 20 43 68 72 24 28 34 37 29 20 26 20 43 68 72 24 28 34 37 29 20 26 20 53 68 65 65 74 73 28 43 68 72 24 28 36 38 29 20 26 20 43 68 72 24 28 31 31 31 29 20 26 20 43 68 72 24 28 39 39 29 20 26 20 43 68 72 24 28 31 31 35 29 29 2e 52 61 6e 67 65 28 43 68 72 24 28 36 35 29 20 26 20 43 68 72 24 28 35 31 29 20 26 20 43 68 72 24 28 35 33 29 29 } //01 00 
		$a_01_4 = {64 6c 70 61 74 68 20 3d 20 53 68 65 65 74 73 28 43 68 72 24 28 36 38 29 20 26 20 43 68 72 24 28 31 31 31 29 20 26 20 43 68 72 24 28 39 39 29 20 26 20 43 68 72 24 28 31 31 35 29 29 2e 52 61 6e 67 65 28 43 68 72 24 28 38 32 29 20 26 20 43 68 72 24 28 35 30 29 29 } //01 00 
		$a_03_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 48 47 53 48 72 66 65 79 61 74 67 64 72 6a 2c 20 64 6c 70 61 74 68 2c 20 30 2c 20 30 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}