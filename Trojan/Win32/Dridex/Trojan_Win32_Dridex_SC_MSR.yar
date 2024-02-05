
rule Trojan_Win32_Dridex_SC_MSR{
	meta:
		description = "Trojan:Win32/Dridex.SC!MSR,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 00 6f 00 6f 00 6b 00 6d 00 61 00 72 00 6b 00 73 00 } //01 00 
		$a_01_1 = {62 00 72 00 6f 00 77 00 73 00 65 00 72 00 } //01 00 
		$a_01_2 = {63 00 68 00 72 00 6f 00 6d 00 65 00 } //01 00 
		$a_01_3 = {46 69 72 65 66 6f 78 } //01 00 
		$a_01_4 = {62 61 63 74 65 72 69 6f 6c 6f 67 79 76 65 72 73 69 6f 6e } //01 00 
		$a_01_5 = {67 6f 64 7a 69 6c 6c 61 } //01 00 
		$a_01_6 = {70 75 73 73 79 } //00 00 
	condition:
		any of ($a_*)
 
}