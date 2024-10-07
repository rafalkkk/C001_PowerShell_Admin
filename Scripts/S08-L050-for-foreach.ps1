for($i=0;$i -lt 10;$i++)
{
    Write-Host "$i"
}

New-Item c:\temp\source -ItemType Directory -ErrorAction Continue
Set-Content c:\temp\source\test.txt -Value "test"

$dirs = "copy1", "copy2", "copy3"
$max = $dirs.Length
$max

for($i=0;$i -lt $max;$i++)
{
    Write-Host "$i - $($dirs[$i])"
    Copy-Item  -Recurse c:\temp\source c:\temp\$($dirs[$i])
}

foreach($x in $dirs)
{
    Write-Host "The current element is $x"
    Remove-Item -Verbose c:\temp\$x\*.txt
}

$dirs | ForEach-Object { Write-Host "The current element is $_"; Remove-Item -Recurse -verbose c:\temp\$_ }