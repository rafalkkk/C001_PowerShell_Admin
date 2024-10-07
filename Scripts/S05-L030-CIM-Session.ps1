Write-Output $env:COMPUTERNAME
Get-NetConnectionProfile
Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Private
Get-NetConnectionProfile

winrm quickconfig

Get-CimInstance -ClassName WIN32_LogicalDisk -ComputerName $env:COMPUTERNAME

$s=New-CimSession -ComputerName $env:COMPUTERNAME
Get-CimInstance -ClassName WIN32_LogicalDisk -CimSession $s

$option=New-CimSessionOption -Protocol DCOM
$s2=New-CimSession -ComputerName $env:COMPUTERNAME -SessionOption $option
Get-CimInstance -ClassName WIN32_OperatingSystem -CimSession $s2

$s
$s2

Get-CimSession
Get-CimSession | Remove-CimSession
Get-CimSession

$s
Get-CimInstance -ClassName WIN32_LogicalDisk -CimSession $s
