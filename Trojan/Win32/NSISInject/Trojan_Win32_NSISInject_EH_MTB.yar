
rule Trojan_Win32_NSISInject_EH_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {6a 40 68 00 30 00 00 8b f0 56 6a 00 ff 15 } //05 00 
		$a_01_1 = {6a 40 68 00 30 00 00 8b 45 f0 50 6a 00 ff 15 } //05 00 
		$a_01_2 = {6a 40 68 00 30 00 00 8b 55 f0 52 6a 00 ff 15 } //01 00 
		$a_03_3 = {83 c1 10 3b ca 72 90 01 01 3b ce 73 90 02 03 80 04 39 90 01 01 41 3b ce 72 90 01 01 6a 00 6a 00 57 ff 15 90 01 04 5f 5e 33 c0 5b 8b e5 5d c3 90 00 } //01 00 
		$a_03_4 = {83 c0 10 3b c2 72 90 01 01 3b c6 73 90 01 01 80 04 38 90 01 01 40 3b c6 72 90 01 01 6a 00 6a 00 57 ff 15 90 01 04 5f 5e 33 c0 5b 8b e5 5d c3 90 00 } //01 00 
		$a_03_5 = {88 0c 38 40 3b c6 72 90 01 01 6a 00 6a 00 57 ff 15 90 01 04 5f 5e 33 c0 5b 8b e5 5d c3 90 00 } //01 00 
		$a_03_6 = {8b 45 f8 03 45 fc 88 10 8b 4d f8 03 4d fc 0f b6 11 83 f2 90 01 01 8b 45 f8 03 45 fc 88 10 90 00 } //01 00 
		$a_03_7 = {8b 4d f8 03 4d fc 88 01 8b 55 f8 03 55 fc 0f b6 02 35 90 02 04 8b 4d f8 03 4d fc 88 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}