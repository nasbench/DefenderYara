
rule Trojan_PowerShell_Lekinik_A{
	meta:
		description = "Trojan:PowerShell/Lekinik.A,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 08 2d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 74 00 79 00 6c 00 65 00 90 02 08 68 00 69 00 64 00 64 00 65 00 6e 00 90 00 } //01 00 
		$a_02_1 = {69 00 65 00 78 00 90 02 0a 67 00 65 00 74 00 2d 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 90 02 0c 3a 00 5c 00 75 00 73 00 65 00 72 00 73 00 5c 00 90 02 f0 2e 00 70 00 73 00 90 02 0c 72 00 65 00 70 00 6c 00 61 00 63 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}