
rule Trojan_Win32_Nish_A{
	meta:
		description = "Trojan:Win32/Nish.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 49 45 41 64 76 42 48 4f 46 61 63 74 6f 72 79 } //01 00 
		$a_01_1 = {36 41 37 42 45 44 30 32 45 31 34 44 36 41 32 45 31 34 44 36 41 45 41 32 45 31 34 44 36 41 45 41 32 45 31 34 44 36 41 45 41 32 45 31 34 44 36 41 45 44 30 32 45 31 34 44 36 41 44 36 41 37 42 45 44 30 32 45 31 34 44 00 } //01 00 
		$a_03_2 = {54 49 45 4d 6f 6e 69 74 6f 72 8d 40 00 ff ff ff ff 90 01 01 00 00 00 68 74 74 70 3a 2f 2f 77 77 77 2e 90 00 } //01 00 
		$a_03_3 = {45 00 01 73 2a a1 90 01 02 45 00 50 68 54 90 01 01 45 00 68 90 01 02 45 00 6a 00 6a 02 6a 01 8b 0d 90 01 02 45 00 8b 09 b2 01 a1 90 01 02 45 00 e8 90 00 } //01 00 
		$a_03_4 = {8d 85 7b ff ff ff 50 6a 00 e8 90 01 02 fa ff 8d 45 fc 8d 95 7b ff ff ff b9 81 00 00 00 e8 90 01 02 fa ff 8d 95 74 ff ff ff 8b 45 fc e8 90 01 02 fa ff 8b 85 74 ff ff ff ba 90 01 02 45 00 e8 90 01 02 fa ff 84 c0 74 0b a1 90 01 02 45 00 c7 00 01 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}