mkdir c:\temp
cd \temp
help Get-Service
Get-Service  
Get-Service spooler 
Get-Service spooler,eventlog,efs
Get-Service -Name spooler,eventlog,efs  
Get-Service -Nam spooler,eventlog,efs  
Get-Service -Na spooler,eventlog,efs  
Get-Service -N spooler,eventlog,efs  
$list_of_services=@('spooler', 'efs', 'eventlog')
echo $list_of_services
Get-service -Name $list_of_services
echo $list_of_services > .\services.txt
cat .\services.txt
$list_from_file = Get-Content .\services.txt
echo $list_from_file
Get-service -Name $list_from_file
help Get-Service
Get-Content .\services.txt
Get-Content .\services.txt | Get-Service
Get-Service -Name spooler,eventlog,efs  -ComputerName localhost

