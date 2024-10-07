$services = @('Spooler', 'WinRM', 'bits')
$services
$services = 'Spooler', 'WinRM', 'bits'
$services
$services | Out-File c:\temp\services.txt
Get-Content C:\temp\services.txt

$services[0]
$services[1]
$services.Count
$services.Length
$services[0].Length
$services[$services.Count-1]
$services[-1]
$services[-2]
$services[1111]

$services[0]
$services[0] = $services[0].ToUpper()
$services[0]

$services="Spooler,WinRM,bits"
$services
$services.split(',')
$servicesFromString = $services.split(',')
$servicesFromString

$servicesFromFile = Get-Content C:\temp\services.txt
$servicesFromFile

$services = $servicesFromFile
$services | ForEach-Object { "Checking $_" } 
$services | ForEach-Object { "Checking $_" | Out-File c:\temp\$_.txt } 
$services | ForEach-Object { Get-Content "c:\temp\$_.txt" } 
$services | ForEach-Object { Write-Host -foreground Yellow $_ ; Get-Content "c:\temp\$_.txt" } 



$procs = Get-Process
$procs.Count
$procs | select name, cpu | sort cpu -desc | select -first 5

$procCPU = Get-Process | Where { $_.CPU -gt 20}
$procCPU.Count

$procs.Count - $procCPU.Count