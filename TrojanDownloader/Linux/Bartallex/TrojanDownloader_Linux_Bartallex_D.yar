
rule TrojanDownloader_Linux_Bartallex_D{
	meta:
		description = "TrojanDownloader:Linux/Bartallex.D,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 68 72 28 31 30 34 29 20 2b 20 43 68 72 28 31 31 36 29 20 2b 20 43 68 72 28 31 31 36 29 20 2b 20 43 68 72 28 31 31 32 29 20 2b 20 43 68 72 28 35 38 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 43 68 72 28 31 31 35 29 20 2b 20 43 68 72 28 39 37 29 20 2b 20 43 68 72 28 31 31 38 29 20 2b 20 43 68 72 28 31 30 31 29 20 2b 20 43 68 72 28 31 31 32 29 20 2b 20 43 68 72 28 31 30 35 29 20 2b 20 43 68 72 28 39 39 29 20 2b 20 43 68 72 28 34 36 29 20 2b 20 43 68 72 28 31 31 35 29 20 2b 20 43 68 72 28 31 31 37 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 22 90 02 0a 2e 6a 70 67 22 90 00 } //01 00 
		$a_03_1 = {54 69 6d 65 56 61 6c 75 65 28 22 90 01 08 22 29 0d 0a 20 20 20 20 20 20 20 20 20 90 02 10 3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 90 00 } //01 00 
		$a_01_2 = {3d 20 22 53 68 22 20 26 20 22 65 6c 22 } //01 00 
		$a_01_3 = {26 20 43 68 72 28 31 30 38 29 20 26 20 22 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 } //00 00 
	condition:
		any of ($a_*)
 
}