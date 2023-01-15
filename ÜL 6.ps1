$kasutajad = "Gregori Saarna"
$email = "gregorisaarna@gmailcom"

$kp = get-date -Format "dd.MM.yy"

$enimi
$gemail
$kp

"****************************************************"
$skriptiAsukoht = $MyInvocation.MyCommand.Path
$dir = Split-Path $skriptiAsukoht
$emailid = Get-Content -path $dir\emailid.txt

"*****************************************************"

$emailid+=$email
$kasutajad=$emailid.split(",")
"essa kasutaja on  "+$kasutajad[0]
"viimane kassu on "+$kasutajad[-1]
"kasutajaid kokku "+$kasutajad.count