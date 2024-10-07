Get-childItem 
Get-childItem | Sort-Object -Property Name
Get-childItem | Sort Name
Get-childItem | Sort LastWriteTime
Get-childItem | Sort LastAccessTime
Get-childItem | Sort LastWriteTime -Descending
Get-Service | GM
get-service s*
get-service s* | sort status
get-service s* | sort status,name
get-process
get-process | gm | more
get-process | sort VM -Descending | more 
Get-eventLog -List  
Get-eventLog -List  | sort Entries -desc
Get-EventLog  -LogName Security -Newest 100
Get-EventLog  -LogName Security -Newest 100 | more 
Get-EventLog  -LogName Security -Newest 100 | sort TimeWritten -desc | more
Get-EventLog  -LogName Security -Newest 100 | gm
Get-EventLog  -LogName Security -Newest 100 | sort TimeWritten -desc | Out-File .\logs.txt

