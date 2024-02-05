
rule Ransom_Win32_Cerber_B_{
	meta:
		description = "Ransom:Win32/Cerber.B!!Cerber.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 65 72 62 65 72 } //01 00 
		$a_01_1 = {63 72 62 72 } //02 00 
		$a_03_2 = {ff 75 08 c6 45 90 01 01 b8 66 c7 45 90 01 01 50 b8 89 90 01 02 66 c7 45 90 01 01 ff d0 c6 45 90 01 01 c3 ff 90 00 } //01 00 
		$a_03_3 = {8b 4c 24 04 c7 90 01 01 6e 6f 73 6a 89 48 14 c3 90 00 } //01 00 
		$a_01_4 = {b8 94 88 01 00 } //01 00 
		$a_03_5 = {83 fe 02 72 90 01 01 83 fe 03 76 05 83 fe 06 75 90 01 01 68 08 02 00 00 90 00 } //02 00 
		$a_03_6 = {3d 08 c5 bb 6c 74 90 01 01 3d 82 16 4e 77 74 90 01 01 3d 3e 87 7f 83 74 90 01 01 3d bc 64 6f 8b 90 00 } //01 00 
		$a_01_7 = {3d 51 2d 52 73 } //01 00 
		$a_03_8 = {84 c0 74 0a 81 90 01 01 6e 6f 73 6a 75 02 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Cerber_B__2{
	meta:
		description = "Ransom:Win32/Cerber.B!!Cerber.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 09 00 00 04 00 "
		
	strings :
		$a_80_0 = {7b 54 4f 52 7d 2e 7b 53 49 54 45 5f 31 7d 2f 7b 50 43 5f 49 44 7d } //{TOR}.{SITE_1}/{PC_ID}  02 00 
		$a_80_1 = {53 41 50 49 2e 53 70 65 61 6b 20 22 41 74 74 65 6e 74 69 6f 6e 21 20 41 74 74 65 6e 74 69 6f 6e 21 20 41 74 74 65 6e 74 69 6f 6e 21 22 } //SAPI.Speak "Attention! Attention! Attention!"  01 00 
		$a_80_2 = {61 6d 64 65 75 35 2e 77 69 6e } //amdeu5.win  01 00 
		$a_80_3 = {77 65 72 74 69 34 2e 77 69 6e } //werti4.win  01 00 
		$a_80_4 = {66 67 66 69 64 36 2e 77 69 6e } //fgfid6.win  01 00 
		$a_80_5 = {73 64 66 69 73 6f 2e 77 69 6e } //sdfiso.win  01 00 
		$a_80_6 = {73 69 6d 73 36 6e 2e 77 69 6e } //sims6n.win  02 00 
		$a_80_7 = {53 41 50 49 2e 53 70 65 61 6b 20 22 59 6f 75 72 20 64 6f 63 75 6d 22 2b 22 65 6e 74 73 2c 20 70 68 6f 74 6f 73 2c 20 64 61 74 61 62 61 73 65 73 20 61 6e 64 20 6f 74 68 65 72 20 69 6d 22 2b 22 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 21 22 } //SAPI.Speak "Your docum"+"ents, photos, databases and other im"+"portant files have been encrypted!"  02 00 
		$a_80_8 = {6f 6e 20 74 68 65 20 73 69 74 65 20 79 6f 75 20 77 69 6c 6c 20 62 65 20 6f 66 66 65 72 65 64 20 74 6f 20 64 6f 77 6e 6c 6f 61 64 20 54 6f 72 20 42 72 6f 77 73 65 72 3b } //on the site you will be offered to download Tor Browser;  00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Cerber_B__3{
	meta:
		description = "Ransom:Win32/Cerber.B!!Cerber.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,0a 00 0a 00 2a 00 00 01 00 "
		
	strings :
		$a_80_0 = {25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 35 78 63 65 72 62 65 72 } //%02x%02x%02x%02x%02x%02x%05xcerber  01 00 
		$a_80_1 = {25 5b 5e 2f 5d 25 5b 2f 5d 25 64 } //%[^/]%[/]%d  01 00 
		$a_80_2 = {25 63 25 63 25 63 25 63 2d 25 63 25 63 25 63 25 63 2d 25 63 25 63 25 63 25 63 2d 25 63 25 63 25 63 25 63 2d 25 63 25 63 25 63 25 63 } //%c%c%c%c-%c%c%c%c-%c%c%c%c-%c%c%c%c-%c%c%c%c  01 00 
		$a_80_3 = {25 73 5c 76 73 73 61 64 6d 69 6e 2e 65 78 65 } //%s\vssadmin.exe  01 00 
		$a_80_4 = {25 73 5c 77 62 65 6d 5c 77 6d 69 63 2e 65 78 65 } //%s\wbem\wmic.exe  01 00 
		$a_80_5 = {2f 64 20 2f 63 20 73 74 61 72 74 20 22 22 20 22 25 73 22 } ///d /c start "" "%s"  01 00 
		$a_80_6 = {2f 64 20 2f 63 20 74 61 73 6b 6b 69 6c 6c 20 2f 74 20 2f 66 20 2f 69 6d 20 22 25 73 22 } ///d /c taskkill /t /f /im "%s"  01 00 
		$a_80_7 = {62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 20 69 67 6e 6f 72 65 61 6c 6c 66 61 69 6c 75 72 65 73 } //bootstatuspolicy ignoreallfailures  01 00 
		$a_80_8 = {72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 6e 6f } //recoveryenabled no  01 00 
		$a_80_9 = {5c 53 74 72 69 6e 67 46 69 6c 65 49 6e 66 6f 5c 25 30 34 78 25 30 34 78 5c 25 73 } //\StringFileInfo\%04x%04x\%s  01 00 
		$a_80_10 = {00 6b 6e 6f 63 6b 00 } //  03 00 
		$a_80_11 = {63 65 72 62 65 72 5f 64 65 62 75 67 2e 74 78 74 } //cerber_debug.txt  03 00 
		$a_80_12 = {43 45 52 42 45 52 5f 42 4f 44 59 5f 50 4c 41 43 45 } //CERBER_BODY_PLACE  03 00 
		$a_80_13 = {43 45 52 42 45 52 5f 43 4f 52 45 5f 50 52 4f 54 45 43 54 49 4f 4e 5f 4d 55 54 45 58 } //CERBER_CORE_PROTECTION_MUTEX  03 00 
		$a_80_14 = {43 45 52 42 45 52 5f 45 56 41 4c 55 41 54 45 44 5f 43 4f 52 45 5f 50 52 4f 54 45 43 54 49 4f 4e 5f 45 56 45 4e 54 } //CERBER_EVALUATED_CORE_PROTECTION_EVENT  03 00 
		$a_80_15 = {43 45 52 42 45 52 5f 4b 45 59 5f 50 4c 41 43 45 } //CERBER_KEY_PLACE  01 00 
		$a_80_16 = {43 6f 6d 70 6f 6e 65 6e 74 5f 30 } //Component_0  01 00 
		$a_80_17 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //delete shadows /all /quiet  01 00 
		$a_80_18 = {45 6e 63 72 79 70 74 69 6e 67 20 66 69 6c 65 20 25 73 2e 2e 2e } //Encrypting file %s...  01 00 
		$a_80_19 = {66 69 6c 65 5f 62 6f 64 79 } //file_body  01 00 
		$a_80_20 = {66 69 6c 65 73 5f 6e 61 6d 65 } //files_name  01 00 
		$a_80_21 = {67 6c 6f 62 61 6c 5f 70 75 62 6c 69 63 5f 6b 65 79 } //global_public_key  01 00 
		$a_80_22 = {68 65 6c 70 5f 66 69 6c 65 73 } //help_files  01 00 
		$a_80_23 = {6d 69 6e 5f 66 69 6c 65 5f 73 69 7a 65 } //min_file_size  01 00 
		$a_80_24 = {4d 6f 64 69 66 69 65 64 20 61 74 20 25 73 20 25 73 } //Modified at %s %s  01 00 
		$a_80_25 = {6e 65 77 5f 65 78 74 65 6e 73 69 6f 6e } //new_extension  01 00 
		$a_80_26 = {50 72 69 6e 74 65 72 73 5c 44 65 66 61 75 6c 74 73 5c 25 73 } //Printers\Defaults\%s  01 00 
		$a_80_27 = {72 73 61 5f 6b 65 79 5f 73 69 7a 65 } //rsa_key_size  01 00 
		$a_80_28 = {53 65 6e 64 69 6e 67 20 73 74 61 74 20 25 73 2c 20 25 73 } //Sending stat %s, %s  01 00 
		$a_80_29 = {73 68 61 64 6f 77 63 6f 70 79 20 64 65 6c 65 74 65 } //shadowcopy delete  01 00 
		$a_80_30 = {73 68 65 6c 6c 2e 25 73 } //shell.%s  01 00 
		$a_80_31 = {73 69 74 65 5f 25 64 } //site_%d  01 00 
		$a_80_32 = {53 74 6f 70 20 72 65 61 73 6f 6e 3a 20 25 73 } //Stop reason: %s  01 00 
		$a_80_33 = {7b 25 30 38 58 2d 25 30 34 58 2d 25 30 34 58 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d } //{%08X-%04X-%04X-%02X%02X-%02X%02X%02X%02X%02X%02X}  01 00 
		$a_80_34 = {7b 43 4f 55 4e 54 5f 46 49 4c 45 53 7d } //{COUNT_FILES}  01 00 
		$a_80_35 = {7b 49 53 5f 41 44 4d 49 4e 7d } //{IS_ADMIN}  01 00 
		$a_80_36 = {7b 4d 44 35 5f 4b 45 59 7d } //{MD5_KEY}  01 00 
		$a_80_37 = {7b 50 41 52 54 4e 45 52 5f 49 44 7d } //{PARTNER_ID}  01 00 
		$a_80_38 = {7b 50 43 5f 49 44 7d } //{PC_ID}  01 00 
		$a_80_39 = {7b 53 54 4f 50 5f 52 45 41 53 4f 4e 7d } //{STOP_REASON}  01 00 
		$a_80_40 = {7b 54 4f 52 7d } //{TOR}  01 00 
		$a_80_41 = {7e 21 40 23 24 25 5e 26 2a 2b 3d } //~!@#$%^&*+=  00 00 
	condition:
		any of ($a_*)
 
}