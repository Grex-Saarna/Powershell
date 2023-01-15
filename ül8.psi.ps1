function ringi_pindala
{
    <#
    .SYNOPSIS
        arvutab ringi pindala
    .DESCRIPTION
        arvutab ringi pindala
    .EXAMPLE
        arvutab ringi pindala
    .EXAMPLE
        arvutab ringi pindala
    #>
    param($raadius)

    $s=[math]::PI+[Math]::POW($raadius,2)
    [Math]::Round($s,2)


}
ringi_pindala(4)
Get-Help ringi_pindala

"//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////"

function nimede_puhastamine
{
    <#
    .SYNOPSIS
        muudab ö,o
    .DESCRIPTION
        muudab ü,u
    .EXAMPLE
        muudab ä,a
    .EXAMPLE
        muudab õ,o
    #>
    param($nimi)
    $nimi = $nimi.Trim()
    $nimi = $nimi.Replace("õ","o").replace("ü","u").replace("ö","o").replace("ä","a")
    (Get-Culture).TextInfo.ToTitleCase($nimi.Tolower())

}

nimede_puhastamine("öäõü")