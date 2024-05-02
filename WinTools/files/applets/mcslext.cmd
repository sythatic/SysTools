@echo off & title MCSL Extractor
setlocal
:top
echo Enter the exact path to your server:
echo:
set /p "extract_dir=  $: "
echo:

if not exist "%extract_dir%" (
    echo Directory not found - Error 001  *POSSIBLE TYPO*
    echo:
    pause
    echo:
    goto top
)

powershell -Command "Expand-Archive -Path %SystemRoot%\wintools\packages\pkg.mcsl.zip -DestinationPath '%extract_dir%' -Force"

if errorlevel 1 (
    echo Extraction Failed - Error 002  *PLEASE REPORT THIS ERROR*
    echo:
    pause
    echo:
    echo Exiting...
    exit /b 1
)

cd /d "%extract_dir%"
echo MCS Launcher can now be launched from your server's directory
echo:
pause
echo:
start mcsl.cmd
:end
exit /b 0
