
rule Trojan_BAT_RedLineStealer_NL_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.NL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {6b 6f 69 00 4b 6f 61 73 6f 66 6b 2e 65 78 65 } //01 00 
		$a_01_1 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_2 = {4c 7a 6d 61 44 65 63 6f 64 65 72 } //01 00  LzmaDecoder
		$a_01_3 = {00 52 65 73 6f 6c 76 65 45 76 65 6e 74 41 72 67 73 00 53 79 73 74 65 6d 00 44 65 63 6f 6d 70 72 65 73 73 00 } //01 00  刀獥汯敶癅湥䅴杲s祓瑳浥䐀捥浯牰獥s
		$a_01_4 = {00 4d 61 69 6e 00 52 65 73 6f 6c 76 65 00 } //01 00  䴀楡n敒潳癬e
		$a_01_5 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //01 00  GetExecutingAssembly
		$a_01_6 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_01_7 = {52 65 73 6f 6c 76 65 4d 65 74 68 6f 64 } //00 00  ResolveMethod
	condition:
		any of ($a_*)
 
}