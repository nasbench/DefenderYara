
rule Trojan_BAT_SnakeKeylogger_B_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {4c 69 70 70 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //02 00  Lipps.Resources.resources
		$a_01_1 = {30 00 30 00 27 00 30 00 30 00 27 00 } //02 00  00'00'
		$a_01_2 = {43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5f 00 52 00 75 00 6e 00 } //01 00  Control_Run
		$a_01_3 = {47 00 65 00 74 00 4d 00 65 00 74 00 68 00 6f 00 64 00 } //02 00  GetMethod
		$a_01_4 = {3c 00 39 00 33 00 3c 00 43 00 32 00 3c 00 30 00 30 00 23 00 3c 00 43 00 30 00 23 00 3c 00 30 00 44 00 } //01 00  <93<C2<00#<C0#<0D
		$a_01_5 = {47 65 74 54 79 70 65 73 } //00 00  GetTypes
	condition:
		any of ($a_*)
 
}