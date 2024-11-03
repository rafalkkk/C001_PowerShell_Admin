$compA = $env:COMPUTERNAME
$compB = $env:COMPUTERNAME
$compC = $env:COMPUTERNAME
$cred = Get-Credential

# command fails - CredSSP disabled
Invoke-Command -ComputerName $compB `
               -Authentication Credssp `
               -Credential $cred `
               { Param($comp) Invoke-Command -comp $comp {get-service bits} } `
               -ArgumentList ($compC)

# On remote computer (B)
Enable-WSManCredSSP -Role Server -Force

# On local computer (A)
Enable-WSManCredSSP -Role Client -DelegateComputer $compB -Force

# If needed on A & B  - configure trusted hosts "A" trusts "B", "B" trusts "C"
# Set-Item WSMan:\localhost\Client\TrustedHosts -Value $compB
# Get-Item WSMan:\localhost\Client\TrustedHosts 

# Policy on "A" or adequate entry in Group Policy if using a domain
# New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation' `
#                  -Name "AllowFreshCredentialsWhenNTLMOnly" `
#                  -Value 1 -PropertyType Dword -Force     
# New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation' `
#          -Name "AllowFreshCredentialsWhenNTLMOnly" `
#          -Value "Default Value" -Force
# New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation\AllowFreshCredentialsWhenNTLMOnly' `
#                  -Name "1" -PropertyType "String" -Value '*'
gpedit.msc

Invoke-Command -ComputerName $compB `
               -Authentication Credssp `
               -Credential $cred `
               { Param($comp) Invoke-Command -comp $comp {get-service bits} } `
               -ArgumentList ($compC)

