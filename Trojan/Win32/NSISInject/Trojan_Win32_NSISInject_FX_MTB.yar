
rule Trojan_Win32_NSISInject_FX_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_03_0 = {89 45 ec 6a 40 68 00 30 00 00 8b 90 01 01 ec 90 01 01 6a 00 ff 15 90 00 } //0a 00 
		$a_03_1 = {89 45 f0 6a 40 68 00 30 00 00 8b 90 01 01 f0 90 01 01 6a 00 ff 15 90 00 } //0a 00 
		$a_01_2 = {6a 40 68 00 30 00 00 8b d8 53 57 ff 15 } //05 00 
		$a_03_3 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 01 68 00 00 00 80 8d 90 01 01 d4 fe ff ff 90 01 01 ff 15 90 00 } //05 00 
		$a_01_4 = {57 68 80 00 00 00 6a 03 57 6a 01 68 00 00 00 80 50 ff 15 } //01 00 
		$a_03_5 = {88 4d ff 8b 55 f4 03 55 f8 8a 45 ff 88 02 e9 90 01 04 6a 00 8b 4d f4 51 ff 15 90 02 06 8b e5 5d 90 00 } //01 00 
		$a_03_6 = {88 45 ff 8b 4d f4 03 4d f8 8a 55 ff 88 11 e9 90 01 04 6a 00 8b 45 f4 50 ff 15 90 02 06 33 c0 8b e5 5d c3 90 00 } //01 00 
		$a_03_7 = {6a 00 57 ff 15 90 01 04 5f 5e 33 c0 5b c9 c3 90 09 04 00 3b d3 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}