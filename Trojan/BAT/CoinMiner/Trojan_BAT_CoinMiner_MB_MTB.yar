
rule Trojan_BAT_CoinMiner_MB_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {07 06 1f 10 6f 90 01 03 0a 28 90 01 03 0a 20 90 01 04 2b 00 28 90 01 03 2b 6f 90 01 03 0a 6f 90 01 03 0a 2b 24 07 06 1f 10 6f 90 01 03 0a 28 90 01 03 0a 20 90 01 04 2b 00 28 90 01 03 2b 6f 90 01 03 0a 6f 90 01 03 0a 0c 20 90 01 04 38 90 01 01 ff ff ff 90 00 } //01 00 
		$a_03_1 = {61 25 13 07 19 5e 45 03 00 00 00 df ff ff ff 02 00 00 00 19 00 00 00 2b 17 11 04 6f 90 01 03 0a 11 07 20 90 01 04 5a 20 90 01 04 61 2b cb 90 00 } //01 00 
		$a_01_2 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00  ResumeThread
		$a_01_3 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_01_4 = {55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00  UnmapViewOfSection
		$a_01_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_6 = {4b 69 6c 6c } //01 00  Kill
		$a_01_7 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_8 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}