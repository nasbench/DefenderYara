
rule Trojan_BAT_SnakeKeyLogger_RDK_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeyLogger.RDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {33 35 31 63 65 35 62 32 2d 62 34 37 34 2d 34 62 61 39 2d 61 34 63 35 2d 31 33 65 63 32 35 62 33 64 38 62 38 } //01 00  351ce5b2-b474-4ba9-a4c5-13ec25b3d8b8
		$a_01_1 = {59 46 47 47 43 56 79 75 66 67 74 77 66 79 75 54 47 46 57 54 56 46 41 55 59 56 46 } //01 00  YFGGCVyufgtwfyuTGFWTVFAUYVF
		$a_01_2 = {58 75 64 7a 78 71 } //01 00  Xudzxq
		$a_01_3 = {56 69 73 69 74 6f 72 4f 62 6a 65 63 74 52 65 73 6f 6c 76 65 72 } //00 00  VisitorObjectResolver
	condition:
		any of ($a_*)
 
}