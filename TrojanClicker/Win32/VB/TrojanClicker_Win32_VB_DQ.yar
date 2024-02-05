
rule TrojanClicker_Win32_VB_DQ{
	meta:
		description = "TrojanClicker:Win32/VB.DQ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 68 ff 15 90 01 04 8b d0 8d 4d 90 01 01 ff 15 90 01 04 50 6a 74 ff 15 90 01 04 8b d0 8d 4d 90 01 01 ff 15 90 01 04 50 ff 15 90 01 04 8b d0 8d 4d 90 01 01 ff 15 90 01 04 50 6a 74 ff 15 90 01 04 8b d0 8d 4d 90 01 01 ff 15 90 01 04 50 ff 15 90 01 04 8b d0 90 00 } //01 00 
		$a_03_1 = {6a 01 6a 68 8b 4d 08 8b 11 8b 45 08 50 ff 92 90 01 04 50 8d 8d 4c ff ff ff 51 ff 15 90 01 04 50 ff 15 90 00 } //01 00 
		$a_00_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 64 00 66 00 2e 00 6c 00 79 00 } //00 00 
	condition:
		any of ($a_*)
 
}