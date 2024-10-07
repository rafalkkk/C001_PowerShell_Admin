$action = New-ScheduledTaskAction -Execute 'pwsh.exe' -Argument '-NonInteractive -NoLogo -NoProfile -File "C:\scripts\do_maintenance.ps1"'
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(3)
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -WakeToRun -RunOnlyIfNetworkAvailable
$task = New-ScheduledTask -Action $action -Trigger $trigger -Settings $settings
Register-ScheduledTask -TaskName 'MAINTENANCE' -InputObject $task -User 'NT AUTHORITY\SYSTEM' 

Get-ScheduledTask -TaskName 'MAINTENANCE'
get-command -noun scheduledtask*
$taskInfo = Get-ScheduledTaskInfo -TaskName "MAINTENANCE"
$taskInfo

Unregister-ScheduledTask -taskName "MAINTENANCE"