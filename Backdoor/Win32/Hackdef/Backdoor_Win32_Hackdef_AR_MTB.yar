
rule Backdoor_Win32_Hackdef_AR_MTB{
	meta:
		description = "Backdoor:Win32/Hackdef.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0e 00 00 01 00 "
		
	strings :
		$a_80_0 = {6c 6f 67 69 6e 20 64 65 74 65 63 74 65 64 2c 20 62 65 67 69 6e 20 68 69 6a 61 63 6b 69 6e 67 22 } //login detected, begin hijacking"  01 00 
		$a_80_1 = {22 70 72 6f 66 69 6c 65 73 20 68 69 6a 61 63 6b 65 64 21 22 } //"profiles hijacked!"  01 00 
		$a_80_2 = {5c 73 68 61 64 6f 77 63 6f 70 79 2e 65 78 65 } //\shadowcopy.exe  01 00 
		$a_80_3 = {73 65 74 68 69 6a 61 63 6b } //sethijack  01 00 
		$a_02_4 = {73 00 75 00 63 00 63 00 65 00 73 00 73 00 20 00 66 00 69 00 72 00 65 00 66 00 6f 00 78 00 20 00 70 00 72 00 6f 00 66 00 90 02 08 20 00 63 00 6f 00 70 00 79 00 90 00 } //01 00 
		$a_02_5 = {73 75 63 63 65 73 73 20 66 69 72 65 66 6f 78 20 70 72 6f 66 90 02 08 20 63 6f 70 79 90 00 } //01 00 
		$a_02_6 = {73 00 75 00 63 00 63 00 65 00 73 00 73 00 20 00 63 00 68 00 72 00 6f 00 6d 00 65 00 20 00 70 00 72 00 6f 00 66 00 90 02 08 20 00 63 00 6f 00 70 00 79 00 90 00 } //01 00 
		$a_02_7 = {73 75 63 63 65 73 73 20 63 68 72 6f 6d 65 20 70 72 6f 66 90 02 08 20 63 6f 70 79 90 00 } //01 00 
		$a_02_8 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 90 02 3f 2f 00 90 02 14 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_9 = {68 74 74 70 73 3a 2f 2f 90 02 3f 2f 90 02 14 2e 65 78 65 90 00 } //01 00 
		$a_80_10 = {2a 2e 2a 22 } //*.*"  01 00 
		$a_80_11 = {2f 73 20 2f 69 20 2f 79 20 2f 72 } ///s /i /y /r  01 00 
		$a_80_12 = {73 65 6c 66 6b 69 6c 6c } //selfkill  01 00 
		$a_80_13 = {63 6d 64 2e 65 78 65 20 2f 43 20 74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d } //cmd.exe /C taskkill /F /IM  00 00 
		$a_00_14 = {5d 04 00 00 5b b6 } //04 80 
	condition:
		any of ($a_*)
 
}