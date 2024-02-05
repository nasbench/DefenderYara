
rule Ransom_Win32_BlackCat_ZA_MTB{
	meta:
		description = "Ransom:Win32/BlackCat.ZA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffffc9 00 ffffffc9 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //64 00 
		$a_01_1 = {89 d3 89 c8 31 d2 f7 f6 8b 45 f0 0f b6 04 10 89 da 30 04 0b 41 39 cf } //64 00 
		$a_03_2 = {8b 0e 8a 15 90 01 04 88 14 01 ff 46 08 a2 90 00 } //00 00 
		$a_00_3 = {5d 04 00 00 2f 81 05 80 5c 31 00 00 30 81 05 80 00 00 01 00 32 00 1b 00 52 61 6e 73 6f 6d 3a 57 69 6e 33 32 2f 4c 6f 63 6b 62 69 74 2e 48 41 21 4d 54 42 00 00 03 40 05 82 70 00 04 00 67 16 00 00 76 13 0c cd c4 97 7b 55 58 5f f8 e2 00 c4 01 00 01 20 4f be ff cd 67 16 00 00 1b 89 cf f8 27 c2 f2 9c ae d3 06 7f 00 7e 02 00 01 20 b0 9a ce ba 78 26 00 00 01 00 01 00 01 00 00 01 00 19 01 89 5a 01 66 c7 42 05 c1 c0 88 4a 07 c6 42 08 35 89 42 09 66 c7 42 0d ff e0 00 00 5d 04 00 00 30 81 05 80 5c 2c 00 00 31 81 05 80 00 00 01 00 08 00 16 00 54 72 6f 6a 61 6e 3a 48 54 4d 4c 2f 50 68 69 73 68 2e 50 41 4a } //4b 00 
	condition:
		any of ($a_*)
 
}