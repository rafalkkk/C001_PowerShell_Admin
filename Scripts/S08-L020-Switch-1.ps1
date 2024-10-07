$letter='c:'
$valueToReturn="Used"

switch($valueToReturn)
{
 "FreeSpace" { get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'" | Select FreeSpace }
 "TotalSpace"{ get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'" | Select Size }
 "UsedSpace" { get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'" | Select @{n="Used";e={$_.Size-$_.FreeSpace}} }
 Default { Write-Host "Select FreeSpace, TotalSpace or UsedSpace"}
}
