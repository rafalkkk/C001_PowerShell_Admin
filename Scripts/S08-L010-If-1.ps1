$letter='c:'

get-WmiObject win32_logicaldisk
get-WmiObject win32_logicaldisk -Filter "DeviceId='c:'"
get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'"
get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'" | Get-Member
get-WmiObject win32_logicaldisk -Filter "DeviceId='$letter'" | Select-Object Size,FreeSpace,@{n="Used";e={$_.Size-$_.FreeSpace}}
