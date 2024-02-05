
rule TrojanDownloader_Win32_Agent_ZDM{
	meta:
		description = "TrojanDownloader:Win32/Agent.ZDM,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 73 65 6e 64 65 72 00 63 3a 5c 6c 6f 67 2e 68 74 6d 00 43 3a 5c 70 73 74 6f 72 61 67 65 2e 65 78 65 00 50 53 74 6f 72 61 67 65 00 43 3a 5c 75 73 65 72 71 75 6f 74 61 2e 65 78 65 00 55 73 65 72 51 75 6f 74 61 00 2d 4c 49 42 47 43 43 57 33 32 2d 45 48 2d 32 2d 53 4a 4c 4a 2d 47 54 48 52 2d 4d 49 4e 47 57 33 32 00 00 00 77 33 32 5f 73 68 61 72 65 64 70 74 } //01 00 
		$a_02_1 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 90 02 40 75 70 6c 6f 61 64 2e 70 68 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}