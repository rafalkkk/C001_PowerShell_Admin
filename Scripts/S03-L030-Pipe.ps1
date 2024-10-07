Get-Service -name spooler | Get-Member
Get-Service | Out-GridView
Get-Service | out-file c:\temp\services.txt
Get-service > c:\temp\services2.txt


Get-ChildItem c:\temp | GM
mkdir c:\temp\data
Get-ChildItem c:\temp | GM