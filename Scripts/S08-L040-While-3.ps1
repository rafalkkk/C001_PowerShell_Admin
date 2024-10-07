$i=0

while($i -lt 100) {
  $i++

  if($i%2 -eq 0) {
    Write-Host "$i is even"
  }
  else {
    Write-Host "$i is odd"
  }
  if($i -eq 10) {
    Write-Host "We have reached '10', so I'm breaking the loop"
    break
  } 
}