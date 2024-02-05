
rule TrojanDropper_O97M_Powdow_RSC_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.RSC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 } //01 00 
		$a_03_1 = {6d 73 62 75 69 6c 64 2e 65 78 65 20 90 02 04 32 30 34 2e 34 38 2e 32 31 2e 32 33 36 90 02 02 77 65 62 64 61 76 90 02 02 6d 73 62 75 69 6c 64 2e 78 6d 6c 90 00 } //01 00 
		$a_03_2 = {54 61 73 6b 49 44 20 3d 20 53 68 65 6c 6c 28 50 72 6f 67 72 61 6d 2c 20 90 01 01 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}