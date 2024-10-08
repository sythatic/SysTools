@echo off & title System Information Editor
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [43m This script must be run as Administrator [0m
    echo:
    pause
    exit
)
echo:
echo   [7m Enter System/OEM Information [0m
echo:
set /p brand="[0m  Manufacturer: "
echo:
set /p model="[0m  Model: "
echo:
set /p url="[0m  Support URL: "
echo:
taskkill /f /im explorer.exe
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /f /v "Manufacturer" /d "%brand%"
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /f /v "Model" /d "%model%"
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /f /v "SupportURL" /d "%url%"
start explorer.exe
exit /b 0