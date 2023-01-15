#Gregori Saarna 30.11.2022

cls
write-host
write-host 'tere Powerhsell'
Get-Date -Format 'd.m.y'
write-host "aasta lõpuni jäänud" (New-TimeSpan 2017-12-31).Days "päeva"







"****************************************************************************"
$a = hostname
"arvuti nimi: "+ $a
"****************************************************************************"
(Get-WmiObject Win32_operatingsystem).caption
"****************************************************************************"
(Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Ethernet).IPAddress
"****************************************************************************"
(systeminfo | Select-String 'Total Physical Memory:').ToString().Split(':')[1].Trim()
"****************************************************************************"
(Get-WmiObject win32_processor).name
"****************************************************************************"
(Get-WmiObject win32_videocontroller).name
"****************************************************************************"
(Get-WmiObject win32_UserAccount).name
"****************************************************************************"