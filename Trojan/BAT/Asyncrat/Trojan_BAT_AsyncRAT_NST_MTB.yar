
rule Trojan_BAT_AsyncRAT_NST_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.NST!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {20 40 05 f9 d2 58 20 90 01 03 13 61 58 5a 61 20 90 01 03 7b 58 20 90 01 03 ff 20 90 01 03 85 20 90 01 03 50 59 20 90 01 03 cf 20 90 01 03 93 61 59 20 90 01 03 35 20 90 01 03 7d 61 20 90 01 03 eb 66 59 59 66 20 90 01 03 bb 5a 59 59 20 90 01 03 89 20 90 01 03 af 20 90 01 03 66 20 90 01 03 67 61 65 20 90 01 03 88 66 65 59 5a 66 61 66 58 65 61 90 00 } //01 00 
		$a_01_1 = {65 55 46 59 6d 54 46 65 50 6a 4c 66 54 72 58 59 78 6e 6a 71 77 49 4f 6b 6a 49 62 74 } //00 00 
	condition:
		any of ($a_*)
 
}