REM Suspend Windows Explorer
@echo off & title File Explorer & mode con cols=75 lines=8
echo:
echo [105m[97m File Explorer Suspended [0m
echo:
taskkill /f /im explorer.exe
echo:
pause
start explorer.exe
exit /b 0