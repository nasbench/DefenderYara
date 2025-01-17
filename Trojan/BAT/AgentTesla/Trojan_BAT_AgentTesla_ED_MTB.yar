
rule Trojan_BAT_AgentTesla_ED_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_02_0 = {0a 0a 02 8e 69 8d 90 01 04 0b 16 0c 2b 15 00 07 08 02 08 91 06 08 06 8e 69 5d 91 61 d2 9c 00 08 17 58 0c 08 02 8e 69 fe 04 13 04 11 04 2d df 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ED_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 03 00 "
		
	strings :
		$a_01_0 = {02 7b 07 00 00 04 0c 02 08 02 7b 06 00 00 04 58 02 7b 04 00 00 04 58 20 8d 3b e0 7c 02 7b 09 00 00 04 58 61 7d 07 00 00 04 02 08 7d 06 00 00 04 } //01 00 
		$a_01_1 = {4e 00 6f 00 74 00 65 00 50 00 61 00 64 00 20 00 50 00 52 00 6f 00 } //01 00  NotePad PRo
		$a_01_2 = {45 00 73 00 6d 00 61 00 69 00 6c 00 20 00 45 00 4c 00 20 00 42 00 6f 00 42 00 } //01 00  Esmail EL BoB
		$a_01_3 = {73 65 74 5f 55 72 6c } //00 00  set_Url
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ED_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {fa 01 33 00 16 00 00 01 00 00 00 1d 01 00 00 0f 01 00 00 db 03 00 00 bc 07 00 00 ec 06 } //03 00 
		$a_81_1 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //03 00  DownloadFile
		$a_81_2 = {67 65 74 5f 41 62 73 6f 6c 75 74 65 50 61 74 68 } //03 00  get_AbsolutePath
		$a_81_3 = {67 65 74 5f 43 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //03 00  get_ConnectionString
		$a_81_4 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //03 00  DebuggerHiddenAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerNonUserCodeAttribute
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ED_MTB_4{
	meta:
		description = "Trojan:BAT/AgentTesla.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {01 57 9f a2 2b 09 0f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 88 00 00 00 44 00 00 00 52 } //01 00 
		$a_01_1 = {4f 70 68 74 68 61 6c 6d 69 63 } //01 00  Ophthalmic
		$a_01_2 = {48 74 74 70 4c 69 73 74 65 6e 65 72 43 6f 6e 74 65 78 74 } //01 00  HttpListenerContext
		$a_01_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 43 00 68 00 61 00 6e 00 67 00 65 00 45 00 76 00 65 00 6e 00 74 00 } //01 00  SELECT * FROM Win32_VolumeChangeEvent
		$a_01_4 = {47 00 34 00 44 00 35 00 34 00 43 00 37 00 44 00 34 00 38 00 41 00 35 00 37 00 45 00 34 00 37 00 59 00 38 00 37 00 48 00 42 00 34 00 } //00 00  G4D54C7D48A57E47Y87HB4
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ED_MTB_5{
	meta:
		description = "Trojan:BAT/AgentTesla.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,24 00 24 00 0a 00 00 0a 00 "
		
	strings :
		$a_81_0 = {54 68 65 6d 69 6e 67 53 68 61 72 70 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //0a 00  ThemingSharper.Properties.Resources
		$a_81_1 = {54 68 65 6d 69 6e 67 53 68 61 72 70 65 72 2e 46 6f 72 67 6f 74 50 61 73 73 77 6f 72 64 2e 72 65 73 6f 75 72 63 65 73 } //0a 00  ThemingSharper.ForgotPassword.resources
		$a_81_2 = {54 68 65 6d 69 6e 67 53 68 61 72 70 65 72 2e 50 61 79 6d 65 6e 74 2e 72 65 73 6f 75 72 63 65 73 } //01 00  ThemingSharper.Payment.resources
		$a_81_3 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_81_4 = {47 65 74 45 6c 65 6d 65 6e 74 54 79 70 65 } //01 00  GetElementType
		$a_81_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_6 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_7 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_81_8 = {42 69 74 6d 61 70 } //01 00  Bitmap
		$a_81_9 = {47 65 74 54 79 70 65 } //00 00  GetType
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ED_MTB_6{
	meta:
		description = "Trojan:BAT/AgentTesla.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 11 00 00 14 00 "
		
	strings :
		$a_01_0 = {24 33 30 35 30 44 30 41 34 2d 42 42 44 37 2d 34 43 44 44 2d 42 35 44 38 2d 32 39 38 31 46 45 36 44 34 32 36 31 } //14 00  $3050D0A4-BBD7-4CDD-B5D8-2981FE6D4261
		$a_81_1 = {24 32 38 35 38 31 34 65 65 2d 34 36 32 31 2d 34 35 32 64 2d 39 30 32 61 2d 39 64 31 64 65 30 37 62 35 30 36 65 } //14 00  $285814ee-4621-452d-902a-9d1de07b506e
		$a_81_2 = {24 37 62 37 66 62 37 32 66 2d 36 36 32 31 2d 34 34 65 37 2d 62 33 36 37 2d 37 63 63 33 30 38 62 65 65 32 36 65 } //14 00  $7b7fb72f-6621-44e7-b367-7cc308bee26e
		$a_81_3 = {24 30 63 65 64 63 39 30 66 2d 36 66 39 31 2d 34 36 62 31 2d 62 39 31 32 2d 64 61 35 36 32 66 33 63 30 36 39 35 } //01 00  $0cedc90f-6f91-46b1-b912-da562f3c0695
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {52 65 62 6f 6f 74 5f 49 4d 47 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Reboot_IMG.Properties.Resources.resources
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_7 = {6f 6b 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  ok.My.Resources
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_9 = {54 50 32 5f 50 72 6f 67 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  TP2_Prog.Resources.resources
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_11 = {73 74 62 63 2e 4d 44 49 50 61 72 65 6e 74 31 2e 72 65 73 6f 75 72 63 65 73 } //01 00  stbc.MDIParent1.resources
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_13 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_14 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_15 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_16 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}