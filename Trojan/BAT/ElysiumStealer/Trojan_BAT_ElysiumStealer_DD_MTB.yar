
rule Trojan_BAT_ElysiumStealer_DD_MTB{
	meta:
		description = "Trojan:BAT/ElysiumStealer.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 09 00 00 14 00 "
		
	strings :
		$a_81_0 = {67 68 66 67 72 65 66 76 64 76 65 77 32 } //14 00  ghfgrefvdvew2
		$a_81_1 = {67 66 64 67 66 64 73 64 66 73 64 } //01 00  gfdgfdsdfsd
		$a_81_2 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_81_3 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_81_4 = {74 65 73 74 65 72 } //01 00  tester
		$a_81_5 = {44 65 63 6f 6d 70 72 65 73 73 } //01 00  Decompress
		$a_81_6 = {44 65 63 72 79 70 74 } //01 00  Decrypt
		$a_81_7 = {52 65 76 65 72 73 65 44 65 63 6f 64 65 } //01 00  ReverseDecode
		$a_81_8 = {65 73 68 65 6c 6f 6e } //00 00  eshelon
	condition:
		any of ($a_*)
 
}