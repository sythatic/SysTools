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
echo:
echo   [7m Add an Environmental Variable [0m
echo:
set /p evar="[0m  Variable: "
echo:
set /p eval="[0m  Value: "
echo:
taskkill /f /im explorer.exe
echo:
setx %evar% %eval% /M
echo:
start explorer.exe