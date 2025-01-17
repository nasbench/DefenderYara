
rule Trojan_Win32_Sparv{
	meta:
		description = "Trojan:Win32/Sparv,SIGNATURE_TYPE_PEHSTR,2a 00 2a 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //0a 00  InternetOpenUrlA
		$a_01_1 = {52 65 67 53 65 74 56 61 6c 75 65 45 78 41 } //0a 00  RegSetValueExA
		$a_01_2 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 41 } //0a 00  GetStartupInfoA
		$a_01_3 = {73 79 73 74 65 6d 33 32 5c 77 6e 69 61 70 73 72 76 2e 65 78 65 } //01 00  system32\wniapsrv.exe
		$a_01_4 = {77 6e 69 61 70 73 72 76 00 00 00 00 49 45 58 50 4c 4f 52 45 2e 45 58 45 } //01 00 
		$a_01_5 = {73 79 73 74 65 6d 33 32 5c 63 6f 6e 66 69 67 5c 77 6e 69 61 70 73 72 76 2e 69 6e 69 } //01 00  system32\config\wniapsrv.ini
		$a_01_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 00 00 6f 70 65 6e } //00 00 
	condition:
		any of ($a_*)
 
}