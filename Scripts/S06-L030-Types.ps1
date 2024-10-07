[int]$number=100
$number
$number="twenty"
$number="1000"

[datetime]$date="2044-04-14"
$date
$date.AddDays(20)
$date.AddDays(20).DayOfWeek
$date.AddDays(-13)
$date | GM

[Boolean]$bool=$true
$bool
$bool="False"
$bool=0
$bool

[string]$s="Hello"
$s
$s.Contains("He")
$S.IndexOf("l")
$s="one,two,three,four,five"
$s.Split(",")
$s | GM

$s -is [string]
$s -is [int]
$s=10
$s
$s -is [string]
$s -is [int]
$number=$s
$number
$number+$s
$s="ten"
$number=$s

$s=10
($s -as [int]) -is [int]
