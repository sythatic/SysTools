@echo off & title HTTP Index Downloader
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
powershell "%SystemRoot%\wintools\applets\indexdl.ps1"
exit /b 0 