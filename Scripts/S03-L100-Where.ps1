Get-ChildItem C:\temp | Where-Object -Property PSIsContainer -eq -Value $false
Get-ChildItem C:\temp | Where PSIsContainer -eq $false
Get-ChildItem C:\temp | ? PSIsContainer -eq $false
Get-ChildItem C:\temp | Where PSIsContainer -eq $false -and Length -gt 1000

Get-ChildItem C:\temp | Where -FilterScript { $PSItem.PSIsContainer -eq $false -and $PSItem.Length -gt 1000 }
Get-ChildItem C:\temp | Where { $_.PSIsContainer -eq $false -and $_.Length -gt 1000 }

