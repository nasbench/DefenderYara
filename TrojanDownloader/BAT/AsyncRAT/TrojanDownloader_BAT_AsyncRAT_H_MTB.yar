
rule TrojanDownloader_BAT_AsyncRAT_H_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.H!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {51 00 7a 00 70 00 63 00 56 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 31 00 78 00 7a 00 65 00 58 00 4e 00 30 00 5a 00 57 00 30 00 7a 00 4d 00 6c 00 78 00 6a 00 62 00 57 00 51 00 75 00 5a 00 58 00 68 00 6c 00 } //02 00 
		$a_01_1 = {63 00 6e 00 56 00 75 00 59 00 58 00 4d 00 3d 00 } //02 00 
		$a_01_2 = {63 00 47 00 39 00 33 00 5a 00 58 00 4a 00 7a 00 61 00 47 00 56 00 73 00 62 00 43 00 35 00 6c 00 65 00 47 00 55 00 67 00 51 00 57 00 52 00 6b 00 4c 00 55 00 31 00 77 00 55 00 48 00 4a 00 6c 00 5a 00 6d 00 56 00 79 00 5a 00 57 00 35 00 6a 00 5a 00 53 00 41 00 74 00 52 00 58 00 68 00 6a 00 62 00 48 00 56 00 7a 00 61 00 57 00 39 00 75 00 55 00 47 00 46 00 30 00 61 00 43 00 42 00 6a 00 4f 00 6c 00 78 00 31 00 63 00 32 00 56 00 79 00 63 00 31 00 77 00 6b 00 5a 00 57 00 35 00 32 00 4f 00 6c 00 56 00 54 00 52 00 56 00 4a 00 4f 00 51 00 55 00 31 00 46 00 58 00 45 00 46 00 77 00 63 00 45 00 52 00 68 00 64 00 47 00 46 00 63 00 55 00 6d 00 39 00 68 00 62 00 57 00 6c 00 75 00 5a 00 31 00 77 00 } //02 00 
		$a_01_3 = {48 00 42 00 76 00 64 00 32 00 56 00 79 00 63 00 32 00 68 00 6c 00 62 00 47 00 77 00 75 00 5a 00 58 00 68 00 6c 00 49 00 45 00 46 00 6b 00 5a 00 43 00 31 00 4e 00 63 00 46 00 42 00 79 00 5a 00 57 00 5a 00 6c 00 63 00 6d 00 56 00 75 00 59 00 32 00 55 00 67 00 4c 00 55 00 56 00 34 00 59 00 32 00 78 00 31 00 63 00 32 00 6c 00 76 00 62 00 6c 00 42 00 68 00 64 00 47 00 67 00 67 00 51 00 7a 00 70 00 63 00 56 00 58 00 4e 00 6c 00 63 00 6e 00 4e 00 63 00 64 00 6d 00 6c 00 6a 00 64 00 47 00 6c 00 74 00 58 00 45 00 46 00 77 00 63 00 45 00 52 00 68 00 64 00 47 00 46 00 63 00 54 00 47 00 39 00 6a 00 59 00 57 00 78 00 63 00 56 00 47 00 56 00 74 00 63 00 44 00 } //02 00 
		$a_01_4 = {63 00 47 00 39 00 33 00 5a 00 58 00 4a 00 7a 00 61 00 47 00 56 00 73 00 62 00 43 00 35 00 6c 00 65 00 47 00 55 00 67 00 51 00 57 00 52 00 6b 00 4c 00 55 00 31 00 77 00 55 00 48 00 4a 00 6c 00 5a 00 6d 00 56 00 79 00 5a 00 57 00 35 00 6a 00 5a 00 53 00 41 00 74 00 52 00 58 00 68 00 6a 00 62 00 48 00 56 00 7a 00 61 00 57 00 39 00 75 00 55 00 47 00 46 00 30 00 61 00 43 00 42 00 44 00 4f 00 6c 00 78 00 56 00 63 00 32 00 56 00 79 00 63 00 31 00 77 00 6b 00 5a 00 57 00 35 00 32 00 4f 00 6c 00 56 00 54 00 52 00 56 00 4a 00 4f 00 51 00 55 00 31 00 46 00 58 00 44 00 } //02 00 
		$a_01_5 = {63 00 47 00 39 00 33 00 5a 00 58 00 4a 00 7a 00 61 00 47 00 56 00 73 00 62 00 43 00 35 00 6c 00 65 00 47 00 55 00 67 00 51 00 57 00 52 00 6b 00 4c 00 55 00 31 00 77 00 55 00 48 00 4a 00 6c 00 5a 00 6d 00 56 00 79 00 5a 00 57 00 35 00 6a 00 5a 00 53 00 41 00 74 00 52 00 58 00 68 00 6a 00 62 00 48 00 56 00 7a 00 61 00 57 00 39 00 75 00 55 00 48 00 4a 00 76 00 59 00 32 00 56 00 7a 00 63 00 79 00 42 00 44 00 4f 00 6c 00 78 00 56 00 63 00 32 00 56 00 79 00 63 00 31 00 78 00 32 00 61 00 57 00 4e 00 30 00 61 00 57 00 31 00 63 00 51 00 58 00 42 00 77 00 52 00 47 00 46 00 30 00 59 00 56 00 78 00 4d 00 62 00 32 00 4e 00 68 00 62 00 46 00 78 00 55 00 5a 00 57 00 31 00 77 00 58 00 43 00 6f 00 } //02 00 
		$a_01_6 = {43 00 31 00 45 00 61 00 58 00 4e 00 68 00 59 00 6d 00 78 00 6c 00 55 00 6d 00 56 00 68 00 62 00 48 00 52 00 70 00 62 00 57 00 56 00 4e 00 62 00 32 00 35 00 70 00 64 00 47 00 39 00 79 00 61 00 57 00 35 00 6e 00 49 00 43 00 52 00 30 00 63 00 6e 00 56 00 6c 00 } //02 00 
		$a_01_7 = {43 00 31 00 45 00 61 00 58 00 4e 00 68 00 59 00 6d 00 78 00 6c 00 55 00 32 00 4e 00 79 00 61 00 58 00 42 00 30 00 55 00 32 00 4e 00 68 00 62 00 6d 00 35 00 70 00 62 00 6d 00 63 00 67 00 4a 00 48 00 52 00 79 00 64 00 57 00 55 00 } //02 00 
		$a_01_8 = {4c 00 55 00 52 00 70 00 63 00 32 00 46 00 69 00 62 00 47 00 56 00 43 00 5a 00 57 00 68 00 68 00 64 00 6d 00 6c 00 76 00 63 00 6b 00 31 00 76 00 62 00 6d 00 6c 00 30 00 62 00 33 00 4a 00 70 00 62 00 6d 00 63 00 67 00 4a 00 48 00 52 00 79 00 64 00 57 00 55 00 } //02 00 
		$a_01_9 = {4c 00 55 00 52 00 70 00 63 00 32 00 46 00 69 00 62 00 47 00 56 00 4a 00 54 00 30 00 46 00 57 00 55 00 48 00 4a 00 76 00 64 00 47 00 56 00 6a 00 64 00 47 00 6c 00 76 00 62 00 69 00 41 00 6b 00 64 00 48 00 4a 00 31 00 5a 00 53 00 } //02 00 
		$a_01_10 = {41 00 74 00 52 00 47 00 6c 00 7a 00 59 00 57 00 4a 00 73 00 5a 00 55 00 6c 00 75 00 64 00 48 00 4a 00 31 00 63 00 32 00 6c 00 76 00 62 00 6c 00 42 00 79 00 5a 00 58 00 5a 00 6c 00 62 00 6e 00 52 00 70 00 62 00 32 00 35 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 30 00 67 00 4a 00 48 00 52 00 79 00 64 00 57 00 55 00 } //00 00 
	condition:
		any of ($a_*)
 
}