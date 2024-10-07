Get-ChildItem c:\temp\*.ini
Get-ChildItem c:\temp\*.ini | GM

Get-ChildItem c:\temp\*.ini | ForEach-Object -MemberName Delete

mkdir log_backup
Get-ChildItem c:\temp\*.log
Get-ChildItem c:\temp\*.log | foreach { $PSItem.CopyTo('.\log_backup\'+$PSItem.Name)}
ls .\log_backup

del .\log_backup\*.*
Get-ChildItem c:\temp\*.log | % { $_.CopyTo('.\log_backup\'+$_.Name)}


Get-ChildItem c:\temp\*.log | ForEach -Begin {del .\log_backup\*.*} `
                                      -Process { $_.CopyTo('.\log_backup\'+$_.Name)} `
                                      -End {ls .\log_backup}

