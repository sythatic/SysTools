@echo off & title System Firmware & mode con cols=65 lines=8
echo:
echo:
echo Close this window to abort.
echo The system will be rebooted.
pause
shutdown /r /fw /t 00
exit /b 0