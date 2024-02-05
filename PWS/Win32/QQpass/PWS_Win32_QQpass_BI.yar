
rule PWS_Win32_QQpass_BI{
	meta:
		description = "PWS:Win32/QQpass.BI,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {64 6c 6c 5f 71 71 63 6b } //01 00 
		$a_00_1 = {47 65 74 4b 65 79 62 6f 61 72 64 53 74 61 74 65 } //01 00 
		$a_03_2 = {74 a6 68 58 02 00 00 e8 90 01 02 ff ff 8b c6 e8 90 01 02 ff ff 8b 15 90 01 02 40 00 89 02 6a 00 68 60 f0 00 00 68 12 01 00 00 56 e8 90 01 02 ff ff 90 00 } //01 00 
		$a_03_3 = {68 a8 3e 00 00 8b 07 50 e8 90 01 02 ff ff 8b 15 90 01 02 40 00 89 02 68 8a 00 00 00 8b 07 50 e8 90 01 02 ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}