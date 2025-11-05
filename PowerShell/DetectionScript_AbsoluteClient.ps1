#Set Service Name
$ServiceName = "rpcnet"

if (Get-Service $ServiceName -ErrorAction SilentlyContinue)
{
    #Service found
    $Service = Get-Service -Name $ServiceName
    if ($Service.Status -eq "running")
    {
        #Service detected and running. Exit script with 0 and STDOUT value
        #SCCM report "Installed"
        Write-Host "$ServiceName service found and running"
        Exit 0
    } else {
        #Service detected but not running. Exit script with 0 and no STDOUT
        #SCCM report "Not Installed"
        Exit 0
    }
} else {
 #Service not detected. Exit script with 0 and no STDOUT
 #SCCM report "Not Installed"
 Exit 0
}