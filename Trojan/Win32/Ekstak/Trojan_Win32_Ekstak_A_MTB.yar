
rule Trojan_Win32_Ekstak_A_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.A!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 61 76 67 53 50 5f 4f 70 65 6e } //02 00 
		$a_01_1 = {5c 00 5c 00 2e 00 5c 00 61 00 76 00 67 00 53 00 50 00 5f 00 4f 00 70 00 65 00 6e 00 } //05 00 
		$a_01_2 = {5c 42 61 73 65 4e 61 6d 65 64 4f 62 6a 65 63 74 73 5c 73 68 65 6c 6c 2e 7b 41 34 38 46 31 41 33 32 2d 41 33 34 30 2d 31 31 44 31 2d 42 43 36 42 2d 30 30 41 30 43 39 30 33 31 32 45 31 7d } //05 00 
		$a_01_3 = {5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 7b 00 41 00 34 00 38 00 46 00 31 00 41 00 33 00 32 00 2d 00 41 00 33 00 34 00 30 00 2d 00 31 00 31 00 44 00 31 00 2d 00 42 00 43 00 36 00 42 00 2d 00 30 00 30 00 41 00 30 00 43 00 39 00 30 00 33 00 31 00 32 00 45 00 31 00 7d 00 } //01 00 
		$a_01_4 = {20 73 65 63 75 72 69 74 79 20 } //00 00 
	condition:
		any of ($a_*)
 
}