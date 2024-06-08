##**************************************************************************************
##**************************************************************************************
##**************************************************************************************
##**************************************************************************************
##************░█▀▀▄░▒█░░░░▒█▀▀█░▒█▀▀▀█░▒█▀▀▄░█▀▀▄░▒█▀▀▀█░▒█░▄▀░▒█▀▀▀░▀▀█▀▀**************
##************▒█▄▄█░▒█░░░░▒█░▄▄░▒█░░▒█░▒█▀▀▄▒█▄▄█░░▀▀▀▄▄░▒█▀▄░░▒█▀▀▀░░▒█░░**************
##************▒█░▒█░▒█▄▄█░▒█▄▄▀░▒█▄▄▄█░▒█▄▄█▒█░▒█░▒█▄▄▄█░▒█░▒█░▒█▄▄▄░░▒█░░**************
##**************************************************************************************
##************************** ▀▄▀▄▀▄GitHub - algobasket▄▀▄▀▄▀ ***************************
##**************************************************************************************
##********************************  Made By Algobasket  ********************************
##**************************************************************************************

# Ensure the script is running as an Administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    $arguments = "& '" + $myInvocation.MyCommand.Definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    Exit
}

# Run the PowerShell script to add the host entry
.\add-host-entry.ps1

# Start Docker Compose
docker-compose up --build
