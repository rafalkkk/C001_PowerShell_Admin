$letter='c:'
$valueToReturn="UsedSpace"  # TotalSpace or FreeSpace or UsedSpace

if($valueToReturn -eq "FreeSpace") {
   Get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'" | Select-Object FreeSpace
}
elseif($valueToReturn -eq "TotalSpace") {
   Get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'" | Select-Object Size
}
else {
   Get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'" | Select-Object @{n="Used";e={$_.Size-$_.FreeSpace}}
}