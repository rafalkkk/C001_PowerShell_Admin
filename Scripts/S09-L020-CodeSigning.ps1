Set-ExecutionPolicy AllSigned -Force
Get-ExecutionPolicy
.\hi.ps1

$cert = New-SelfSignedCertificate -Subject "CN=PowerShell Local CA" `
                                  -KeyAlgorithm RSA `
                                  -KeyLength 2048 `
                                  -HashAlgorithm sha1  `
                                  -KeyUsage DigitalSignature, KeyEncipherment `
                                  -Type Custom `
                                  -TextExtension @("2.5.29.37={text}1.3.6.1.5.5.7.3.3") `
                                  -CertStoreLocation "Cert:\CurrentUser\MY"

Export-Certificate -Cert $cert -FilePath "C:\temp\root.cer"
Import-Certificate -FilePath "C:\temp\root.cer" -CertStoreLocation "Cert:\CurrentUser\Root"


Get-ChildItem cert:\CurrentUser\My -codesigning

Set-AuthenticodeSignature C:\temp\hi.ps1 @(Get-ChildItem cert:\CurrentUser\My -codesigning)[0]

.\hi.ps1
Get-Content C:\temp\hi.ps1