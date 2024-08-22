[Setup]
Uninstallable=yes
AppName=WinTools
AppVersion=2408
AppPublisher=Sythatic
CreateAppDir=no
OutputDir=.\releases
OutputBaseFilename=wintools-setup-2408
Compression=none
SolidCompression=yes
DefaultDirName={win}\wintools\
SetupIconFile=.\files\icon.ico
DiskSpanning=no
UninstallDisplayName=WinTools
UninstallFilesDir={win}\wintools
UninstallDisplayIcon={win}\wintools\icon.ico

[Files] 
Source: ".\files\shortcuts\*"; DestDir: "{commonprograms}\Administrative Tools"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\files\applets\*"; DestDir: "{win}\wintools\applets"; Flags: ignoreversion recursesubdirs createallsubdirs                    
Source: ".\files\index\*"; DestDir: "{win}\wintools\index"; Flags: ignoreversion recursesubdirs createallsubdirs    
Source: ".\files\libraries\*"; DestDir: "{win}\wintools\libraries"; Flags: ignoreversion recursesubdirs createallsubdirs   
Source: ".\files\icon.ico"; DestDir: "{win}\wintools"; Flags: ignoreversion
Source: ".\files\wintools.cmd"; DestDir: "{win}"; Flags: ignoreversion