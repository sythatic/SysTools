REM Appx Manager
@echo off & title Appx Manager
echo:
echo [44m[97m Appx Manager [0m
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [93m[Warning][0m This script must be run as Administrator
    echo:
    pause
    exit
)
cd %SystemRoot%
echo:
echo [93m    [IMPORTANT NOTICE] [0m
echo:
echo        - On the initial popup, select only one catagory
echo        - Hold the [ctrl] key to select multiple packages
echo        - Some apps will only appear under 'Provisioned Packages'
echo:
echo [92m    [PRESS ANY KEY TO START] [0m
powershell -NoProfile -ExecutionPolicy Bypass -File "%SystemRoot%\wintools\applets\appxmgr.ps1"
exit /b 0