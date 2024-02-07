
rule TrojanDownloader_BAT_AgentTesla_BG_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.BG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 68 00 65 00 72 00 70 00 61 00 2e 00 65 00 75 00 2f 00 64 00 65 00 76 00 2f 00 44 00 4c 00 4c 00 4c 00 4c 00 2e 00 74 00 78 00 74 00 } //01 00  cherpa.eu/dev/DLLLL.txt
		$a_01_1 = {52 00 6b 00 64 00 47 00 52 00 30 00 64 00 49 00 55 00 6c 00 52 00 55 00 55 00 6b 00 64 00 47 00 4a 00 51 00 } //01 00  RkdGR0dIUlRUUkdGJQ
		$a_01_2 = {54 00 48 00 45 00 44 00 45 00 56 00 49 00 4c 00 2e 00 44 00 45 00 56 00 49 00 4c 00 44 00 45 00 56 00 49 00 4c 00 } //01 00  THEDEVIL.DEVILDEVIL
		$a_01_3 = {43 00 68 00 65 00 63 00 6b 00 52 00 65 00 6d 00 6f 00 74 00 65 00 44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 50 00 72 00 65 00 73 00 65 00 6e 00 74 00 } //01 00  CheckRemoteDebuggerPresent
		$a_01_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}