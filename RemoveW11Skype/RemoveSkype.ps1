
#Script removes Skype on Windows 11

Set-ExecutionPolicy RemoteSigned

try{
    Get-AppxPackage -Name Microsoft.SkypeApp -AllUsers | Remove-AppxPackage -AllUsers -ErrorAction stop
    Write-Host "Microsoft Skype app successfully removed"

}
catch{
    Write-Error "Errorremoving Microsoft Skype App"
}