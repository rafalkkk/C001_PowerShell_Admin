<#
.SYNOPSIS
Sends email via our Google account
.DESCRIPTION
Sends email to address passed by parameter EmailTo. 
You can optionally change the body of message via Body parameter
and set subject via Subject parameter.
Email will be send via our secret Gmail account.
.PARAMETER EmailTo
Enter the email, where the message should be send
.PARAMETER Subject
Enter the subject of message
.PARAMETER Body
Enter the message
.EXAMPLE
.\Send-EmailFromGmail -EmailTo user@domain.cp, -Subject "Hi there" -Body "Have a nice day" -Verbose
#>
function Send-EmailFromGmail {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        $EmailTo,
        $Subject = "Test Email from PowerShell",
        $Body = "This is a test"
    )

    $EmailFrom = "username@gmail.com"
    $Pass = "password"
    $SMTPServer = "smtp.gmail.com" 
    Write-Verbose "Creating SMTP Client..."
    $SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
    $SMTPClient.EnableSsl = $true 
    $SMTPClient.Credentials = New-Object System.Net.NetworkCredential("username", $Pass); 
    Write-Verbose "Sending email"
    $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
    Write-Verbose "Email sent!"
}    

