
rule Trojan_O97M_Obfuse_AAYT_MTB{
	meta:
		description = "Trojan:O97M/Obfuse.AAYT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00 
		$a_03_1 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 55 6e 70 72 6f 74 65 63 74 20 22 90 02 1f 22 90 00 } //01 00 
		$a_03_2 = {63 6d 64 20 3d 20 63 6d 64 20 2b 20 22 65 78 65 63 28 75 72 6c 6c 69 62 32 2e 75 72 6c 6f 70 65 6e 28 75 72 6c 6c 69 62 32 2e 52 65 71 75 65 73 74 28 27 68 74 74 70 3a 2f 2f 90 02 5f 2e 72 65 61 64 28 29 29 90 00 } //01 00 
		$a_03_3 = {70 6f 70 65 6e 28 22 70 79 74 68 6f 6e 20 2d 63 20 22 22 22 20 2b 20 90 02 0a 20 2b 20 22 22 22 22 2c 20 22 72 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}