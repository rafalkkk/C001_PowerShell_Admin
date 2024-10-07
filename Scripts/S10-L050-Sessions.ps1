$compA = $env:COMPUTERNAME
$compB = $env:COMPUTERNAME
$credA = Get-Credential -Message "Enter credentials for CompA"
$credB = Get-Credential -Message "Enter credentials for CompB"

$sessionA = New-PSSession -ComputerName $compA -Credential $credA
$sessionA

Enter-PSSession -Session $sessionA
Get-Service bits
Exit-PSSession

Get-PSSession

Invoke-Command -Session $sessionA -ScriptBlock { Get-WmiObject -Class Win32_OperatingSystem }

New-PSSession -ComputerName $compA -Credential $credA -Name "Backup session"
Get-PSSession

Invoke-Command -Session (Get-PSSession -Name "Backup session") -ScriptBlock { Get-WmiObject -Class Win32_OperatingSystem }

$sessionA | Remove-PSSession
Get-PSSession
Get-PSSession | Remove-PSSession
Get-PSSession

Get-ChildItem WSMan:\localhost\Shell

$sessionA = New-PSSession -ComputerName $compA -Credential $credA
$sessionB = New-PSSession -ComputerName $compB -Credential $credB

Disconnect-PSSession -Session $sessionB

Get-PSSession
Connect-PSSession -Session (Get-PSSession -ComputerName $compB -State Disconnected)
Get-PSSession

Enter-PSSession $sessionB
Get-Service bits
Exit-PSSession

Get-PSSession | Remove-PSSession