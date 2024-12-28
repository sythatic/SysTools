REM Get OEM Product Key
@echo off & title OEM Product Key
setlocal
echo:
echo [105m[97m OEM Product Key [0m
echo:
wmic path Softwarelicensingservice get OA3xOriginalProductKey
echo:
echo [32m[Info][0m If no key is listed, your PC does not have an OEM key.
echo:
echo To export your product key as a text file
pause
set "output_file=%userprofile%\ProductKey.txt"
wmic path Softwarelicensingservice get OA3xOriginalProductKey > "%output_file%"
echo:
echo [32m[Info][0m Your product key has been saved to [96m%output_file%[0m
echo:
pause
endlocal
exit /b 0