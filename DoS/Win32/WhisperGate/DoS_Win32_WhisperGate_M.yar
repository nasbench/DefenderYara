
rule DoS_Win32_WhisperGate_M{
	meta:
		description = "DoS:Win32/WhisperGate.M,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {63 6d 64 2e 65 78 65 20 2f 6d 69 6e 20 2f 43 20 70 69 6e 67 20 31 31 31 2e 31 31 31 2e 31 31 31 2e 31 31 31 } //02 00 
		$a_00_1 = {25 00 2e 00 2a 00 73 00 2e 00 25 00 78 00 00 00 77 00 62 00 } //02 00 
		$a_01_2 = {89 c2 b9 00 00 10 00 b0 cc 89 d7 89 55 e0 f3 aa } //01 00 
		$a_00_3 = {2e 00 56 00 42 00 53 00 00 00 2e 00 50 00 53 00 31 00 00 00 2e 00 42 00 41 00 54 00 00 00 2e 00 43 00 4d 00 44 00 } //01 00 
		$a_00_4 = {2e 00 48 00 54 00 4d 00 4c 00 00 00 2e 00 48 00 54 00 4d 00 00 00 2e 00 53 00 48 00 54 00 4d 00 4c 00 00 00 2e 00 58 00 48 00 54 00 4d 00 4c 00 } //00 00 
		$a_00_5 = {5d 04 00 00 a9 } //fe 04 
	condition:
		any of ($a_*)
 
}