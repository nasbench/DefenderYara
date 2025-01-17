
rule VirTool_BAT_BluntC2_C_MTB{
	meta:
		description = "VirTool:BAT/BluntC2.C!MTB,SIGNATURE_TYPE_PEHSTR,09 00 09 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 45 74 77 42 79 70 61 73 73 48 6f 6f 6b } //01 00  CreateEtwBypassHook
		$a_01_1 = {45 78 65 63 75 74 65 53 68 65 6c 6c 43 6f 6d 6d 61 6e 64 } //01 00  ExecuteShellCommand
		$a_01_2 = {53 65 6e 64 43 32 4d 65 73 73 61 67 65 } //01 00  SendC2Message
		$a_01_3 = {41 6d 73 69 53 63 61 6e 42 75 66 66 65 72 44 65 6c 65 67 61 74 65 } //01 00  AmsiScanBufferDelegate
		$a_01_4 = {50 69 76 6f 74 69 6e 67 } //01 00  Pivoting
		$a_01_5 = {45 76 61 73 69 6f 6e } //01 00  Evasion
		$a_01_6 = {43 72 65 64 65 6e 74 69 61 6c 73 } //01 00  Credentials
		$a_01_7 = {44 49 6e 76 6f 6b 65 2e 44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //01 00  DInvoke.DynamicInvoke
		$a_01_8 = {44 49 6e 76 6f 6b 65 2e 49 6e 6a 65 63 74 69 6f 6e } //01 00  DInvoke.Injection
		$a_01_9 = {44 79 6e 61 6d 69 63 49 6e 76 6f 63 61 74 69 6f 6e 2e 44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //01 00  DynamicInvocation.DynamicInvoke
		$a_01_10 = {44 79 6e 61 6d 69 63 49 6e 76 6f 63 61 74 69 6f 6e 2e 49 6e 6a 65 63 74 69 6f 6e } //00 00  DynamicInvocation.Injection
	condition:
		any of ($a_*)
 
}