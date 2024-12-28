REM System Firmware
@echo off & title System Firmware & mode con cols=55 lines=8
echo:
echo [105m[97m System Firmware [0m
echo:
echo [93m[Warning][0m The system will be rebooted.
echo:
pause
shutdown /r /fw /t 00
exit /b 0