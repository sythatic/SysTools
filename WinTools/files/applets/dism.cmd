REM DISM File Checker
@echo off & title DISM File Checker
echo:
echo [104m[97m DISM File Checker [0m
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
dism /Online /Cleanup-Image /RestoreHealth
echo:
pause
echo:
start slidetoshutdown.exe
echo:
exit /b 0