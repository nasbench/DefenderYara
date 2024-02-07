
rule Worm_Win32_Autorun_ACE{
	meta:
		description = "Worm:Win32/Autorun.ACE,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {53 70 72 65 61 64 90 02 02 64 72 69 76 65 90 02 02 53 65 74 41 75 74 6f 72 75 6e 90 00 } //01 00 
		$a_00_1 = {5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  \autorun.inf
		$a_00_2 = {4f 00 70 00 65 00 6e 00 20 00 3d 00 20 00 4c 00 67 00 4f 00 41 00 43 00 58 00 2e 00 65 00 78 00 65 00 } //01 00  Open = LgOACX.exe
		$a_00_3 = {25 00 25 00 74 00 5c 00 49 00 50 00 43 00 24 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 65 00 78 00 65 00 } //00 00  %%t\IPC$\debug.exe
	condition:
		any of ($a_*)
 
}