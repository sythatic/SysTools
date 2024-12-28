REM PowerShell Policy Editor
@echo off & title PowerShell Policy Editor
echo:
echo [46m[97m PowerShell Policy Editor [0m
echo: 
echo Available Policies:
echo:
echo [92m [Restricted][0m
echo     - Prevents running all scripts while permitting individual commands.
echo:
echo [94m [AllSigned][0m
echo     - Requires all scripts files be signed, including scripts written on the local computer.
echo     - Prompts you before running scripts from publishers that you haven't yet classified as trusted or untrusted.
echo:
echo [95m [RemoteSigned][0m
echo     - Requires a signature on scripts downloaded from the internet.
echo     - Doesn't require a signature on scripts written on the local computer.
echo     - Runs unblocked, unsigned scripts downloaded from the internet.
echo:
echo [93m [Unrestricted][0m
echo     - Unsigned scripts can run and non-local scripts display warnings.
echo:
echo [91m [Bypass][0m
echo     - Nothing is blocked and there are no warnings or prompts.
echo: 
echo [46m[97m Current Policy [0m
powershell "Get-ExecutionPolicy"
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [103m[30m Re-run this script as Administrator to change the execution policy. [0m
    echo:
    pause
    exit
)
echo:  
echo [46m[97m Input a new policy below... [0m
powershell "Set-ExecutionPolicy"
echo:  
echo [46m[97m New Policy [0m
powershell "Get-ExecutionPolicy"
echo:
pause
exit /b 0