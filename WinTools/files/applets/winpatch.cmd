@echo off & title WinPatch & mode con cols=75 lines=16
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo:
    echo [43m This script must be run as Administrator [0m
    echo:
    pause
    exit
)
:cmd
echo:
echo   Make Windows 11 function more like it's predecessors. 
echo:
echo   use 'install' to merge the modified registry keys.
echo   use 'remove' to reset modified values to default.
echo:
set "modify="
set /p modify="[0m  $: "
if /i "%modify%"=="install" (
    taskkill /f /im explorer.exe

    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v link /t     REG_Binary /d 00000000
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates" /f /v ShortcutNameTemplate
    reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCloudSearch" /t   REG_DWORD /d 0
    reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t   REG_DWORD /d 0
    reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCortanaAboveLock" /t  REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaEnabled" /t   REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaConsent" /t   REG_DWORD /d 0
    reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsSpotlightWindowsWelcomeExperience" /t  REG_DWORD /d 1
    reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsSpotlightFeatures" /t  REG_DWORD /d 1
    reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsSpotlightOnActionCenter" /t    REG_DWORD /d 1
    reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsSpotlightOnSettings" /t    REG_DWORD /d 1
    reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f /v "DisableThirdPartySuggestions" /t     REG_DWORD /d 1
    reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f /v "ConfigureWindowsSpotlight" /t    REG_DWORD /d 2
    reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f /v "IncludeEnterpriseSpotlight" /t   REG_DWORD /d 0
    reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f /v "DisableSearchBoxSuggestions" /t  REG_DWORD /d 1
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v "IsDynamicSearchBoxEnabled" /t    REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "BingSearchEnabled" /t    REG_DWORD /d 0
    reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "AllowOnlineTips" /t   REG_DWORD /d 0
    reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve /t   REG_SZ /d ""
    reg add "HKLM\Software\Policies\Microsoft\Windows\Personalization" /f /v "NoLockScreen" /t  REG_DWORD /d 1
    reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "verbosestatus" /t   REG_DWORD /d 1
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "HideFileExt" /t   REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "StartShownOnUpgrade" /t   REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "DisallowShaking" /t   REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "MapNetDrvBtn" /t  REG_DWORD /d 1
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "AutoCheckSelect" /t   REG_DWORD /d 1
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "HideMergeConflicts" /t    REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowEncryptCompressedColor" /t    REG_DWORD /d 1
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "NavPaneShowAllCloudStates" /t     REG_DWORD /d 1
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "DisablePreviewDesktop" /t     REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "LaunchTo" /t  REG_DWORD /d 1
    reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /f /v "PeopleBand" /t     REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAMeetNow" /t    REG_DWORD /d 1
    reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAMeetNow" /t    REG_DWORD /d 1
    reg add "HKLM\Software\Policies\Microsoft\Windows\Explorer" /f /v "HidePeopleBar" /t    REG_DWORD /d 1
    reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f /v "HidePeopleBar" /t    REG_DWORD /d 1
    reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Feeds" /f /v "EnableFeeds" /t     REG_DWORD /d 0
    reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Feeds" /f /v "ShellFeedsTaskbarViewMode" /t     REG_DWORD /d 2
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" /f /v "TaskbarEndTask" /t   REG_DWORD /d 1
    reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t     REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "SeparateProcess" /t   REG_DWORD /d 1
    reg add "HKCU\Control Panel\Desktop" /f /v "JPEGImportQuality" /t   REG_DWORD /d 100
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t   REG_DWORD /d 0
    reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "LargeSystemCache" /t   REG_DWORD /d 1
    reg add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To" /f /ve /d "{C2FBB631-2971-11D1-A18C-00C04FD75D13}"
    reg add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To" /f /ve /d "{C2FBB630-2971-11D1-A18C-00C04FD75D13}"
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /f /v "LongPathsEnabled" /t  REG_DWORD /d 1

    reg add "HKCR\SystemFileAssociations\image\shell\open\command" /f
    reg add "HKCR\Applications\photoviewer.dll\shell\open" /f /v "MuiVerb" /t   REG_SZ /d "@photoviewer.dll,-3043"
    reg add "HKCR\Applications\photoviewer.dll\shell\open\command" /f /ve /t    REG_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %1"
    reg add "HKCR\Applications\photoviewer.dll\shell\open\DropTarget" /f /v "Clsid" /t  REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKCR\Applications\photoviewer.dll\shell\print\command" /f /ve /t   REG_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_PrintTo %1"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities" /f /v "ApplicationDescription" /t   REG_EXPAND_SZ /d "@%ProgramFiles%\Windows Photo Viewer\photoviewer.dll,-3069"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities" /f /v "ApplicationName" /t  REG_EXPAND_SZ /d "@%ProgramFiles%\Windows Photo Viewer\photoviewer.dll,-3009"

    reg add "HKCR\PhotoViewer.FileAssoc.Bitmap" /f /v "ImageOptionFlags" /t     REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.Bitmap\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.Bitmap\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Bitmap\shell\open" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Bitmap\shell\open\command" /f /ve /t    REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.Bitmap\shell\open\DropTarget" /f /v "Clsid" /t  REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".bmp" /t    REG_SZ /d "PhotoViewer.FileAssoc.Bitmap"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".dib" /t    REG_SZ /d "PhotoViewer.FileAssoc.Bitmap"

    reg add "HKCR\PhotoViewer.FileAssoc.JFIF" /f /v "EditFlags" /t  REG_DWORD /d 65536
    reg add "HKCR\PhotoViewer.FileAssoc.JFIF" /f /v "ImageOptionFlags" /t   REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.JFIF\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.JFIF\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.JFIF\shell\open" /f /v "MuiVerb" /t     REG_EXPAND_SZ /d "C:\Windows Photo Viewer\PhotoViewer.dll,-3043"
    reg add "HKCR\PhotoViewer.FileAssoc.JFIF\shell\open\command" /f /ve /t  REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.JFIF\shell\open\DropTarget" /f /v "Clsid" /t    REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".jfif" /t   REG_SZ /d "PhotoViewer.FileAssoc.JFIF"

    reg add "HKCR\PhotoViewer.FileAssoc.Jpeg" /f /v "EditFlags" /t  REG_DWORD /d 65536
    reg add "HKCR\PhotoViewer.FileAssoc.Jpeg" /f /v "ImageOptionFlags" /t   REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.Jpeg\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.Jpeg\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Jpeg\shell\open" /v "MuiVerb" /f /t     REG_EXPAND_SZ /d "C:\Windows Photo Viewer\PhotoViewer.dll,-3043"
    reg add "HKCR\PhotoViewer.FileAssoc.Jpeg\shell\open\command" /f /ve /t  REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.Jpeg\shell\open\DropTarget" /f /v "Clsid" /t    REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".jpeg" /t   REG_SZ /d "PhotoViewer.FileAssoc.Jpeg"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".jpg" /t    REG_SZ /d "PhotoViewer.FileAssoc.Jpeg"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".jpe" /t    REG_SZ /d "PhotoViewer.FileAssoc.Jpeg"

    reg add "HKCR\PhotoViewer.FileAssoc.Gif" /f /v "ImageOptionFlags" /t    REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.Gif\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.Gif\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Gif\shell\open" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Gif\shell\open\command" /f /ve /t   REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.Gif\shell\open\DropTarget" /f /v "Clsid" /t     REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".gif" /t    REG_SZ /d "PhotoViewer.FileAssoc.Gif"

    reg add "HKCR\PhotoViewer.FileAssoc.Png" /f /v "ImageOptionFlags" /t    REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.Png\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.Png\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Png\shell\open" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Png\shell\open\command" /f /ve /t   REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.Png\shell\open\DropTarget" /f /v "Clsid" /t     REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".png" /t    REG_SZ /d "PhotoViewer.FileAssoc.Png"

    reg add "HKCR\PhotoViewer.FileAssoc.Wdp" /f /v "EditFlags" /t   REG_DWORD /d 65536
    reg add "HKCR\PhotoViewer.FileAssoc.Wdp" /f /v "ImageOptionFlags" /t    REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.Wdp\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.Wdp\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Wdp\shell\open" /f /v "MuiVerb" /t  REG_EXPAND_SZ /d "C:\Windows Photo Viewer\PhotoViewer.dll,-3057"
    reg add "HKCR\PhotoViewer.FileAssoc.Wdp\shell\open\command" /f /ve /t   REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.Wdp\shell\open\DropTarget" /f /v "Clsid" /t     REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".wdp" /t    REG_SZ /d "PhotoViewer.FileAssoc.Wdp"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".jxr" /t    REG_SZ /d "PhotoViewer.FileAssoc.Wdp"

    reg add "HKCR\PhotoViewer.FileAssoc.Icon" /f /v "ImageOptionFlags" /t   REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.Icon\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.Icon\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Icon\shell\open" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Icon\shell\open\command" /f /ve /t  REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.Icon\shell\open\DropTarget" /f /v "Clsid" /t    REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".ico" /t    REG_SZ /d "PhotoViewer.FileAssoc.Icon"

    reg add "HKCR\PhotoViewer.FileAssoc.Cursor" /f /v "ImageOptionFlags" /t     REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.Cursor\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.Cursor\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Cursor\shell\open" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Cursor\shell\open\command" /f /ve /t    REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.Cursor\shell\open\DropTarget" /f /v "Clsid" /t  REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".cur" /t    REG_SZ /d "PhotoViewer.FileAssoc.Cursor"

    reg add "HKCR\PhotoViewer.FileAssoc.AnimatedCursor" /f /v "ImageOptionFlags" /t     REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.AnimatedCursor\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.AnimatedCursor\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.AnimatedCursor\shell\open" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.AnimatedCursor\shell\open\command" /f /ve /t    REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.AnimatedCursor\shell\open\DropTarget" /f /v "Clsid" /t  REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".ani" /t    REG_SZ /d "PhotoViewer.FileAssoc.AnimatedCursor"

    reg add "HKCR\PhotoViewer.FileAssoc.Webp" /f /v "ImageOptionFlags" /t   REG_DWORD /d 1
    reg add "HKCR\PhotoViewer.FileAssoc.Webp\DefaultIcon" /f /ve /d "%SystemRoot%\System32\imageres.dll,-71"
    reg add "HKCR\PhotoViewer.FileAssoc.Webp\shell" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Webp\shell\open" /f /ve /d ""
    reg add "HKCR\PhotoViewer.FileAssoc.Webp\shell\open\command" /f /ve /t  REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", -1"
    reg add "HKCR\PhotoViewer.FileAssoc.Webp\shell\open\DropTarget" /f /v "Clsid" /t    REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".webp" /t   REG_SZ /d "PhotoViewer.FileAssoc.Webp"

start explorer.exe
exit /b 0
)
if /i "%modify%"=="remove" (
    taskkill /f /im explorer.exe

    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v link /t     REG_Binary /d 15000000
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates" /f /v ShortcutNameTemplate
    reg delete "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /f
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaEnabled"
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaConsent"
    reg delete "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f
    reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /f
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v "IsDynamicSearchBoxEnabled"
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "BingSearchEnabled"
    reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "AllowOnlineTips"
    reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
    reg delete "HKLM\Software\Policies\Microsoft\Windows\Personalization" /f
    reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "verbosestatus"
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "HideFileExt" /t   REG_DWORD /d 1
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "StartShownOnUpgrade" /t   REG_DWORD /d 1
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "DisallowShaking"
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "MapNetDrvBtn" /t  REG_DWORD /d 0
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "AutoCheckSelect" /t   REG_DWORD /d 0
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "HideMergeConflicts"
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowEncryptCompressedColor"
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "NavPaneShowAllCloudStates"
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "DisablePreviewDesktop" /t     REG_DWORD /d 1
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "LaunchTo"
    reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /f
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
    reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "HideSCAMeetNow"
    reg delete "HKLM\Software\Policies\Microsoft\Windows\Explorer" /f
    reg delete "HKLM\Software\Policies\Microsoft\Windows\Windows Feeds" /f
    reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Feeds" /f
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" /f
    reg delete "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry"
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "SeparateProcess" /t   REG_DWORD /d 0
    reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f
    reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "LargeSystemCache" /t   REG_DWORD /d 0
    reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To" /f
    reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To" /f
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /f /v "LongPathsEnabled" /t  REG_DWORD /d 0

    reg delete "HKCR\SystemFileAssociations\image\shell\open" /f
    reg add "HKCR\Applications\photoviewer.dll\shell\print\command" /f /ve /t   REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %1"
    reg delete "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities" /f /v "ApplicationDescription"
    reg delete "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities" /f /v "ApplicationName"
    reg delete "HKCR\PhotoViewer.FileAssoc.AnimatedCursor" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.Bitmap" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.Cursor" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.Gif" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.Icon" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.JFIF" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.Jpeg" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.Png" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.Wdp" /f
    reg delete "HKCR\PhotoViewer.FileAssoc.Webp" /f
    reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".tiff" /t   REG_SZ /d "PhotoViewer.FileAssoc.Tiff"
    reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /f /v ".tif" /t    REG_SZ /d "PhotoViewer.FileAssoc.Tiff"

start explorer.exe
exit /b 0
) else (
    echo:
    echo [93m    [Option Not Found][0m
    echo:
    goto cmd
)
echo:
echo [91m    [Error][0m
echo:
goto cmd