@echo off & title Appx Manager
net session >nul 2>&1
if %errorLevel% equ 0 (
    goto top
) else (
    echo:
    echo [43m This script must be run as Administrator [0m
    echo:
    pause
    exit
)
:top
cd %SystemRoot%
echo:
echo [91m    [IMPORTANT NOTICE] [0m
echo:
echo        - On the initial popup, select only one catagory
echo        - Hold the [ctrl] key to select multiple packages
echo        - Some apps will only appear under 'Provisioned Packages'
echo:
echo [94m    [PRESS ANY KEY TO START] [0m
echo:
powershell "%SystemRoot%\wintools\applets\appxmgr.ps1"
exit /b 0 

