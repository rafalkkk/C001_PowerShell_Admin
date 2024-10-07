$EmailFrom = "username@gmail.com"
$Pass = "password"
$EmailTo = "username@mobilo24.eu"
$Subject = "Test Email from PowerShell"
$Body = "This is a test"
$SMTPServer = "smtp.gmail.com" 
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("username", $Pass); 
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)