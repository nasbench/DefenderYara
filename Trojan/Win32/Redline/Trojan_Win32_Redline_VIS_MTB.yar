
rule Trojan_Win32_Redline_VIS_MTB{
	meta:
		description = "Trojan:Win32/Redline.VIS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {d3 e8 8b 4d 90 01 01 c7 05 90 01 08 89 45 90 01 01 8d 45 90 01 01 e8 90 01 04 8b 45 90 01 01 31 45 90 01 01 8b 45 90 01 01 31 45 90 01 01 83 3d 90 01 05 0f 85 90 00 } //01 00 
		$a_03_1 = {d3 ea 8b 4d 90 01 01 8d 45 90 01 01 89 5d 90 01 01 89 55 90 01 01 e8 90 01 04 8b 45 90 01 01 33 c3 31 45 90 01 01 89 35 90 01 04 8b 45 90 01 01 89 45 90 01 01 8b 45 90 01 01 29 45 90 01 01 8b 45 90 01 01 89 45 90 01 01 81 45 d8 90 01 04 ff 4d 90 01 01 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}