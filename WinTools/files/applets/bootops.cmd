REM Advanced Boot Options
@echo off & title Advanced Boot Options & mode con cols=55 lines=8
echo:
echo [105m[97m Advanced Boot Options [0m
echo:
echo [93m[Warning][0m The system will be rebooted.
echo:
pause
shutdown /r /o /t 00
exit /b 0