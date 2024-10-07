$name=Read-Host "Enter your name"
Write-Host "Hi $name!"

# cd c:\temp
# hi.ps1
# .\hi.ps1


Get-ExecutionPolicy
Set-ExecutionPolicy AllSigned 
.\hi.ps1

Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned
.\hi.ps1


Set-ExecutionPolicy AllSigned -Force
Get-ExecutionPolicy
.\hi.ps1
