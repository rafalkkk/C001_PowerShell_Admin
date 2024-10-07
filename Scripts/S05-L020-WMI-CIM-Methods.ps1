Get-WmiObject -Class Win32_OperatingSystem | Get-Member
Get-WmiObject -Class Win32_OperatingSystem | Select InstallDate
Get-WmiObject -Class Win32_OperatingSystem | Select -ExpandProperty InstallDate

Get-CimClass -ClassName Win32_OperatingSystem | Get-Member
Get-CimClass -ClassName Win32_OperatingSystem | Select-Object CimClassMethods
Get-CimClass -ClassName Win32_OperatingSystem | Select-Object -ExpandProperty CimClassMethods

Get-CimClass -ClassName Win32_OperatingSystem | 
 Select-Object -ExpandProperty CimClassMethods |
   Where Name -EQ Win32Shutdown |
    Select-Object -ExpandProperty Parameters

Get-CimClass -ClassName Win32_LogicalDisk | Select-Object -ExpandProperty CimClassMethods
Get-CimClass -ClassName Win32_TimeZone | Select-Object -ExpandProperty CimClassMethods

New-LocalGroup -Name ps_test -Description "PowerShell testers"
Get-CimInstance -ClassName Win32_Group
Get-CimInstance -ClassName Win32_Group -Filter "Name='PS_Test'" 
Get-CimInstance -ClassName Win32_Group -Filter "Name='PS_Test'" | Invoke-CimMethod -MethodName Rename -Arguments @{"Name"="PSTest"}
Get-CimInstance -ClassName Win32_Group
Remove-LocalGroup -Name pstest

Invoke-CimMethod -Class Win32_Process -MethodName Create -Arguments @{"CommandLine"="notepad.exe"}
Get-Process -Name notepad
Get-CimInstance -ClassName Win32_Process -Filter "Name='notepad.exe'"
Get-CimInstance -ClassName Win32_Process -Filter "Name='notepad.exe'"| Invoke-CimMethod -MethodName Terminate 
Get-Process -Name notepad

# Invoke-CimMethod -Class Win32_Process -MethodName Create -Arguments @{"CommandLine"="notepad.exe"}
# Get-WMIObject -ClassName Win32_Process -Filter "Name='notepad.exe'"| ForEach-Object {$PSItem.Terminate(0)}
# Get-Process -Name notepad


