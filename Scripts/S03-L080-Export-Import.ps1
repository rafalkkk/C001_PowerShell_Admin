Get-Help -Verb ConvertTo
Get-Help -verb ConvertFrom

Get-Help -Verb Export
Get-Help -Verb Import

Get-Service | Select-Object -First 5 | ConvertTo-Csv | ConvertFrom-Csv | Select-Object Name, Status, StartType

Get-Service | Select-Object -First 5 | ConvertTo-Csv | Out-File c:\temp\svc.txt
Get-Content C:\temp\svc.txt | ConvertFrom-Csv | Select-Object Name, Status, StartType

Get-Service | Select-Object -First 5 | Export-Csv c:\temp\svc.txt
Import-csv C:\temp\svc.txt | Select-Object Name, Status, StartType

Get-Service | Select-Object -First 5 Name, Status | Export-CSV C:\temp\svc.txt
Import-csv C:\temp\svc.txt | Select-Object Name, Status, StartType