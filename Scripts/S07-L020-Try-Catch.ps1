$x=100
$y=0

# Write-Host "$x / $y = $($x/$y)"

try
{
  Write-Host "$x / $y = $($x/$y)"
} 
catch
{
  Write-Host "Sorry - we have an error..."
  "---------------------------" | Out-File c:\temp\errors.txt -Append
  Get-date  | Out-File c:\temp\errors.txt -Append
  $Error[0] | Out-File c:\temp\errors.txt -Append
}

code C:\temp\errors.txt


$Error[0].

$Error[0] | Format-List -Property * -Force
$Error[0].Exception.Message

try{
    Write-Output "-----------------"
    Get-ChildItem c:\non-existing-dir -ErrorAction Stop
    Write-Output "-----------------"
}
catch {
    Write-Host "ERROR: $($error[0].Exception.Message)"
}
