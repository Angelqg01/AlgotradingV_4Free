; Script version: 2025-05-26_13:20:00
[Setup]
AppName=SrtategyQualityGrow
AppVersion=1.0.0
DefaultDirName={autopf}\SrtategyQualityGrow
OutputDir=..\dist
OutputBaseFilename=SrtategyQualityGrow_Installer
Compression=lzma2

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Flags: checkablealone

[Dirs]
Name: "{app}\user"
Name: "{app}\user\customdata"
Name: "{app}\user\data"
Name: "{app}\user\extend"
Name: "{app}\user\libs"
Name: "{app}\user\log"
Name: "{app}\user\projects"
Name: "{app}\user\strategies"
Name: "{app}\test"

[Files]
Source: "source_for_installer\SrtategyQualityGrow.exe"; DestDir: "{app}"
Source: "source_for_installer\SrtategyQualityGrow_nocheck.exe"; DestDir: "{app}"
Source: "source_for_installer\SrtategyQualityGrow_nocheck.config"; DestDir: "{app}"
Source: "source_for_installer\CodeEditor.exe"; DestDir: "{app}"
Source: "source_for_installer\CodeEditor.config"; DestDir: "{app}"
Source: "source_for_installer\sqcli.exe"; DestDir: "{app}"
Source: "source_for_installer\sqcli.config"; DestDir: "{app}"
Source: "source_for_installer\fixDPI.bat"; DestDir: "{app}"
Source: "source_for_installer\Extending_SQG.pdf"; DestDir: "{app}"
Source: "source_for_installer\Extending_SQG_es.pdf"; DestDir: "{app}"
Source: "source_for_installer\SQ_License_and_Service_Terms.pdf"; DestDir: "{app}"

Source: "source_for_installer\internal\*"; DestDir: "{app}\internal"; Flags: recursesubdirs createallsubdirs
Source: "source_for_installer\j64\*"; DestDir: "{app}\j64"; Flags: recursesubdirs createallsubdirs
Source: "source_for_installer\custom_indicators\*"; DestDir: "{app}\custom_indicators"; Flags: recursesubdirs createallsubdirs
Source: "source_for_installer\user\settings\*"; DestDir: "{app}\user\settings"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{commonprograms}\SrtategyQualityGrow"; Filename: "{app}\SrtategyQualityGrow.exe"
Name: "{commondesktop}\SrtategyQualityGrow"; Filename: "{app}\SrtategyQualityGrow.exe"; Tasks: desktopicon
