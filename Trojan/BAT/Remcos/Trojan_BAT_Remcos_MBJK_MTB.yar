
rule Trojan_BAT_Remcos_MBJK_MTB{
	meta:
		description = "Trojan:BAT/Remcos.MBJK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {18 da 0d 0c 2b 1f 07 02 08 18 6f 90 01 01 00 00 0a 1f 10 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 26 08 18 d6 0c 08 09 31 dd 90 00 } //01 00 
		$a_01_1 = {43 00 6f 00 72 00 65 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 73 00 2e 00 43 00 6c 00 61 00 73 00 73 00 31 00 00 09 4d 00 61 00 69 00 6e } //01 00 
		$a_01_2 = {33 00 33 00 33 00 35 00 33 00 33 00 33 00 34 00 33 00 33 00 33 00 35 00 33 00 33 00 33 00 36 00 33 00 33 00 33 00 37 00 33 00 33 00 33 00 31 00 33 } //01 00 
		$a_01_3 = {57 35 a2 1d 09 0f 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 6a } //00 00 
	condition:
		any of ($a_*)
 
}