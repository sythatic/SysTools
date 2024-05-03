@echo off & title OEM Product Key
setlocal
set "output_file=%userprofile%\ProductKey.txt"
wmic path Softwarelicensingservice get OA3xOriginalProductKey > "%output_file%"
wmic path Softwarelicensingservice get OA3xOriginalProductKey
echo:
echo If no key is listed, your PC does not have an OEM key.
echo:
echo Your product key has been saved to [96m%output_file%[0m
echo:
pause
endlocal
exit /b 0