REM System File Checker
@echo off & title System File Checker
echo:
echo [103m[30m System File Checker [0m
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [93m[Warning][0m This script must be run as Administrator
    echo:
    pause
    exit
)
echo:
pause
echo:
sfc /scannow
echo:
pause
echo:
start slidetoshutdown.exe
exit /b 0