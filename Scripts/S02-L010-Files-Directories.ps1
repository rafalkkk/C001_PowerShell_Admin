cd .\Scripts

ls
dir

mkdir c:\tmp1 
rmdir c:\tmp1
md c:\tmp1
rd c:\tmp1

mkdir c:\tmp1
New-Item -Path c:\tmp1\notes.txt
Set-Content -path C:\tmp1\notes.txt -Value "This content was created with PowerShell!`nLOL!"
Get-Content -path C:\tmp1\notes.txt
Add-Content -path C:\tmp1\notes.txt -Value "And I can add here something!"
Get-Content C:\tmp1\notes.txt
Clear-Content C:\tmp1\notes.txt
Get-Content C:\tmp1\notes.txt

Get-Command -Noun *content*