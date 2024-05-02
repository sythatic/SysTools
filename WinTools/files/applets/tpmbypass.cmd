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

taskkill /f /im explorer.exe
reg add "HKLM\System\Setup\LabConfig" /f /v "BypassTPMCheck" /t REG_DWORD /d 1
reg add "HKLM\System\Setup\LabConfig" /f /v "BypassRAMCheck" /t REG_DWORD /d 1
reg add "HKLM\System\Setup\LabConfig" /f /v "BypassSecureBootCheck" /t REG_DWORD /d 1
reg add "HKLM\System\Setup\MoSetup" /f /v "AllowUpgradesWithUnsupportedTPMOrCPU" /t REG_DWORD /d 1
start explorer.exe