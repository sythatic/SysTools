REM Restart Windows Explorer
@echo off
taskkill /f /im explorer.exe
start explorer.exe
exit /b 0 