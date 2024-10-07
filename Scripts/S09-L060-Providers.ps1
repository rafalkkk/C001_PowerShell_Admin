Get-PSProvider
Get-PSDrive

c:
d:
alias:
cd alias:
dir
cd variable:
dir


c:
Set-Location C:\temp
dir
Get-ChildItem
New-Item newfile.txt -ItemType File
Get-ItemProperty newfile.txt
Remove-Item newfile.txt
Get-Command -Noun Item*


Set-Location HKLM:
Set-Location HKLM:\SOFTWARE
Get-ChildItem Microsoft
New-Item -Name NewSoftware
New-ItemProperty -Path NewSoftware -name Mode -Value "Service"
Get-ItemProperty -Path NewSoftware
Set-ItemProperty -Path NewSoftware -Name Mode -Value "Application"
Get-ItemProperty -Path NewSoftware
Remove-Item NewSoftware


Get-PSDrive
New-PSDrive TMP filesystem c:\temp
cd TMP:
dir
Remove-PSDrive TMP
c:
Remove-PSDrive TMP
