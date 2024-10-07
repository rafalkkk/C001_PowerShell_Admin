Get-WmiObject -Namespace root -List -Recurse
Get-WmiObject -Namespace root -List -Recurse | Measure 

Get-WmiObject -Namespace root -List -Recurse | Select -Unique __NAMESPACE
Get-WmiObject -Namespace root\CIMv2 -List -Recurse | Group-Object __NAMESPACE | Sort Count -desc
Get-WmiObject -Namespace root\CIMv2 -List -Recurse | Where { $_.Name -like "*desktop*"}

Get-WmiObject -Namespace root\cimv2 -List | Sort Name | measure
Get-CimClass  -Namespace root\cimv2 | Sort CimClassName | measure 
Get-CimClass  -Namespace root\cimv2 | Where { $_.CimClassName -like "*desktop*"} | Sort CimClassName

Get-WmiObject -Class Win32_Desktop 
Get-CimInstance -ClassName Win32_Desktop

Get-WmiObject -Class Win32_LogicalDisk
Get-CimInstance -ClassName Win32_LogicalDisk

Get-WmiObject -query "SELECT * FROM Win32_LogicalDisk"
Get-CimInstance -query "SELECT * FROM Win32_LogicalDisk"

Get-WmiObject -Class Win32_Process -Filter "Name = 'notepad.exe'"
Get-CimInstance -ClassName Win32_Process -Filter "Name = 'notepad.exe'"

Get-WmiObject -query "SELECT * FROM Win32_Process WHERE Name = 'notepad.exe'"
Get-CimInstance -query "SELECT * FROM Win32_Process WHERE Name = 'notepad.exe'"