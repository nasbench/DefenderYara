
rule Adware_MacOS_InstallCore_A_MTB{
	meta:
		description = "Adware:MacOS/InstallCore.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {89 c1 83 e1 1f 41 8a 0c 0f 41 32 4c 05 00 88 90 01 03 ef ff ff 48 ff c0 48 39 c3 90 00 } //01 00 
		$a_01_1 = {5f 74 61 72 67 65 74 43 6c 61 73 73 } //00 00  _targetClass
	condition:
		any of ($a_*)
 
}