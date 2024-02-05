
rule Ransom_Win32_Fortrypt_A{
	meta:
		description = "Ransom:Win32/Fortrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {28 25 69 29 00 2a 00 5c 00 25 30 32 58 00 7b 25 73 31 7d 00 7b 25 73 32 7d 00 7b 25 73 33 7d 00 77 61 6c 6c 00 2e 62 6d 70 00 2e 00 2e 2e 00 25 } //01 00 
		$a_01_1 = {63 68 63 70 20 31 32 35 31 0d 0a 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 0d 0a 64 69 72 20 2a 20 3e 20 22 25 73 22 0d 0a 64 65 6c 20 2f 66 20 } //01 00 
		$a_01_2 = {33 c0 04 76 aa 04 fd aa 04 00 aa 34 12 aa 34 05 aa 2c f7 aa 34 04 aa 2c fb aa } //01 00 
		$a_03_3 = {25 f0 00 00 00 c1 e8 04 83 c0 61 aa e2 e2 33 c0 aa 68 90 01 04 68 90 01 04 e8 90 01 04 68 90 01 04 68 00 05 00 00 ff 15 90 01 04 68 90 01 04 ff 15 90 01 04 68 90 01 04 68 90 01 04 e8 90 01 04 6a 02 90 00 } //01 00 
		$a_03_4 = {6a 00 6a 00 6a 00 ff 75 fc e8 90 01 04 6a 00 8d 45 e8 50 ff 75 ec 53 ff 75 fc ff 15 90 01 04 68 90 01 04 68 90 01 04 68 90 01 04 ff 75 fc ff 15 90 01 04 ff 75 fc e8 90 01 04 6a 03 68 90 01 04 6a 00 6a 14 90 00 } //01 00 
		$a_03_5 = {8b 75 08 8b fe 33 d2 8b 4d 0c 83 fa 10 75 02 33 d2 ac 32 82 90 01 04 aa 42 49 75 ed 90 00 } //01 00 
		$a_03_6 = {72 02 eb 02 eb 64 ff b5 90 01 02 ff ff ff b5 90 01 02 ff ff e8 90 01 02 00 00 ff b5 90 01 02 ff ff e8 90 01 02 00 00 0b c0 75 44 ff b5 90 01 02 ff ff ff b5 90 01 02 ff ff e8 90 01 02 00 00 68 90 01 04 ff b5 90 01 02 ff ff e8 90 01 02 00 00 ff 35 90 01 04 ff b5 90 01 02 ff ff e8 90 01 02 00 00 ff b5 90 01 02 ff ff ff b5 90 01 02 ff ff ff 15 90 01 04 8d 85 90 01 02 ff ff 50 ff b5 90 01 02 ff ff ff 15 90 01 04 85 c0 0f 85 90 01 02 ff ff 90 00 } //01 00 
		$a_03_7 = {b2 41 b9 1a 00 00 00 a9 01 00 00 00 74 03 88 17 47 d1 e8 fe c2 49 75 ef c6 07 00 8d 45 90 01 01 50 e8 90 01 02 00 00 8b f8 8d 75 90 01 01 8a 16 88 55 fc 8d 45 fc 50 ff 15 90 01 04 8d 55 fc c6 42 03 00 83 f8 03 90 00 } //01 00 
		$a_03_8 = {8d 45 b0 50 ff 75 f8 ff 75 a8 ff 75 fc ff 15 90 01 04 0b c0 75 05 e9 90 01 02 00 00 68 00 00 10 00 8d 45 b0 50 ff 75 a8 6a 00 6a 00 6a 00 ff 35 90 01 04 ff 15 90 01 04 0b c0 75 05 e9 90 01 02 00 00 6a 00 8d 45 d4 50 ff 75 d0 ff 75 fc e8 90 01 02 00 00 83 f8 ff 75 0e e8 90 01 02 00 00 0b c0 74 05 e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}