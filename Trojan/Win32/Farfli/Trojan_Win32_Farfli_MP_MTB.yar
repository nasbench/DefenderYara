
rule Trojan_Win32_Farfli_MP_MTB{
	meta:
		description = "Trojan:Win32/Farfli.MP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 72 76 65 72 2e 44 61 74 } //01 00  Server.Dat
		$a_01_1 = {45 6e 61 62 6c 65 49 64 6c 65 48 6f 6f 6b } //01 00  EnableIdleHook
		$a_01_2 = {45 6e 61 62 6c 65 4b 65 79 62 6f 61 72 64 48 6f 6f 6b } //01 00  EnableKeyboardHook
		$a_01_3 = {45 6e 61 62 6c 65 54 61 73 6b 4d 67 72 } //01 00  EnableTaskMgr
		$a_01_4 = {53 70 65 65 64 2e 65 78 65 } //01 00  Speed.exe
		$a_01_5 = {66 75 63 6b 79 6f 75 } //01 00  fuckyou
		$a_01_6 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_01_7 = {53 6c 65 65 70 } //00 00  Sleep
	condition:
		any of ($a_*)
 
}