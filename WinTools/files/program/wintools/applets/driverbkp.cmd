@echo off
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
echo:
mkdir %userprofile%\%computername%-Drivers
dism /online /export-driver /destination:%userprofile%\%computername%-Drivers
echo:
pause
echo: