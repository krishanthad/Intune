#check if computer is up for 3 days if yes retern 1
$uptime = (get-date) - (gcim Win32_OperatingSystem).LastBootUpTime

if ($uptime.days -gt 3) {
    write-host "Not rebooted in last 3 days"
    exit 1
}
else {
    write-host "All fine, recently rebooted"
    exit 0
}