Get-Module
Get-Module -ListAvailable
Import-Module SmbShare
Get-Command -Module SmbShare
Get-Module
Remove-Module SmbShare
Get-Module

Write-Output $env:PSModulePath
Write-Output $env:PSModulePath.split(";")