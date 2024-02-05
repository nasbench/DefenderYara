
rule Backdoor_Win32_Dowshagen_A{
	meta:
		description = "Backdoor:Win32/Dowshagen.A,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2d 00 2d 00 53 00 70 00 72 00 65 00 61 00 64 00 20 00 56 00 69 00 61 00 20 00 4c 00 69 00 6d 00 65 00 57 00 69 00 72 00 65 00 2d 00 2d 00 } //01 00 
		$a_01_1 = {2d 00 2d 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 2d 00 2d 00 } //01 00 
		$a_01_2 = {2d 00 2d 00 49 00 6e 00 66 00 65 00 63 00 74 00 20 00 41 00 6c 00 6c 00 2d 00 2d 00 } //01 00 
		$a_01_3 = {2d 00 2d 00 41 00 56 00 20 00 4b 00 69 00 6c 00 6c 00 20 00 5b 00 55 00 44 00 5d 00 2d 00 2d 00 } //0a 00 
		$a_01_4 = {53 00 68 00 61 00 64 00 6f 00 77 00 20 00 42 00 61 00 74 00 63 00 68 00 20 00 56 00 69 00 72 00 75 00 73 00 20 00 47 00 65 00 6e 00 65 00 72 00 61 00 74 00 6f 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}