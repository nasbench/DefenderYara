
rule Trojan_Win32_Redline_GND_MTB{
	meta:
		description = "Trojan:Win32/Redline.GND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8a 3c 06 33 d2 8b c6 f7 f5 68 90 01 04 8a 9a 90 01 04 32 df e8 90 01 04 8b 44 24 90 01 01 83 c4 90 01 01 00 1c 06 6a 00 ff 15 90 01 04 8b 44 24 90 01 01 28 3c 06 46 3b f7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}