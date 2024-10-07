Get-EventLog -LogName security -newest 5 | Format-Table
Get-EventLog -LogName security -newest 5 | Format-Table -Wrap

$PSDefaultParameterValues.Add('Format-*:Wrap', $True)
Get-EventLog -LogName security -newest 5 | Format-Table 

$PSDefaultParameterValues.Add('Format-*:AutoSize', $true)
Get-EventLog -LogName security -newest 5 | Format-Table

Get-Process | Export-Csv c:\temp\processes.csv
code C:\temp\processes.csv
$PSDefaultParameterValues.Add('Export-CSV:Delimiter', ";")
Get-Process | Export-Csv c:\temp\processes.csv 
code C:\temp\processes.csv
Get-Process | Export-Csv c:\temp\processes.csv -Delimiter '|'
code C:\temp\processes.csv

$PSDefaultParameterValues
$PSDefaultParameterValues.Remove("Format-*:Autosize")
$PSDefaultParameterValues

$PROFILE
$PROFILE | Select-Object -Property *
code $PROFILE.CurrentUserAllHosts

<#
# example profile file
echo "Hi! It is $((Get-Date).DayOfWeek). You are working as $($env:UserName)."
echo ""
echo "Your default parameters are:"
$PSDefaultParameterValues.Add('Format-*:Wrap', $True)
$PSDefaultParameterValues.Add('Export-CSV:Delimiter', ";")
$PSDefaultParameterValues
echo ""
echo "Defining function glog for git log with plenty parameters"
function glog { git log --oneline --decorate --graph --all}
echo ""
echo "Have a nice day!"
#>