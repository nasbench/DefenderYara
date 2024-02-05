
rule PWS_Win32_DNFpass_A{
	meta:
		description = "PWS:Win32/DNFpass.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 11 27 00 00 ff 35 90 01 02 40 00 ff 15 90 01 02 40 00 90 00 } //02 00 
		$a_03_1 = {68 b2 27 00 00 90 01 01 68 01 02 00 00 ff 35 90 01 02 40 00 ff 15 90 01 02 40 00 90 00 } //01 00 
		$a_03_2 = {c1 e0 10 03 45 90 01 01 6a 1c 90 00 } //02 00 
		$a_03_3 = {33 f6 56 ff 35 90 01 02 40 00 ff 15 90 01 02 40 00 6a 03 56 56 56 56 6a 01 ff 35 90 01 02 40 00 ff 15 90 01 02 40 00 90 00 } //01 00 
		$a_00_4 = {54 57 49 4e 43 4f 4e 54 52 4f 4c 00 } //00 00 
	condition:
		any of ($a_*)
 
}