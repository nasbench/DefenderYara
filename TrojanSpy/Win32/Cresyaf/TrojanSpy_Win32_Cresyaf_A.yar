
rule TrojanSpy_Win32_Cresyaf_A{
	meta:
		description = "TrojanSpy:Win32/Cresyaf.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {80 fb 11 0f 84 90 01 04 80 fb 12 0f 84 90 01 04 80 fb a0 90 00 } //01 00 
		$a_01_1 = {5b 42 4f 54 49 44 3a 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}