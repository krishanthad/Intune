#this is a requrement script that can be used to check if WSL is installed on the device before installing Defender for Endpoint WSL plug-in.
#this script will be included in requirement script section of the W32 app in Intune

# Check if WSL is installed
$wslFeature = Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

if ($wslFeature.State -eq "Enabled") {
    Write-Output "WSL is installed"
    exit 0
} else {
    Write-Output "WSL is not installed"
    exit 1
}