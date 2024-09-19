
$wslInstalled = Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

if ($wslInstalled.State -eq 'Enabled') 
{

    # Create the registry folder if it does not exist
    
    $registryPath = "HKLM:\SOFTWARE\Microsoft\IntuneManagementExtension\DeviceCompliance"
    
    if (-not (Test-Path $registryPath)) 
    {
        New-Item -Path $registryPath -Force
    }

    New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\IntuneManagementExtension\DeviceCompliance" -Name "WSLInstalled" -Value "True" -PropertyType String -Force
}
