#Connect-AzureAD

#get device names from a txt file and get device ObjectID from AAD export it to csv


$Output="C:\temp\ObjectIDinfo.csv"
$input= "C:\temp\Listofdevices.txt"


$deviceList = get-content -Path "C:\temp\Listofdevices.txt"

 foreach ($dev in $deviceList)
 {
 
 $dev
 Get-AzureADDevice -SearchString $dev |select DisplayName,ObjectID |Export-Csv $Output -Append -NoTypeInformation
 
 }
