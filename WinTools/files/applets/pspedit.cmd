@echo off & title PowerShell Policy Editor
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
echo Current Policy:
powershell "Get-ExecutionPolicy"
powershell "Set-ExecutionPolicy"
echo:  
echo New Policy:
powershell "Get-ExecutionPolicy"
exit /b 0