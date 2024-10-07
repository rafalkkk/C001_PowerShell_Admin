$serviceName = "Spooler"
$serviceName
$status = "Running"

Get-Service -Name Spooler | Where { $_.status -eq "Running" }
Get-Service -Name $serviceName | Where { $_.status -eq $status }

Get-ChildItem VARIABLE:\
Get-ChildItem VARIABLE:\service*

Get-Command -Noun Variable

Clear-Variable serviceName
$serviceName
Get-ChildItem VARIABLE:\service*

Remove-Variable serviceName
$serviceName
Get-ChildItem VARIABLE:\service*

Set-StrictMode -Version latest
$serviceName

New-Variable filterExpression
Set-Variable filterExpression "Run"
$filterExpression

$serviceName = @('Spooler', 'WinRm', 'bits')


Get-Service -Name $serviceName | Where { $_.Status -Like "*$filterExpression*" }
Get-Service -Name $serviceName | Where { $_.Status -Like '*$filterExpression*' }

"Displaying services like $serviceName with status $filterExpression"
'Displaying services like $serviceName with status $filterExpression'

