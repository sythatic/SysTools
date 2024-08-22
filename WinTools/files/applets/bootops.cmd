@echo off & title Advanced Boot Options & mode con cols=65 lines=8
echo:
echo:
echo Close this window to abort.
echo The system will be rebooted.
pause
shutdown /r /o /t 00
exit /b 0