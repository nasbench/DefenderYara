
rule Backdoor_Win32_PcClient_ZA{
	meta:
		description = "Backdoor:Win32/PcClient.ZA,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 00 00 00 44 6f 53 65 72 76 69 63 65 00 00 00 6d 79 67 75 69 64 00 00 6d 79 70 61 72 65 6e 74 74 68 72 65 61 64 69 64 00 00 00 00 25 73 3d 00 2e 73 79 73 00 00 00 00 64 72 69 76 65 72 73 5c 00 00 00 00 2e 6b 65 79 00 00 00 00 2e 65 78 65 00 00 00 00 2e 73 63 6f 00 00 00 00 2e 70 72 6f 00 00 00 00 2e 64 6c 6c 00 00 00 00 30 00 00 00 25 73 25 30 38 78 2e 69 6e 69 00 00 47 6c 6f 62 61 6c 5c 70 73 25 30 38 78 00 00 00 5c 00 00 00 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}