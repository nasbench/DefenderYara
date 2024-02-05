
rule Trojan_Win32_Toomli_A_dha{
	meta:
		description = "Trojan:Win32/Toomli.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 3f 25 73 3d 25 64 25 64 25 64 00 } //01 00 
		$a_01_1 = {73 74 61 72 74 32 77 6f 72 6b 00 } //01 00 
		$a_01_2 = {7b 25 30 38 58 2d 25 30 34 58 2d 25 30 34 78 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d 00 } //01 00 
		$a_01_3 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 22 2c 4e 53 50 53 74 61 72 74 75 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}