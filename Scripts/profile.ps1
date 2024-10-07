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