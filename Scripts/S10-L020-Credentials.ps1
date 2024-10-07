Invoke-Command -ComputerName DRAGON02  { Get-Process -Name notepad } 

winrm s winrm/config/client '@{TrustedHosts="DRAGON02"}'

Get-Credential
Get-Credential -Message "To access this computer you need to enter your credentials"
Get-Credential -Message "To access this computer you need to enter your credentials" -UserName "boss"
$cred=Get-Credential -Message "To access this computer you need to enter your credentials" -UserName "boss"
$cred

Invoke-Command -ComputerName DRAGON02 -Credential $cred  { Get-Process -Name notepad } 
Invoke-Command -ComputerName DRAGON02 -Credential (Get-Credential) { Get-Process -Name notepad } 

Invoke-Command -ComputerName DRAGON02  -Credential $cred  { Get-Process -Name notepad } | Stop-Process
Invoke-Command -ComputerName DRAGON02  -Credential $cred  { Get-Process -Name notepad | Stop-Process}