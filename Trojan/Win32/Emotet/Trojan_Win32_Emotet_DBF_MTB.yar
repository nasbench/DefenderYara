
rule Trojan_Win32_Emotet_DBF_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DBF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {6a 00 ff d6 8b c7 33 d2 f7 f5 8b 44 24 90 01 01 47 8a 0c 50 30 4c 1f ff 3b 7c 24 90 01 01 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}