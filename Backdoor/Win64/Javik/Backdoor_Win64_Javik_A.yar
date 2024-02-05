
rule Backdoor_Win64_Javik_A{
	meta:
		description = "Backdoor:Win64/Javik.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 0f b7 01 33 c0 66 45 85 c0 74 90 01 01 66 89 01 66 44 31 41 02 48 8d 41 02 74 0a 48 83 c0 02 66 44 31 00 75 f6 48 8d 41 02 90 00 } //01 00 
		$a_03_1 = {44 8a 01 48 8d 41 01 45 84 c0 74 90 01 01 c6 01 00 44 30 41 01 74 08 48 ff c0 44 30 00 75 f8 48 8d 41 01 90 00 } //00 00 
		$a_00_2 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}