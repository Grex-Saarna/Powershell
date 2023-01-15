#Gregori Saarna
#14.12.2022

#Prompt the user for the name of the XML file
$inputFileName = Read-Host "Enter the name of the XML file: "

#Check if the file is an XML file
if ((Get-Item $inputFileName).Extension -ne ".xml") {
    #If the file is not an XML file, display an error message and prompt the user for a new file name
    Write-Host "The file you entered is not an XML file. Please enter a valid XML file."
    $inputFileName = Read-Host "Enter the name of the xml file: "
}else{

#Load the XML file
$file = [xml](Get-Content $inputFileName)

#Loop through each user in the XML file
foreach ($user in $file.customers.customer) {
    # Create a directory with the user's name
    New-Item -ItemType Directory -Path $user.full_name
    #Save the user's data (full address and contact information) in a text file in the user's directory
    $userDataFile = New-Item -Path "$($user.full_name)\data.txt" -ItemType File
#   $userDataFile.Write("$($user.full_name)$($user.contact)")
    $user.customers.customer >> "$($user.full_name)\data.txt"

}}