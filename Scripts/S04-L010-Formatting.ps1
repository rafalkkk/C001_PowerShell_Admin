Get-EventLog Security -Newest 5

Get-Service | Select-Object -First 5
Get-Service | Select-Object -First 20 | Format-Wide
Get-Service | Select-Object -First 20 | FW
Get-Service | Select-Object -First 20 | FW -Property ServiceName
Get-Service | Select-Object -First 20 | FW DisplayName
Get-Service | Select-Object -First 20 | FW -Column 6
Get-Service | Select-Object -First 20 | FW -AutoSize

Get-Service | Select-Object -First 5 | Format-List
Get-Service | Select-Object -First 5 | FL
Get-Service | Select-Object -First 5 | FL -Property *
Get-Service | Select-Object -First 5 | FL -Property Name, Status
Get-Service | Select-Object -First 5 | FL Name, Status

Get-Service | Select-Object -First 5 | Format-Table
Get-Service | Select-Object -First 5 | FT
Get-Service | Select-Object -First 5 | FT -Property *
Get-Service | Select-Object -First 5 | FT Name, Status, DisplayName, CanStop, StartType
Get-Service | Select-Object -First 5 | FT Name, Status, DisplayName, CanStop, StartType, Description
Get-Service | Select-Object -First 5 | FT Name, Status, DisplayName, CanStop, StartType, Description -Wrap

Get-ChildItem C:\Windows\system32\drivers\etc | FT Name, @{ n='Size KB'; e={$_.Length/1KB} }
Get-ChildItem C:\Windows\system32\drivers\etc | FT Name, @{ n='Size KB'; e={$_.Length/1KB}; formatString="N2"} 

Get-Service | Select-Object -First 5 | Sort CanStop -Desc | FT Name, Status, DisplayName, CanStop, StartType
Get-Service | Select-Object -First 5 | FT Name, Status, DisplayName, CanStop, StartType | Sort CanStop999999 -Desc
Get-Service | Select-Object -First 5 | FT Name, Status, DisplayName, CanStop, StartType | GM
Get-Service | Select-Object -First 5 | Sort CanStop -Desc | GM

Get-Service | Select-Object -First 5 | Sort CanStop -Desc | FT Name, Status, DisplayName, CanStop, StartType -GroupBy CanStop
Get-Service | Select-Object -First 5 | Sort CanStop -Desc | Group-Object CanStop


