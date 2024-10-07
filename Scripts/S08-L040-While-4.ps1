$wait = $true

while ($wait) {
    $status = (Get-Service bits).Status
    if ($status -eq "Running") {
        $wait = $false
    }
    Write-Host "." -NoNewline
    Start-Sleep -Seconds 3
}