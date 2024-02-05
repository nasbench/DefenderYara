
rule TrojanSpy_Win32_Keylogger_CR{
	meta:
		description = "TrojanSpy:Win32/Keylogger.CR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {c6 45 f7 08 0f be 45 f7 89 04 24 e8 } //01 00 
		$a_03_1 = {c7 44 24 08 07 00 00 00 c7 44 24 04 01 00 00 00 c7 04 24 90 01 04 e8 90 00 } //01 00 
		$a_00_2 = {4c 4f 47 2e 74 78 74 00 61 2b 00 5b 42 41 43 4b 53 50 41 43 45 5d 00 5b 54 41 42 5d } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}