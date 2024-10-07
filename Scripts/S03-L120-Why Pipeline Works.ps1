Get-Help Stop-Process -ShowWindow
Get-Process | gm

1..3 | foreach {notepad}

Get-Process Notepad | Stop-Process

Write-Output "notepad" | Out-File ./proc-to-stop.txt
Get-Content ./proc-to-stop.txt

1..3 | foreach {notepad}
Get-Content ./proc-to-stop.txt | Stop-Process
Get-Help Stop-Process -ShowWindow
Get-Content ./proc-to-stop.txt | Select @{n="Name";e={$_}} | Stop-Process

Stop-Process -Name (Get-Content ./proc-to-stop.txt)