@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [43m This script must be run as Administrator [0m
    echo:
    pause
    exit
)
taskkill /f /im explorer.exe
attrib -h "%localappdata%\IconCache.db"
del /f /s /q /a "%localappdata%\IconCache.db"
attrib -h "%localappdata%\Microsoft\Windows\Explorer\iconcache_*.db"
del /f /s /q /a "%localappdata%\Microsoft\Windows\Explorer\iconcache_*.db"
attrib -h "%localappdata%\Microsoft\Windows\Explorer\thumbcache_*.db"
del /f /s /q /a "%localappdata%\Microsoft\Windows\Explorer\thumbcache_*.db"
start explorer.exe
exit /b 0