
rule Trojan_BAT_AgentTesla_ALP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ALP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {45 6d 75 6c 6f 61 64 65 72 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Emuloader.Resources.resources
		$a_81_1 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_81_2 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_3 = {42 69 74 6d 61 70 } //01 00  Bitmap
		$a_81_4 = {53 74 6f 70 47 72 65 79 } //01 00  StopGrey
		$a_81_5 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //01 00  ColorTranslator
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_7 = {4e 65 77 4c 61 74 65 42 69 6e 64 69 6e 67 } //01 00  NewLateBinding
		$a_81_8 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //01 00  GetObjectValue
		$a_81_9 = {67 65 74 5f 53 74 6f 70 47 72 65 79 } //00 00  get_StopGrey
	condition:
		any of ($a_*)
 
}