
rule Trojan_BAT_Qrob_RPQ_MTB{
	meta:
		description = "Trojan:BAT/Qrob.RPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 90 02 70 43 00 72 00 79 00 70 00 74 00 6f 00 2e 00 64 00 6c 00 6c 00 90 00 } //01 00 
		$a_01_1 = {43 00 6f 00 63 00 6b 00 79 00 47 00 72 00 61 00 62 00 62 00 65 00 72 00 2e 00 47 00 72 00 61 00 62 00 62 00 65 00 72 00 73 00 2e 00 43 00 68 00 72 00 6f 00 6d 00 65 00 47 00 72 00 61 00 62 00 62 00 65 00 72 00 } //01 00  CockyGrabber.Grabbers.ChromeGrabber
		$a_01_2 = {47 00 65 00 74 00 4c 00 6f 00 67 00 69 00 6e 00 73 00 } //01 00  GetLogins
		$a_01_3 = {41 00 63 00 74 00 69 00 6f 00 6e 00 55 00 72 00 6c 00 } //01 00  ActionUrl
		$a_01_4 = {66 00 72 00 65 00 65 00 67 00 65 00 6f 00 69 00 70 00 2e 00 61 00 70 00 70 00 } //01 00  freegeoip.app
		$a_01_5 = {66 75 64 6c 6f 61 64 65 72 } //00 00  fudloader
	condition:
		any of ($a_*)
 
}