REM Clear System Icon Cache
@echo off & title Clear System Icon Cache
echo:
echo [44m[97m Clear System Icon Cache [0m
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [93m[Warning][0m This script must be run as Administrator
    echo:
    pause
    exit
)
echo:
echo [93m[Warning][0m File Explorer will restart
echo:
pause
echo:
taskkill /f /im explorer.exe
attrib -h "%localappdata%\IconCache.db"
del /f /s /q /a "%localappdata%\IconCache.db"
attrib -h "%localappdata%\Microsoft\Windows\Explorer\iconcache_*.db"
del /f /s /q /a "%localappdata%\Microsoft\Windows\Explorer\iconcache_*.db"
attrib -h "%localappdata%\Microsoft\Windows\Explorer\thumbcache_*.db"
del /f /s /q /a "%localappdata%\Microsoft\Windows\Explorer\thumbcache_*.db"
start explorer.exe
exit /b 0