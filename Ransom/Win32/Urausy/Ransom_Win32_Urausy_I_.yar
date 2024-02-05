
rule Ransom_Win32_Urausy_I_{
	meta:
		description = "Ransom:Win32/Urausy.I!!Urausy.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 0d 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 76 3c 6a 40 68 00 10 00 00 ff 76 50 ff 76 34 ff 93 90 01 02 00 00 09 c0 75 26 39 86 a0 00 00 00 90 00 } //01 00 
		$a_01_1 = {89 4a 01 c6 42 05 83 c6 42 06 2c c6 42 07 24 c6 42 08 05 } //01 00 
		$a_01_2 = {89 4a 02 c6 42 0a 48 c6 42 0b 83 c6 42 0c 2c c6 42 0d 24 c6 42 0e 05 } //01 00 
		$a_01_3 = {5b b0 2e aa b8 68 74 6d 6c ab 31 c0 aa } //01 00 
		$a_03_4 = {f2 ae c7 47 fb 2e 90 01 03 56 ff 93 90 01 02 00 00 90 00 } //01 00 
		$a_03_5 = {01 da ff 42 04 0f b7 47 05 8c 8e 90 01 02 00 00 66 89 86 90 01 02 00 00 8b 8b 90 01 02 00 00 89 8e 90 01 02 00 00 8d 93 90 01 02 00 00 89 55 f8 89 45 fc 90 00 } //01 00 
		$a_03_6 = {8d 85 00 ff ff ff 83 c7 10 83 e9 10 89 8d f4 fe ff ff 50 6a 10 ff b5 f0 fe ff ff 51 57 e8 90 01 04 66 81 3f 4d 5a 90 00 } //01 00 
		$a_03_7 = {89 45 e0 80 bd 90 01 02 ff ff 30 74 12 80 bd 90 01 02 ff ff 31 0f 84 90 01 02 00 00 e9 90 01 02 ff ff 31 c0 88 85 90 01 02 ff ff 90 00 } //01 00 
		$a_03_8 = {24 df 3c 58 75 90 01 01 ac 84 c0 0f 84 90 01 02 00 00 24 df 3c 4d 0f 85 90 01 02 00 00 ac 84 c0 0f 84 90 01 02 00 00 24 df 3c 4c 90 00 } //01 00 
		$a_01_9 = {25 00 78 00 25 00 78 00 2e 00 78 00 6d 00 6c 00 } //01 00 
		$a_01_10 = {26 6c 74 3b 00 26 67 74 3b 00 26 61 6d 70 3b 00 47 65 74 4d 6f 64 75 6c 65 46 69 6c 65 4e 61 6d 65 41 } //01 00 
		$a_03_11 = {50 ff 75 fc ff 93 90 01 02 00 00 85 c0 74 16 31 c0 8d 8b 90 01 02 00 00 89 01 8b 55 fc 89 51 04 89 41 08 89 41 0c 5f 5e 5b 90 00 } //01 00 
		$a_03_12 = {e8 00 00 00 00 5b 81 eb 90 01 02 00 00 8b 93 90 01 02 00 00 03 52 60 89 55 fc bf 3c 00 00 00 6a 01 e8 90 01 04 68 e8 03 00 00 ff 93 90 01 02 00 00 8b 83 90 01 02 00 00 09 c0 75 03 4f 79 e1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}