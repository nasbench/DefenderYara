
rule Trojan_BAT_FormBook_TGFA_MTB{
	meta:
		description = "Trojan:BAT/FormBook.TGFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {d0 73 00 00 01 28 90 01 03 0a 0a 06 72 90 01 03 70 20 00 01 00 00 14 14 17 8d 18 00 00 01 25 16 02 a2 6f 90 01 03 0a 0b 2b 00 07 2a 90 00 } //01 00 
		$a_01_1 = {44 00 75 00 63 00 69 00 6e 00 } //00 00  Ducin
	condition:
		any of ($a_*)
 
}