
rule TrojanDownloader_O97M_Obfuse_KF{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KF,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 67 69 6d 6d 65 28 29 29 } //0a 00 
		$a_00_1 = {20 3d 20 69 6c 65 73 2e 67 65 74 73 70 65 63 69 61 6c 46 6f 6c 44 65 72 28 32 29 20 26 20 22 5c 2e 2e 5c 2e 2e 5c 52 6f 61 6d 69 6e 67 5c 4d 69 63 72 4f 53 4f 66 74 5c 57 69 6e 44 4f 57 73 5c 53 74 41 52 54 20 4d 65 6e 75 5c 50 72 6f 47 52 41 6d 73 5c 53 74 61 52 54 75 70 22 } //0a 00 
		$a_01_2 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 64 65 63 6f 64 65 28 } //0a 00 
		$a_01_3 = {20 3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 62 62 69 61 2c 20 65 79 61 6b 28 } //0a 00 
		$a_01_4 = {20 3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 62 65 71 6f 2c 20 6b 7a 66 6a 28 } //0a 00 
		$a_01_5 = {2e 47 65 74 28 4a 75 6e 65 28 22 31 30 36 31 32 34 31 32 39 30 37 30 30 36 39 31 31 34 30 39 39 31 33 33 31 33 30 31 31 38 31 32 30 31 33 34 31 33 34 22 29 29 2e 43 72 65 61 74 65 20 } //0a 00 
		$a_00_6 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 45 6e 76 69 72 6f 6e 28 44 52 54 59 55 49 55 55 28 } //0a 00 
		$a_00_7 = {2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 65 64 30 30 30 31 30 30 30 30 30 31 30 28 42 49 55 46 52 59 47 46 45 55 46 42 42 43 47 44 2e 50 72 6f 63 65 73 73 4e 61 6d 65 2e 54 65 78 74 29 2c 20 } //0a 00 
		$a_00_8 = {20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 70 75 22 20 26 20 22 62 22 20 26 20 22 6c 22 20 26 20 22 69 63 22 29 } //00 00 
	condition:
		any of ($a_*)
 
}