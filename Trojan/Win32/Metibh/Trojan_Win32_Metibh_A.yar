
rule Trojan_Win32_Metibh_A{
	meta:
		description = "Trojan:Win32/Metibh.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 79 73 44 6f 77 6e 25 6c 64 } //01 00 
		$a_01_1 = {5f 45 78 70 6c 6f 72 65 72 00 } //01 00 
		$a_01_2 = {5f 57 69 6e 6c 6f 67 6f 6e 00 } //01 00 
		$a_01_3 = {49 73 47 61 6d 65 50 6c 61 79 65 72 00 } //04 00 
		$a_03_4 = {51 8b 44 24 08 56 6a 00 68 80 00 00 00 6a 03 6a 00 6a 01 68 00 00 00 80 50 ff 15 90 01 04 8b f0 83 fe ff 75 05 33 c0 5e 59 c3 8d 4c 24 04 6a 00 51 8d 54 24 14 6a 02 52 56 ff 15 90 01 04 56 ff 15 90 01 04 33 c0 66 81 7c 24 0c 4d 5a 5e 0f 94 c0 59 c3 90 00 } //03 00 
		$a_03_5 = {8b 4c 24 04 81 ec 40 01 00 00 8d 44 24 00 50 51 ff 15 90 01 04 83 f8 ff 75 09 33 c0 81 c4 40 01 00 00 c3 50 ff 15 90 01 04 8b 44 24 00 f6 d0 25 ff 00 00 00 c1 e8 04 83 e0 01 81 c4 40 01 00 00 c3 90 00 } //03 00 
		$a_03_6 = {8d 4c 24 10 6a 01 51 56 ff d7 6a 04 8d 54 24 14 6a 00 52 ff d7 8b 84 24 90 01 03 00 6a 00 56 50 ff 15 90 01 04 5f 5b 6a 07 56 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}