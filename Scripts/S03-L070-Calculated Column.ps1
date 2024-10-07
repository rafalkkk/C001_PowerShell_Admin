Get-ChildItem C:\temp -File | 
    Sort-Object -Property Length -Descending  | 
      Select-Object -First 5 Name,Length,@{name='Size in KB';expr={$PSItem.Length/1KB}}

ls C:\temp -File | 
    Sort Length -Descending  | 
      Select -First 5 Name,Length,@{n='Size in KB';e={$_.Length/1KB}}      

"This is first value {0:N2} and this is second value {1:N2}" -f 123.4567, 98765.4321

Get-ChildItem C:\temp -File | 
    Sort-Object -Property Length -Descending  | 
      Select-Object -First 5 Name,Length,@{name='Size in KB';expr={"{0,10:N2}" -f ($PSItem.Length/1KB)}}