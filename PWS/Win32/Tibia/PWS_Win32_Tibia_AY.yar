
rule PWS_Win32_Tibia_AY{
	meta:
		description = "PWS:Win32/Tibia.AY,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 0c 00 00 01 00 "
		
	strings :
		$a_02_0 = {30 2e 30 2e 30 2e 30 20 90 02 06 74 69 62 69 61 2e 63 6f 6d 90 00 } //01 00 
		$a_02_1 = {30 2e 30 2e 30 2e 30 20 90 02 06 6a 6f 79 6d 61 78 2e 63 6f 6d 90 00 } //01 00 
		$a_02_2 = {30 2e 30 2e 30 2e 30 20 90 02 06 6d 65 74 69 6e 32 2e 70 6c 90 00 } //01 00 
		$a_02_3 = {30 2e 30 2e 30 2e 30 20 90 02 09 77 65 62 7a 65 6e 2e 6e 65 74 90 00 } //01 00 
		$a_02_4 = {30 2e 30 2e 30 2e 30 20 90 02 06 74 68 65 63 72 69 6d 73 2e 63 6f 6d 90 00 } //01 00 
		$a_02_5 = {30 2e 30 2e 30 2e 30 20 90 02 06 6d 61 72 67 6f 6e 65 6d 2e 70 6c 90 00 } //0a 00 
		$a_00_6 = {50 4f 53 54 20 2f 5f 43 6f 6d 6d 6f 6e 2f 70 72 6f 63 4c 6f 67 69 6e 2e 61 73 70 78 } //0a 00  POST /_Common/procLogin.aspx
		$a_00_7 = {54 69 62 69 61 43 6c 69 65 6e 74 } //0a 00  TibiaClient
		$a_00_8 = {54 69 62 69 61 20 2d 20 46 72 65 65 20 4d 75 6c 74 69 70 6c 61 79 65 72 20 4f 6e 6c 69 6e 65 20 52 6f 6c 65 20 50 6c 61 79 69 6e 67 20 47 61 6d 65 20 2d 20 41 63 63 6f 75 6e 74 } //0a 00  Tibia - Free Multiplayer Online Role Playing Game - Account
		$a_00_9 = {53 52 4f 5f 43 6c 69 65 6e 74 } //0a 00  SRO_Client
		$a_00_10 = {68 61 63 6b 73 68 69 65 6c 64 5c 68 73 75 70 64 61 74 65 2e 65 78 65 } //0a 00  hackshield\hsupdate.exe
		$a_00_11 = {26 67 61 6d 65 3d 74 69 62 69 61 26 61 63 63 3d } //00 00  &game=tibia&acc=
	condition:
		any of ($a_*)
 
}