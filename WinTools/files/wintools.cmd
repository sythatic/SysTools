@echo off & title WinTools
setlocal EnableDelayedExpansion
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [43m WinTools must be run as Administrator [0m
    echo:
    pause
    exit
)
:top
echo:
echo   [104m WinTools [0m
echo   [90m2408 [0m
echo:
cd %SystemRoot%
echo   ID   Applet
echo:
set index=0
for %%f in ("%SystemRoot%\wintools\index\*.ini") do (
    set /a index+=1    
    for %%g in ("%%~nf") do echo   [[92m!index![0m]  [96m%%~ng[0m
    set "applet[!index!]=%%f"
)
echo:
echo   Enter an applet's [92mID #[0m
echo:
:prompt
set /p choice="[0m  $: "
if not defined applet[%choice%] (
    echo [91m    [Invalid Entry] [0m
    echo:
    goto prompt
)

set "selectedApplet=!applet[%choice%]!"

for /f "delims=" %%a in ('type "%selectedApplet%"') do set "appletID=%%a"
!appletID!
set choice=
goto prompt
echo:
echo [91m    [ERROR] [0m
echo: