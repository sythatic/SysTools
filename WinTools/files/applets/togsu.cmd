REM Admin Toggle Tool
@echo off & title Admin Toggle Tool
echo:
echo [101m[97m Admin Toggle Tool [0m
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [93m[Warning][0m This script must be run as Administrator
    echo:
    pause
    exit
)
echo:
echo Would you like to activate the built in Administrator account?
echo Input [93mY[0m or [93mN[0m
:cmd
echo:
set "modify="
set /p modify="[0m $: "
if /i "%modify%"=="y" (
    echo:
    net user administrator /active:yes
    echo Administrator account enabled
    echo:
    pause
    exit /b 0
)
if /i "%modify%"=="n" (
    echo:
    net user administrator /active:no
    echo Administrator account disabled
    echo:
    pause
    exit /b 0
) else (
    echo:
    echo [91m[Error][0m Option not found
    goto cmd
)
echo:
echo [91m[Error][0m
echo:
goto cmd