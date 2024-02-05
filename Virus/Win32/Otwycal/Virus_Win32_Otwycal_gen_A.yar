
rule Virus_Win32_Otwycal_gen_A{
	meta:
		description = "Virus:Win32/Otwycal.gen!A,SIGNATURE_TYPE_PEHSTR,33 00 32 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 2e 65 78 74 68 64 6f 77 73 68 5c 77 69 6e } //0a 00 
		$a_01_1 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 77 69 6e 64 6f 77 73 2e 65 78 74 } //0a 00 
		$a_01_2 = {45 30 68 78 65 63 } //0a 00 
		$a_01_3 = {68 6f 72 79 41 68 72 65 63 74 68 77 73 44 69 68 69 6e 64 6f 68 47 65 74 57 } //0a 00 
		$a_01_4 = {4d 5a 4b 45 52 4e 45 4c 33 32 2e 44 4c 4c 00 00 50 45 00 00 4c 01 03 00 be b0 11 15 13 ad 50 ff 76 34 eb 7c 48 01 0f 01 0b 01 4c 6f 61 64 4c 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 } //01 00 
		$a_01_5 = {5d 59 46 ad 85 c0 74 1f 51 56 97 ff d1 93 ac 84 c0 75 fb 38 06 74 ea 8b c6 79 05 46 33 c0 66 ad 50 53 ff d5 ab eb e7 c3 00 50 0e 00 00 10 00 00 f0 01 00 00 10 00 00 00 60 60 23 13 ef 94 23 13 62 00 00 00 60 00 00 e0 00 10 15 13 24 95 23 13 00 b0 00 00 00 60 0e 00 4c 36 00 00 00 02 00 00 e0 4b 15 13 ff 4f 23 13 4c 96 23 13 60 00 00 e0 } //01 00 
		$a_01_6 = {50 53 ff d5 ab eb e7 c3 00 50 0e 00 00 10 00 00 f0 01 00 00 10 00 00 00 60 60 23 13 73 95 23 13 5f 00 00 00 60 00 00 e0 00 10 15 13 a8 95 23 13 00 b0 00 00 00 60 0e 00 d0 36 00 00 00 02 00 00 90 4c 15 13 ff 4f 23 13 d0 96 23 13 60 00 00 e0 69 55 23 13 fc 0f 15 13 00 10 00 00 00 10 0f 00 f0 01 00 00 10 00 00 00 40 95 23 13 43 95 23 13 } //00 00 
	condition:
		any of ($a_*)
 
}