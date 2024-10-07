Get-EventLog -log Application
Get-EventLog -log Application -newest 8
Get-EventLog -log Application -newest 7
Get-ChildItem C:\temp
Get-ChildItem C:\temp | sort Length -Descending | Select-Object -First 5
Get-ChildItem C:\temp | sort Length -Descending | Select-Object -First 5 -Skip 1
Get-CHildItem c:\temp | gm
Get-ChildItem C:\temp | sort Length -Descending | Select-Object -First 5 -Property Name, IsReadOnly, LastAccessTime, LastWriteTime, Length
Get-ChildItem C:\temp | sort Length -Descending | Select-Object -First 5 -Property Name, IsReadOnly, LastAccessTime, LastWriteTime, Length
Get-ChildItem C:\temp | sort Length -Descending | Select-Object -First 5 -Property Name, IsReadOnly, LastAccessTime, LastWriteTime, Length
Get-ChildItem C:\temp | sort Length -Descending | Select-Object -First 5 -Property Name, IsReadOnly, LastAccessTime, LastWriteTime, Length
                                     LastWriteTime, Length 
Get-ChildItem C:\temp | sort Length -Descending |
    Select-Object -First 5 -Property Name, IsReadOnly, LastAccessTime, `
                                     LastWriteTime, Length 
Get-ChildItem C:\temp | sort Length -Descending |
    Select-Object -First 5 -Property Name, IsReadOnly, LastAccessTime, `
                                     LastWriteTime, Length | Format-Table
Get-ChildItem C:\temp | sort Length -Descending |
  Select -First 5 Name, IsReadOnly, LastAccessTime, LastWriteTime, Length |
  Format-Table                                     
