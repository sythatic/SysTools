REM HTTP Index Downloader
@echo off & title HTTP Index Downloader
echo:
echo [44m[97m HTTP Index Downloader [0m
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [93m[Warning][0m This script must be run as Administrator
    echo:
    pause
    exit
)
cd %SystemRoot%
echo:
powershell -NoProfile -ExecutionPolicy Bypass -File "%SystemRoot%\wintools\applets\indexdl.ps1"
exit /b 0 