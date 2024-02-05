
rule TrojanSpy_Win32_Noon_SJ_MSR{
	meta:
		description = "TrojanSpy:Win32/Noon.SJ!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 00 49 00 4e 00 41 00 54 00 4f 00 52 00 59 00 49 00 4d 00 50 00 45 00 52 00 49 00 55 00 4d 00 43 00 48 00 52 00 49 00 53 00 54 00 41 00 44 00 45 00 4c 00 50 00 48 00 49 00 41 00 4e 00 54 00 57 00 45 00 4c 00 56 00 45 00 4d 00 4f 00 4e 00 } //01 00 
		$a_01_1 = {41 00 6d 00 62 00 72 00 61 00 65 00 72 00 6e 00 65 00 6a 00 75 00 72 00 79 00 70 00 72 00 73 00 69 00 33 00 } //01 00 
		$a_01_2 = {55 00 4e 00 41 00 4d 00 45 00 4e 00 41 00 42 00 4c 00 45 00 53 00 54 00 41 00 42 00 45 00 4a 00 53 00 45 00 } //01 00 
		$a_01_3 = {52 00 6b 00 76 00 72 00 6b 00 73 00 63 00 6f 00 63 00 6b 00 69 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}