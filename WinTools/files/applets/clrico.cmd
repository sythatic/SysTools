@echo off
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
taskkill /f /im explorer.exe
cd /d %LOCALAPPDATA%\Microsoft\Windows\Explorer
attrib -h "iconcache_*.db"
del "iconcache_*.db"
cd /d %LOCALAPPDATA%\Microsoft\Windows\Explorer
attrib -h "thumbcache_*.db"
del "thumbcache_*.db"
start explorer.exe