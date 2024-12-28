REM System Information Editor
@echo off & title System Information Editor
echo:
echo [103m[30m System Information Editor [0m
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [93m[Warning][0m This script must be run as Administrator
    echo:
    pause
    exit
)
echo:
echo [46m[97m Enter System/OEM Information below... [0m
echo:
set /p brand="[0m  Manufacturer: "
echo:
set /p model="[0m  Model: "
echo:
set /p url="[0m  Support URL: "
echo:
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /f /v "Manufacturer" /d "%brand%"
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /f /v "Model" /d "%model%"
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /f /v "SupportURL" /d "%url%"
echo:
echo [93m[Warning][0m File Explorer will restart
echo:
pause
echo:
taskkill /f /im explorer.exe
start explorer.exe
exit /b 0