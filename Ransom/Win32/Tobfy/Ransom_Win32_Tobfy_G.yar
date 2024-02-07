
rule Ransom_Win32_Tobfy_G{
	meta:
		description = "Ransom:Win32/Tobfy.G,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 65 72 73 69 6f 6e 5f 41 64 6d 69 6e 55 6e 6c 6f 63 6b 5c } //01 00  Version_AdminUnlock\
		$a_00_1 = {53 79 73 74 65 6d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 53 61 66 65 42 6f 6f 74 } //01 00  System\CurrentControlSet\Control\SafeBoot
		$a_01_2 = {2f 67 65 74 75 6e 6c 6f 63 6b 2e 70 68 70 } //01 00  /getunlock.php
		$a_00_3 = {8d 49 00 80 34 2a 18 8b c8 42 8d 71 01 8d 9b 00 00 00 00 8a 19 41 } //01 00 
		$a_00_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_03_5 = {ff d3 85 c0 75 90 01 01 ff d7 c1 e8 02 30 06 46 80 3e 00 75 90 00 } //01 00 
		$a_03_6 = {ff d7 85 c0 75 90 01 01 ff d3 8a 16 c1 e8 02 32 d0 88 16 8a 46 01 46 84 c0 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}