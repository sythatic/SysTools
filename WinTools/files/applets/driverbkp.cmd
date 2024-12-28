REM System Driver Backup
@echo off & title System Driver Backup
echo:
echo [104m[97m System Driver Backup [0m
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
if exist "%userprofile%\%computername%-Drivers" rmdir "%userprofile%\%computername%-Drivers" /s /q
mkdir %userprofile%\%computername%-Drivers
dism /online /export-driver /destination:%userprofile%\%computername%-Drivers
echo:
echo Your PC's drivers have been saved to [96m%userprofile%\%computername%-Drivers[0m
echo:
pause
echo:
exit /b 0