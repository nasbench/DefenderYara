
rule PWS_Win32_OnLineGames_JH{
	meta:
		description = "PWS:Win32/OnLineGames.JH,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {71 ff 75 08 c6 45 90 01 01 71 c6 45 90 01 01 66 c6 45 90 01 01 66 c6 45 90 01 01 6f c6 45 90 01 01 2e c6 45 90 01 01 65 c6 45 90 01 01 78 90 00 } //01 00 
		$a_03_1 = {80 f9 47 75 15 80 b8 90 01 04 49 75 0c 80 b8 90 01 04 46 75 03 90 00 } //01 00 
		$a_03_2 = {65 50 53 c6 45 90 01 01 78 c6 45 90 01 01 70 c6 45 90 01 01 6c c6 45 90 01 01 6f 90 00 } //01 00 
		$a_03_3 = {83 f8 0a 0f 83 90 01 04 8d 85 90 01 04 50 8d 85 90 01 04 50 e8 90 01 04 59 59 83 25 90 01 04 00 bb 90 01 04 c6 45 90 01 01 3f c6 45 90 01 01 64 c6 45 90 01 02 c6 45 90 01 01 3d c6 45 90 01 01 25 c6 45 90 01 01 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}