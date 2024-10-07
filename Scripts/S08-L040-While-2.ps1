$i=0

while($i -lt 10) {
    $i++

    if($i%2 -eq 0) {
        Write-Host "$i is even"
    }
    Else {
        Write-Host "$i is odd"
    }
}