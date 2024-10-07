get-content .\services.txt | Out-Printer
cd c:\windows\system32\spool\PRINTERS\
ls
rm *
stop-service Spooler
get-service spooler
rm *
ls
start-service Spooler
get-service spooler
stop-service Spooler -WhatIf
get-service spooler
$ConfirmPreference
$ConfirmPreference="Low"
$ConfirmPreference
stop-service Spooler
$ConfirmPreference="high"
$ConfirmPreference
stop-service Spooler
get-service spooler
