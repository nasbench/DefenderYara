
rule VirTool_Win32_Empire_A{
	meta:
		description = "VirTool:Win32/Empire.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0a 00 00 01 00 "
		
	strings :
		$a_80_0 = {53 74 61 72 74 2d 4e 65 67 6f 74 69 61 74 65 20 2d 53 } //Start-Negotiate -S  01 00 
		$a_80_1 = {24 53 63 72 69 70 74 3a 43 6f 6e 74 72 6f 6c 53 65 72 76 65 72 73 5b 24 53 63 72 69 70 74 3a 53 65 72 76 65 72 49 6e 64 65 78 5d } //$Script:ControlServers[$Script:ServerIndex]  01 00 
		$a_80_2 = {28 70 73 7c 74 61 73 6b 6c 69 73 74 29 } //(ps|tasklist)  01 00 
		$a_80_3 = {24 73 63 72 69 70 74 3a 41 67 65 6e 74 4a 69 74 74 65 72 } //$script:AgentJitter  01 00 
		$a_80_4 = {5b 47 43 5d 3a 3a 43 6f 6c 6c 65 63 74 28 29 } //[GC]::Collect()  01 00 
		$a_02_5 = {20 00 2d 00 62 00 78 00 6f 00 72 00 20 00 24 00 90 02 08 5b 00 28 00 24 00 90 02 08 5b 00 24 00 90 02 04 5d 00 20 00 2b 00 20 00 24 00 90 02 08 5b 00 24 00 90 02 04 5d 00 29 00 20 00 25 00 20 00 32 00 35 00 36 00 5d 00 3b 00 90 00 } //01 00 
		$a_02_6 = {20 2d 62 78 6f 72 20 24 90 02 08 5b 28 24 90 02 08 5b 24 90 02 04 5d 20 2b 20 24 90 02 08 5b 24 90 02 04 5d 29 20 25 20 32 35 36 5d 3b 90 00 } //01 00 
		$a_02_7 = {2e 00 55 00 70 00 6c 00 6f 00 61 00 64 00 44 00 61 00 74 00 61 00 28 00 24 00 90 02 10 2b 00 22 00 2f 00 90 02 40 2e 00 70 00 68 00 70 00 90 00 } //01 00 
		$a_02_8 = {2e 55 70 6c 6f 61 64 44 61 74 61 28 24 90 02 10 2b 22 2f 90 02 40 2e 70 68 70 90 00 } //01 00 
		$a_80_9 = {20 2d 50 61 63 6b 65 74 44 61 74 61 20 24 54 61 73 6b 44 61 74 61 } // -PacketData $TaskData  00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Empire_A_2{
	meta:
		description = "VirTool:Win32/Empire.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0c 00 00 01 00 "
		
	strings :
		$a_80_0 = {5b 53 79 73 74 65 6d 2e 4e 65 74 2e 53 65 72 76 69 63 65 50 6f 69 6e 74 4d 61 6e 61 67 65 72 5d 3a 3a 45 78 70 65 63 74 31 30 30 43 6f 6e 74 69 6e 75 65 3d 30 3b } //[System.Net.ServicePointManager]::Expect100Continue=0;  01 00 
		$a_80_1 = {3d 4e 65 77 2d 4f 62 6a 65 63 74 20 53 79 73 74 65 6d 2e 4e 65 74 2e 57 65 62 43 6c 69 65 6e 74 3b } //=New-Object System.Net.WebClient;  01 00 
		$a_80_2 = {2e 48 65 61 64 65 72 73 2e 41 64 64 28 27 55 73 65 72 2d 41 67 65 6e 74 27 2c 24 } //.Headers.Add('User-Agent',$  01 00 
		$a_80_3 = {2e 48 65 61 64 65 72 73 2e 41 64 64 28 22 43 6f 6f 6b 69 65 22 2c 22 } //.Headers.Add("Cookie","  01 00 
		$a_80_4 = {2e 50 72 6f 78 79 3d 5b 53 79 73 74 65 6d 2e 4e 65 74 2e 57 65 62 52 65 71 75 65 73 74 5d 3a 3a 44 65 66 61 75 6c 74 57 65 62 50 72 6f 78 79 3b } //.Proxy=[System.Net.WebRequest]::DefaultWebProxy;  01 00 
		$a_80_5 = {24 53 63 72 69 70 74 3a 50 72 6f 78 79 } //$Script:Proxy  01 00 
		$a_80_6 = {3d 5b 53 79 73 74 65 6d 2e 54 65 78 74 2e 45 6e 63 6f 64 69 6e 67 5d 3a 3a 41 53 43 49 49 2e 47 65 74 42 79 74 65 73 28 27 } //=[System.Text.Encoding]::ASCII.GetBytes('  01 00 
		$a_80_7 = {24 5f 2d 62 78 6f 72 24 53 5b 28 24 53 5b 24 49 5d 2b 24 53 5b 24 48 5d 29 25 32 35 36 5d 7d 7d } //$_-bxor$S[($S[$I]+$S[$H])%256]}}  01 00 
		$a_80_8 = {2e 44 6f 77 6e 6c 6f 61 64 44 61 74 61 28 24 73 65 72 2b 24 74 29 3b } //.DownloadData($ser+$t);  01 00 
		$a_02_9 = {24 00 74 00 3d 00 27 00 2f 00 90 02 30 2e 00 70 00 68 00 70 00 27 00 3b 00 90 00 } //01 00 
		$a_02_10 = {24 74 3d 27 2f 90 02 30 2e 70 68 70 27 3b 90 00 } //01 00 
		$a_80_11 = {2d 6a 6f 69 6e 5b 43 68 61 72 5b 5d 5d 28 26 20 24 52 20 24 64 61 74 61 20 28 24 49 56 2b 24 4b 29 29 7c 49 45 58 } //-join[Char[]](& $R $data ($IV+$K))|IEX  00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Empire_A_3{
	meta:
		description = "VirTool:Win32/Empire.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0d 00 00 01 00 "
		
	strings :
		$a_80_0 = {53 74 61 72 74 2d 4e 65 67 6f 74 69 61 74 65 } //Start-Negotiate  01 00 
		$a_80_1 = {20 2d 53 74 61 67 69 6e 67 4b 65 79 } // -StagingKey  01 00 
		$a_80_2 = {20 2d 53 65 73 73 69 6f 6e 4b 65 79 } // -SessionKey  01 00 
		$a_80_3 = {40 28 30 78 30 31 2c 30 78 30 32 2c 30 78 30 30 2c 30 78 30 30 29 } //@(0x01,0x02,0x00,0x00)  01 00 
		$a_80_4 = {40 28 30 78 30 31 2c 30 78 30 33 2c 30 78 30 30 2c 30 78 30 30 29 } //@(0x01,0x03,0x00,0x00)  01 00 
		$a_80_5 = {2e 48 65 61 64 65 72 73 2e 41 64 64 28 22 55 73 65 72 2d 41 67 65 6e 74 22 } //.Headers.Add("User-Agent"  01 00 
		$a_80_6 = {49 6e 76 6f 6b 65 2d 45 6d 70 69 72 65 20 2d 53 65 72 76 65 72 73 20 40 28 } //Invoke-Empire -Servers @(  01 00 
		$a_02_7 = {20 00 2d 00 62 00 78 00 6f 00 72 00 20 00 24 00 90 02 08 5b 00 28 00 24 00 90 02 08 5b 00 24 00 90 02 04 5d 00 20 00 2b 00 20 00 24 00 90 02 08 5b 00 24 00 90 02 04 5d 00 29 00 20 00 25 00 20 00 32 00 35 00 36 00 5d 00 3b 00 90 00 } //01 00 
		$a_02_8 = {20 2d 62 78 6f 72 20 24 90 02 08 5b 28 24 90 02 08 5b 24 90 02 04 5d 20 2b 20 24 90 02 08 5b 24 90 02 04 5d 29 20 25 20 32 35 36 5d 3b 90 00 } //01 00 
		$a_02_9 = {5b 00 47 00 43 00 5d 00 3a 00 3a 00 43 00 6f 00 6c 00 6c 00 65 00 63 00 74 00 28 00 29 00 3b 00 90 02 20 20 00 2d 00 53 00 65 00 72 00 76 00 65 00 72 00 73 00 20 00 40 00 28 00 90 00 } //01 00 
		$a_02_10 = {5b 47 43 5d 3a 3a 43 6f 6c 6c 65 63 74 28 29 3b 90 02 20 20 2d 53 65 72 76 65 72 73 20 40 28 90 00 } //01 00 
		$a_02_11 = {2e 00 55 00 70 00 6c 00 6f 00 61 00 64 00 44 00 61 00 74 00 61 00 28 00 24 00 90 02 10 2b 00 22 00 2f 00 90 02 40 2e 00 70 00 68 00 70 00 90 00 } //01 00 
		$a_02_12 = {2e 55 70 6c 6f 61 64 44 61 74 61 28 24 90 02 10 2b 22 2f 90 02 40 2e 70 68 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}