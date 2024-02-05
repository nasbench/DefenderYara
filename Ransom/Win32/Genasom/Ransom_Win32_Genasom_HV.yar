
rule Ransom_Win32_Genasom_HV{
	meta:
		description = "Ransom:Win32/Genasom.HV,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {62 6f 6f 74 73 74 61 74 2e 64 61 74 } //02 00 
		$a_01_1 = {6e 65 74 73 68 2e 65 78 65 } //02 00 
		$a_01_2 = {70 75 72 65 20 62 61 73 69 63 } //03 00 
		$a_01_3 = {43 3a 5c 53 65 72 6c 5f 6c 6f 67 2e 74 78 74 } //04 00 
		$a_01_4 = {33 34 32 33 34 33 34 35 33 34 35 31 32 33 33 33 34 36 36 35 37 36 37 34 33 35 33 32 34 32 33 34 32 33 35 34 35 36 35 37 35 36 37 36 35 37 34 36 35 33 34 35 33 34 35 32 33 34 32 33 34 } //00 00 
		$a_00_5 = {87 10 00 00 9f 8f 04 30 cd 99 } //73 ac 
	condition:
		any of ($a_*)
 
}