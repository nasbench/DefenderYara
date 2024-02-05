
rule TrojanDownloader_BAT_Woswitim_A{
	meta:
		description = "TrojanDownloader:BAT/Woswitim.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {61 00 48 00 52 00 30 00 63 00 44 00 6f 00 76 00 4c 00 32 00 46 00 30 00 5a 00 57 00 35 00 30 00 62 00 33 00 4e 00 70 00 62 00 6e 00 52 00 6c 00 63 00 6d 00 35 00 6c 00 64 00 43 00 35 00 6a 00 62 00 32 00 39 00 74 00 5a 00 58 00 5a 00 68 00 4c 00 6d 00 4e 00 76 00 62 00 53 00 35 00 6a 00 62 00 79 00 39 00 68 00 64 00 47 00 56 00 75 00 64 00 47 00 39 00 7a 00 4c 00 32 00 78 00 76 00 5a 00 33 00 4d 00 76 00 63 00 33 00 6c 00 7a 00 64 00 32 00 39 00 33 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d 00 } //01 00 
		$a_01_1 = {63 00 33 00 6c 00 7a 00 64 00 32 00 39 00 33 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d 00 } //00 00 
		$a_00_2 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}