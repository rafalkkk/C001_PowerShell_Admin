Get-EventLog -log Application -newest 7
Get-ChildItem C:\temp | sort Length -Descending | Select-Object -First 5
Get-ChildItem C:\temp | sort Length -Descending | Select-Object -First 5 -Skip 1
Get-CHildItem c:\temp | gm
Get-ChildItem C:\temp | sort Length -Descending |
    Select-Object -First 5 -Property Name, IsReadOnly, LastAccessTime, `
                                     LastWriteTime, Length | Format-Table

Get-ChildItem C:\temp | sort Length -Descending |
  Select -First 5 Name, IsReadOnly, LastAccessTime, LastWriteTime, Length |
  Format-Table                                     
  