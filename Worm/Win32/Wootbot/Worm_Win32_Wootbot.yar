
rule Worm_Win32_Wootbot{
	meta:
		description = "Worm:Win32/Wootbot,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {68 02 02 00 00 90 01 06 e8 90 01 04 8d 8e 90 01 02 00 00 e8 90 01 04 8d 8e 90 01 02 00 00 e8 90 01 04 8d be 90 01 02 00 00 8b cf e8 90 01 04 8b 1d 90 01 04 68 e8 03 00 00 ff d3 8b cf e8 90 01 04 68 e8 03 00 00 ff d3 90 00 } //01 00 
		$a_02_1 = {68 02 02 00 00 90 01 06 e8 90 01 04 8b 8d 90 01 04 81 c1 90 01 02 00 00 e8 90 01 04 8b 8d 90 01 04 81 c1 90 01 02 00 00 e8 90 01 04 8b 8d 90 01 04 81 c1 90 01 02 00 00 e8 90 01 04 68 e8 03 00 00 90 01 06 8b 8d 90 01 04 81 c1 90 01 02 00 00 e8 90 01 04 68 e8 03 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}