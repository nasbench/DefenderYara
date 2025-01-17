
rule Trojan_BAT_FormBook_N_MTB{
	meta:
		description = "Trojan:BAT/FormBook.N!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 61 32 35 36 30 65 66 38 2d 62 37 64 66 2d 34 37 61 65 2d 61 66 39 37 2d 34 39 35 34 37 35 31 66 64 32 33 32 } //01 00  $a2560ef8-b7df-47ae-af97-4954751fd232
		$a_01_1 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerNonUserCodeAttribute
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_N_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.N!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {72 29 01 00 70 02 03 28 90 01 02 00 06 0c 12 02 28 90 01 02 00 0a 28 90 01 02 00 0a 28 90 01 02 00 0a 00 38 90 01 02 00 00 72 90 01 02 00 70 02 03 28 90 01 02 00 06 0c 12 02 28 90 01 02 00 0a 28 90 01 02 00 0a 28 90 01 02 00 0a 00 38 90 01 02 00 00 72 90 01 02 00 70 02 03 28 90 01 02 00 06 0c 12 02 28 90 01 02 00 0a 28 90 01 02 00 0a 28 90 01 02 00 0a 90 00 } //01 00 
		$a_01_1 = {43 6f 6c 6c 69 73 69 6f 6e 53 69 6d 75 6c 61 74 69 6f 6e 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //00 00  CollisionSimulation.Properties.Resources.resources
	condition:
		any of ($a_*)
 
}