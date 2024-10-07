New-Item c:\temp\tests -ItemType Directory
Set-Location c:\temp\tests
New-Item test-A -ItemType Directory
New-Item test-C -ItemType Directory

Get-Item test-A, test-B, test-C

Get-Item test-A, test-B, test-C -ErrorAction Stop
Get-Item test-A, test-B, test-C -ErrorAction SilentlyContinue
Get-Item test-A, test-B, test-C -ErrorAction Inquire
Get-Item test-A, test-B, test-C -ErrorAction Ignore
Get-Item test-A, test-B, test-C -ErrorAction Continue

$ErrorActionPreference
$ErrorActionPreference='Stop'
$ErrorActionPreference

Get-Item test-A, test-B, test-C

$ErrorActionPreference='Continue'
Get-Item test-A, test-B, test-C

ls variable:\*error*

$ErrorView
$ErrorView = 'CategoryView'

$ErrorView = 'ConciseView'

$Error
$error[0]
1/0
$error[0]
$error[1]

Get-Item test-A, test-B, test-C -ErrorAction Stop -errorVariable myError
$myError