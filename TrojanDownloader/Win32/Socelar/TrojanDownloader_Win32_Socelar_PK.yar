
rule TrojanDownloader_Win32_Socelar_PK{
	meta:
		description = "TrojanDownloader:Win32/Socelar.PK,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {52 65 67 52 65 61 64 2c 20 4f 75 74 70 75 74 56 61 72 2c 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 2c 20 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 2c 73 79 73 62 6f 6f 74 } //01 00 
		$a_02_1 = {52 65 67 57 72 69 74 65 2c 20 52 45 47 5f 45 58 50 41 4e 44 5f 53 5a 2c 20 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 2c 20 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 2c 73 79 73 62 6f 6f 74 2c 63 3a 5c 77 69 6e 64 6f 77 73 90 02 24 2e 65 78 65 90 00 } //01 00 
		$a_02_2 = {75 72 6c 64 6f 77 6e 6c 6f 61 64 74 6f 66 69 6c 65 2c 68 74 74 70 3a 2f 2f 90 02 20 2f 36 32 34 38 31 36 36 2c 25 74 65 6d 70 25 5c 25 4c 31 25 25 4c 32 25 25 4c 33 25 25 4c 34 25 25 4c 35 25 90 00 } //01 00 
		$a_00_3 = {66 69 6c 65 72 65 61 64 2c 77 68 65 2c 25 74 65 6d 70 25 5c 25 4c 31 25 25 4c 32 25 25 4c 33 25 25 4c 34 25 25 4c 35 25 } //01 00 
		$a_02_4 = {72 65 67 65 78 6d 61 74 63 68 28 77 68 65 2c 90 02 15 2c 6d 61 73 6b 29 90 00 } //01 00 
		$a_02_5 = {75 72 6c 64 6f 77 6e 6c 6f 61 64 74 6f 66 69 6c 65 2c 25 6d 61 73 6b 31 25 2c 63 3a 5c 77 69 6e 64 6f 77 73 90 02 20 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}