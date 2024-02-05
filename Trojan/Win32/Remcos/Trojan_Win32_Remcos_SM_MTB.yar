
rule Trojan_Win32_Remcos_SM_MTB{
	meta:
		description = "Trojan:Win32/Remcos.SM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {33 62 31 31 31 62 34 30 34 61 30 62 37 63 34 61 30 63 35 34 35 37 31 66 33 37 30 63 31 63 35 33 35 36 34 33 33 37 30 34 31 66 34 30 31 37 35 32 33 63 30 38 34 30 35 31 34 64 34 35 33 32 30 36 30 37 35 64 35 63 35 66 32 37 31 36 34 30 30 37 30 63 30 30 36 62 35 32 35 66 30 39 30 61 30 36 36 34 35 32 35 36 30 30 30 38 30 30 36 35 35 30 35 36 31 66 30 65 30 34 36 31 35 31 35 65 30 34 30 63 30 38 36 31 35 31 35 37 30 32 30 31 30 31 36 30 35 32 35 62 30 32 31 36 37 65 32 31 30 38 31 62 34 34 34 64 34 35 } //01 00 
		$a_01_1 = {33 62 31 31 31 62 34 30 34 61 30 62 37 63 34 61 30 63 35 34 35 37 31 66 33 37 30 63 31 63 35 33 35 36 34 33 33 37 30 34 31 66 34 30 31 37 35 32 33 63 30 38 34 30 35 31 34 64 34 35 33 32 30 36 30 37 35 64 35 63 35 66 32 37 31 36 34 30 30 37 30 63 30 30 36 62 35 32 35 66 30 39 30 61 30 36 36 34 35 32 35 36 30 30 30 38 30 30 36 35 35 30 35 36 31 66 30 65 30 34 36 31 35 31 35 65 30 33 30 38 30 37 36 32 35 34 35 65 30 33 30 63 30 30 36 62 35 35 35 36 30 30 31 36 36 39 33 31 31 66 30 36 35 39 35 30 35 38 } //01 00 
		$a_01_2 = {33 62 31 31 31 62 34 30 34 61 30 62 37 63 34 61 30 63 35 34 35 37 31 66 33 37 30 63 31 63 35 33 35 36 34 33 33 37 30 34 31 66 34 30 31 37 35 32 33 63 30 38 34 30 35 31 34 64 34 35 33 32 30 36 30 37 35 64 35 63 35 66 32 37 31 36 34 30 30 37 30 63 30 30 36 62 35 32 35 66 30 39 30 61 30 36 36 34 35 32 35 36 30 30 30 38 30 30 36 35 35 30 35 36 31 66 30 65 30 34 36 31 35 31 35 65 30 31 30 30 30 36 36 32 35 31 35 62 30 39 30 63 30 33 36 33 35 37 35 65 30 38 31 36 36 62 33 30 30 66 31 61 34 35 34 63 34 34 } //00 00 
	condition:
		any of ($a_*)
 
}