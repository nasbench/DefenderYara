
rule Trojan_Win32_FakeIA_E{
	meta:
		description = "Trojan:Win32/FakeIA.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {45 6e 61 62 6c 65 20 50 72 6f 74 65 63 74 69 6f 6e 00 00 00 42 55 54 54 4f 4e 00 00 55 6e 62 6c 6f 63 6b 00 4b 65 65 70 20 42 6c 6f 63 6b 69 6e 67 } //01 00 
		$a_01_1 = {53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 20 41 6c 65 72 74 00 } //01 00 
		$a_03_2 = {53 45 5f 53 48 55 54 44 4f 57 4e 5f 4e 41 4d 45 90 02 10 53 48 55 54 44 4f 57 4e 20 2d 72 20 2d 66 20 2d 74 90 02 10 64 65 6c 90 02 10 2e 62 61 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}