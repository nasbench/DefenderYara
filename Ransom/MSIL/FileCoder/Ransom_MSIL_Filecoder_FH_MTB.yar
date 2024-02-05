
rule Ransom_MSIL_Filecoder_FH_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.FH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {59 6f 75 72 20 66 69 6c 65 73 20 90 02 0f 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 90 00 } //01 00 
		$a_81_1 = {66 72 69 65 6e 64 6c 79 2e 63 79 62 65 72 2e 63 72 69 6d 69 6e 61 6c } //01 00 
		$a_81_2 = {52 45 43 4f 56 45 52 5f 5f 46 49 4c 45 53 } //01 00 
		$a_81_3 = {42 69 74 63 6f 69 6e 41 64 64 72 65 73 73 } //01 00 
		$a_81_4 = {2e 6a 63 72 79 70 74 } //00 00 
	condition:
		any of ($a_*)
 
}