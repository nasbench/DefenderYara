
rule TrojanDownloader_O97M_Dridex_PRW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.PRW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 63 6c 69 65 6e 74 65 31 39 2e 76 65 74 63 61 72 65 62 61 68 69 61 2e 63 6f 6d 2f 6d 69 64 69 61 73 2f 61 6e 65 78 6f 73 2f 33 2f 34 2f 37 44 49 33 59 63 50 32 41 73 3c 41 72 36 58 76 2e 70 68 70 22 2c } //01 00 
		$a_01_1 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 70 72 6f 6d 6a 71 40 7c 7a 6a 71 40 7c 7a 6f 74 65 63 6b 73 61 2e 63 6f 6d 2f 63 73 73 6a 73 2f 73 69 4b 64 71 46 4d 5a 2e 70 68 70 22 2c } //01 00 
		$a_01_2 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 77 77 77 2e 73 61 6c 61 6f 76 69 65 64 65 6c 75 78 65 2e 63 6f 6d 2e 62 72 2f 70 6f 73 74 73 2f 37 4c 7a 34 74 49 65 69 4e 32 68 65 61 42 5a 74 48 54 39 2e 70 68 70 22 2c } //01 00 
		$a_01_3 = {3d 20 52 65 70 6c 61 63 65 28 22 76 52 24 58 69 7a 68 74 74 70 73 3a 2f 2f 76 75 6c 6b 61 76 52 24 58 69 7a 6e 76 65 67 61 73 2e 76 52 24 58 69 7a 6b 76 52 24 58 69 7a 61 63 68 65 72 64 65 79 61 6c 2e 63 6f 6d 2f 63 73 73 2f 66 6f 6e 74 2d 61 77 65 73 6f 6d 65 2d 34 2e 37 2e 30 76 52 24 58 69 7a 2f 63 76 52 24 58 69 7a 73 73 2f 64 45 7a 63 4d 70 35 4d 33 4d 37 49 46 2e 70 68 70 22 2c } //01 00 
		$a_01_4 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 71 75 69 72 6f 70 72 61 78 69 61 7a 6f 6e 61 73 75 6c 2e 3a 6f 23 2b 2a 63 6f 6d 2e 62 72 3a 6f 23 2b 2a 2f 6d 61 6e 61 67 65 72 2f 3a 6f 23 2b 2a 62 6f 77 65 72 5f 63 6f 6d 70 6f 6e 65 6e 74 73 2f 66 75 6c 6c 63 61 6c 65 6e 64 61 72 2f 64 69 73 3a 6f 23 2b 2a 74 2f 6c 61 6e 67 2f 42 6b 75 64 33 65 4d 37 37 72 2e 70 68 70 22 2c } //01 00 
		$a_01_5 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 63 6c 69 65 6e 74 65 34 7a 73 3a 4c 25 30 79 2e 76 65 74 63 61 72 65 62 61 68 69 61 2e 63 6f 6d 2f 6d 69 64 69 61 73 2f 61 6e 65 78 6f 7a 73 3a 4c 25 30 79 73 2f 36 2f 37 2f 31 7a 73 3a 4c 25 30 79 44 30 38 39 4a 4a 39 77 4f 6d 72 2e 70 68 70 22 2c } //01 00 
		$a_01_6 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 64 65 63 61 6d 62 72 61 2e 63 6f 6d 2f 7a 70 68 6f 74 6f 2f 7a 70 2d 63 6f 72 65 2f 7a 70 2d 65 78 74 65 6e 73 69 6f 6e 73 2f 63 6f 6d 2b 4d 29 2b 4a 6d 6f 6e 2f 61 64 47 61 6c 6c 65 72 79 2f 48 4a 46 59 51 4a 56 51 39 78 51 2e 70 68 70 22 2c } //01 00 
		$a_01_7 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 73 69 6d 73 61 70 6f 70 65 6d 62 61 2e 6e 65 74 2e 62 72 2f 6d 61 69 6c 2f 50 48 50 4d 61 69 6c 65 72 2d 6d 61 73 74 65 72 2f 59 66 2d 54 2b 4c 65 78 61 6d 70 6c 65 73 2f 69 6d 61 67 65 73 2f 55 66 65 46 72 4d 49 47 73 6a 4f 47 71 2e 70 68 70 22 2c } //01 00 
		$a_01_8 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 31 51 21 50 33 26 21 3a 2f 2f 63 65 6e 74 72 61 6c 2e 67 61 6e 68 61 74 65 6d 70 6f 2e 63 6f 6d 2f 74 70 6c 2f 69 6d 67 2f 62 72 61 6e 64 31 51 21 50 33 26 21 73 2f 54 4d 6a 6c 62 74 4d 78 2e 70 68 70 22 2c } //01 00 
		$a_01_9 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 74 3e 7a 3a 36 71 38 3a 2f 2f 67 61 72 79 68 61 72 64 69 6e 2e 6d 65 2f 70 68 6f 74 74 3e 7a 3a 36 71 38 6f 73 2f 74 68 65 6d 65 73 2f 64 65 66 74 3e 7a 3a 36 71 38 61 75 6c 74 2f 6a 73 2f 70 6c 75 67 69 6e 73 2f 75 57 36 32 41 39 47 46 30 6a 6f 34 47 5a 2e 70 68 70 22 2c } //00 00 
	condition:
		any of ($a_*)
 
}