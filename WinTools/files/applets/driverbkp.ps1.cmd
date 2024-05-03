@echo off & title WinTools
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
powershell "%SystemRoot%\wintools\applets\driverbkp.ps1"
exit /b 0 