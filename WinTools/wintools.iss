[Setup]
Uninstallable=yes
AppName=WinTools
AppVersion=2404
AppPublisher=Sythatic
CreateAppDir=no
OutputDir=.\
OutputBaseFilename=wintools-setup-2404
Compression=none
SolidCompression=yes
DefaultDirName={win}\wintools\
SetupIconFile=.\files\program\wintools\icon.ico
DiskSpanning=no
UninstallDisplayName=WinTools
UninstallFilesDir={win}\wintools
UninstallDisplayIcon={win}\wintools\unins000.exe

[Files] 
Source: ".\files\start\*"; DestDir: "{commonprograms}\Administrative Tools"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\files\program\*"; DestDir: "{win}"; Flags: ignoreversion recursesubdirs createallsubdirs 