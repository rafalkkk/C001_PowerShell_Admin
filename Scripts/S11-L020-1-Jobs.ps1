$comp = $env:COMPUTERNAME

Start-Job -ScriptBlock { Get-Process } -Name "Currently running procs."
Get-Job

Get-WmiObject -Class Win32_OperatingSystem -ComputerName $comp -AsJob
Get-Job

Invoke-Command -ComputerName $comp { Get-Process } -AsJob
Get-Job

Invoke-Command -ComputerName NonExistingComp { Get-Process } -AsJob
Get-Job

Get-Job -Id 80
Get-Job -Name 'Currently running procs.'
Get-Job -HasMoreData $true


Start-Job -ScriptBlock { while ($true) { } } -Name loop
Get-Job
Stop-Job -Name loop
Get-Job
Get-Job -Name loop | Remove-Job
Get-Job

Receive-Job -Name 'Currently running procs.' 
Receive-Job -Name 'Currently running procs.' 
Get-Job
Receive-Job -Id 84 -Keep
Receive-Job -Id 84 -Keep
Get-Job

Get-Job | Remove-Job
Get-Job

