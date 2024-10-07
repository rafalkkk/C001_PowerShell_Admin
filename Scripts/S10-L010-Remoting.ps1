Get-Command -Noun PSRemoting
Enable-PSRemoting -WhatIf

Enable-PSRemoting -SkipNetworkProfileCheck 

Enter-PSSession -ComputerName DRAGON02 
Get-WmiObject -Class Win32_operatingSystem 
Exit-PSSession

Enter-PSSession -ComputerName DRAGON99 

Invoke-Command -ComputerName DRAGON02 -ScriptBlock { Get-Service bits }
Invoke-Command -ComputerName DRAGON02  { Get-Service bits } | Get-Member
Get-Service bits | Get-Member
