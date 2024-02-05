
rule TrojanDownloader_O97M_Obfuse_PRZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PRZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {3d 20 22 22 61 48 52 30 63 44 6f 76 4c 7a 45 35 4f 43 34 78 4d 69 34 32 4e 69 34 78 4d 44 6b 76 62 6b 74 6c 57 58 42 71 57 6d 70 5a 61 56 42 30 51 30 4a 75 4c 6d 56 34 5a 51 3d 3d 22 22 20 22 20 2b 20 76 62 43 72 4c 66 } //01 00 
		$a_00_1 = {3d 22 22 57 58 42 71 57 6d 70 5a 61 56 42 30 51 30 4a 75 4c 6d 56 34 5a 51 3d 3d 22 22 22 20 2b 20 76 62 43 72 4c 66 } //01 00 
		$a_02_2 = {3a 45 78 65 63 75 74 65 28 90 02 05 29 22 22 29 22 20 2b 20 76 62 43 72 4c 66 90 00 } //01 00 
		$a_02_3 = {45 78 65 63 75 74 65 28 22 22 70 61 74 68 20 3d 20 70 61 74 68 20 2b 20 22 22 22 22 64 61 74 61 5c 90 02 05 22 22 22 22 20 2b 20 22 22 22 22 2e 74 78 74 22 22 22 22 22 22 29 22 20 2b 20 76 62 43 72 4c 66 90 00 } //01 00 
		$a_00_4 = {3d 20 22 43 3a 5c 22 20 2b 20 78 78 78 78 78 70 61 74 68 20 2b 20 22 53 79 73 74 65 6d 33 32 5c 63 22 20 2b 20 22 73 63 72 69 70 74 22 20 2b 20 22 2e 65 78 22 } //01 00 
		$a_02_5 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 45 76 61 6c 20 28 90 02 25 2e 52 75 6e 28 50 61 74 68 20 2b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}