@echo off & title DISM Driver Backup
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [43m This script must be run as Administrator [0m
    echo:
    pause
    exit
)
cd %SystemRoot%
echo:
powershell "%SystemRoot%\wintools\applets\driverbkp.ps1"
exit /b 0 