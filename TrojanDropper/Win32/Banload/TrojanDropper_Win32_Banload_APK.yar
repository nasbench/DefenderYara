
rule TrojanDropper_Win32_Banload_APK{
	meta:
		description = "TrojanDropper:Win32/Banload.APK,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 68 00 74 00 70 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_1 = {25 00 31 00 3a 00 2e 00 32 00 64 00 3a 00 25 00 32 00 3a 00 2e 00 32 00 64 00 3a 00 25 00 33 00 3a 00 2e 00 32 00 64 00 } //01 00 
		$a_01_2 = {5c 00 6d 00 73 00 67 00 73 00 2e 00 63 00 70 00 6c 00 } //01 00 
		$a_01_3 = {5c 00 74 00 70 00 70 00 2e 00 64 00 61 00 74 00 } //01 00 
		$a_01_4 = {32 00 30 00 30 00 33 00 31 00 32 00 33 00 31 00 31 00 33 00 31 00 31 00 33 00 30 00 38 00 32 00 33 00 32 00 33 00 31 00 31 00 33 00 31 00 36 00 33 00 31 00 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}