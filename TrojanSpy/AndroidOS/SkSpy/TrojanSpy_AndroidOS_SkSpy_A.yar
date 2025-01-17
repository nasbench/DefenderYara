
rule TrojanSpy_AndroidOS_SkSpy_A{
	meta:
		description = "TrojanSpy:AndroidOS/SkSpy.A,SIGNATURE_TYPE_DEXHSTR_EXT,08 00 08 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 62 6c 6f 63 6b 5f 6e 75 6d 62 65 72 73 } //01 00  #block_numbers
		$a_01_1 = {23 63 68 61 6e 67 65 5f 75 72 6c } //01 00  #change_url
		$a_01_2 = {23 63 6f 6e 74 72 6f 6c 5f 6e 75 6d 62 65 72 } //01 00  #control_number
		$a_01_3 = {23 64 69 73 61 62 6c 65 5f 66 6f 72 77 61 72 64 5f 63 61 6c 6c 73 } //01 00  #disable_forward_calls
		$a_01_4 = {23 69 6e 74 65 72 63 65 70 74 5f 73 6d 73 5f 73 74 61 72 74 } //01 00  #intercept_sms_start
		$a_01_5 = {23 6c 69 73 74 65 6e 5f 73 6d 73 5f 73 74 6f 70 } //01 00  #listen_sms_stop
		$a_01_6 = {41 44 4d 49 4e 5f 55 52 4c 5f 50 52 45 46 } //01 00  ADMIN_URL_PREF
		$a_01_7 = {49 4e 54 45 52 43 45 50 54 49 4e 47 5f 49 4e 43 4f 4d 49 4e 47 5f 45 4e 41 42 4c 45 44 } //01 00  INTERCEPTING_INCOMING_ENABLED
		$a_01_8 = {4c 49 53 54 45 4e 45 44 5f 49 4e 43 4f 4d 49 4e 47 5f 53 4d 53 } //01 00  LISTENED_INCOMING_SMS
		$a_01_9 = {23 77 69 70 65 5f 64 61 74 61 } //01 00  #wipe_data
		$a_01_10 = {2f 53 44 43 61 72 64 53 65 72 76 69 63 65 53 74 61 72 74 65 72 } //00 00  /SDCardServiceStarter
		$a_00_11 = {5d 04 00 } //00 05 
	condition:
		any of ($a_*)
 
}