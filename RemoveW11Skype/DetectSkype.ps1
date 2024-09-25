## change the execution policy
Set-ExecutionPolicy RemoteSigned

##exit code 1 if teams installed
if ($null -eq (Get-AppxPackage -Name Microsoft.SkypeApp -AllUsers)) {
	Write-Host "Microsoft Skype client not found"
	exit 0
} Else {
	Write-Host "Microsoft Skype client found"
	Exit 1

}