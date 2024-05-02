@echo off & title WinTools
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
echo   ID     Applet
echo:
echo   [92m[1]     [96mAppx Package Manager [0m
echo   [92m[2]     [96mHTTP Index Downloader [0m
echo:
:prompt
cd %SystemRoot%
set "modify="
set /p modify="[0m  $: "
if /i "%modify%"=="1" (
    echo:
    echo [91m    [IMPORTANT NOTICE] [0m
    echo:
    echo        - On the initial popup, select only one catagory
    echo        - Hold the [ctrl] key to select multiple packages
    echo        - Some apps will only appear under 'Provisioned Packages'
    echo:
    echo [94m    [PRESS ANY KEY TO START] [0m
    echo:
    powershell "%SystemRoot%\wintools\applets\appxmgr.ps1"
    echo: 
    goto prompt
)
if /i "%modify%"=="2" (
    echo:
    powershell "%SystemRoot%\wintools\applets\indexdl.ps1"
    echo: 
    goto prompt
) else (
    echo:
    echo [93m    [COMMAND NOT FOUND]
    echo:
    goto prompt
)
echo:
echo [91m    [ERROR]
echo: