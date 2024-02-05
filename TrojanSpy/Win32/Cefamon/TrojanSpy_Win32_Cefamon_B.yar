
rule TrojanSpy_Win32_Cefamon_B{
	meta:
		description = "TrojanSpy:Win32/Cefamon.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 70 70 45 76 65 6e 74 73 5c 53 63 68 65 6d 65 73 5c 41 70 70 73 5c 45 78 70 6c 6f 72 65 72 5c 4e 61 76 69 67 61 74 69 6e 67 5c 2e 43 75 72 72 65 6e 74 00 } //01 00 
		$a_01_1 = {0f b7 1a 0f bf 31 0f af de 81 c3 00 08 00 00 8b 74 24 24 c1 fb 0c 83 c1 02 89 1e 83 c2 02 83 44 24 24 04 40 83 f8 40 7c } //01 00 
		$a_00_2 = {05 00 00 00 48 45 41 44 20 00 00 00 ff ff ff ff 06 00 00 00 20 48 54 54 50 2f 00 00 ff ff ff ff 04 00 00 00 47 45 54 20 00 00 00 00 ff ff ff ff 05 00 00 00 50 4f 53 54 20 00 00 00 ff ff ff ff 08 00 00 00 4f 50 54 49 4f 4e 53 20 00 00 00 00 ff ff ff ff 06 00 00 00 54 52 41 43 45 20 00 00 ff ff ff ff 04 00 00 00 50 55 54 20 00 00 00 00 ff ff ff ff 08 00 00 00 43 4f 4e 4e 45 43 54 20 } //01 00 
		$a_00_3 = {67 72 61 6e 74 5f 63 6c 69 63 6b 65 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}