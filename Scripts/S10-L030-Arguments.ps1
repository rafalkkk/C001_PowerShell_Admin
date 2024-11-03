$comp = $env:COMPUTERNAME
$cred = Get-Credential 
$name = "notepad"
Get-Process -Name $name

Invoke-Command -Computer $comp -Credential $cred { Get-Process -Name $name } 
Invoke-Command -Computer $comp -Credential $cred { Param($x) Get-Process -Name $x } -ArgumentList ($name)

$log="Security"
$num=10

Get-EventLog $log -Newest $num

Invoke-Command -Computer $comp -Credential $cred { Param($logName,$count) Get-EventLog $logName -Newest $count } -ArgumentList ($log,$num)
$remoteLogs = Invoke-Command -Computer $comp -Credential $cred { Param($logName,$count) Get-EventLog $logName -Newest $count} `
                             -ArgumentList ($log,$num)
$remoteLogs

Get-Help Invoke-Command -online
