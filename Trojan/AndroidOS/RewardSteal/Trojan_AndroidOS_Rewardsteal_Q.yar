
rule Trojan_AndroidOS_Rewardsteal_Q{
	meta:
		description = "Trojan:AndroidOS/Rewardsteal.Q,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {77 65 62 2f 61 70 69 2f 75 73 65 72 2f 73 6d 73 } //02 00  web/api/user/sms
		$a_00_1 = {61 70 69 2f 75 73 65 72 2f 73 74 65 70 31 } //02 00  api/user/step1
		$a_00_2 = {54 71 41 63 74 69 76 69 74 79 } //00 00  TqActivity
	condition:
		any of ($a_*)
 
}