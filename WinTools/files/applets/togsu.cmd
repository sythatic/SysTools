@echo off & title Admin Toggle Tool
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [43m This script must be run as Administrator [0m
    echo:
    pause
    exit
)
:cmd
echo Would you like to activate the built in Administrator account?
echo Input Y or N

set "modify="
set /p modify="[0m  $: "
if /i "%modify%"=="y" (
    net user administrator /active:yes
    echo Administrator account enabled
    pause
    exit /b 0
)
if /i "%modify%"=="n" (
    net user administrator /active:no
    echo Administrator account disabled
    pause
    exit /b 0
) else (
    echo:
    echo [93m    [Option Not Found]
    echo:
    goto cmd
)
echo:
echo [91m    [Error]
echo:
goto cmd