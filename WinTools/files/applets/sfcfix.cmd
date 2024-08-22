@echo off & title System File Checker
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [43m This script must be run as Administrator [0m
    echo:
    pause
    exit
)
echo:
sfc /scannow
echo:
pause
echo:
start slidetoshutdown.exe
exit /b 0