
rule Backdoor_Win32_Bifrose_HR{
	meta:
		description = "Backdoor:Win32/Bifrose.HR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 01 00 00 03 00 "
		
	strings :
		$a_01_0 = {41 00 2a 00 5c 00 41 00 43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 50 00 61 00 64 00 64 00 79 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 20 00 42 00 61 00 73 00 69 00 63 00 20 00 36 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 73 00 5c 00 46 00 55 00 44 00 20 00 90 00 72 00 79 00 70 00 74 00 65 00 72 00 5c 00 73 00 74 00 75 00 62 00 2e 00 76 00 62 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}