@echo off & title File Explorer & mode con cols=75 lines=7
echo:
taskkill /f /im explorer.exe
echo:
pause
echo:
start explorer.exe
exit /b 0