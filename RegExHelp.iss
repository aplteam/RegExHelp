; This script is best executed by Launchy's "Make" utility.

#define MyAppVersion "2.0.0"
#define MyAppName "RegExHelp"
#define MyAppExeName "ViewHelp.exe"
#define MyAppPublisher "APL Team Ltd"
#define MyAppURL "https://github.com/aplteam/RegExHelp"
#define MyAppIcoName "help.ico"
#define MyBlank " "
#define TargetDir "Dist\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
AppId={{1D6E8312-BC95-4D40-AEFA-F479B5311CB0}

AppName="{#MyAppName}"
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}{#MyBlank}{#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf32}\{#MyAppPublisher}\{#MyAppName}
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
AllowNoIcons=yes
OutputDir={#TargetDir}
OutputBaseFilename="SetUp_{#MyAppName}_{#MyAppVersion}"
Compression=lzma
SolidCompression=yes
SetupIconFile={#MyAppIcoName}
;UninstallDisplayIcon={app}\{#MyAppIcoName}


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License";

[Registry]

[Dirs]
Name: "{commonappdata}\{#MyAppName}"; Permissions: users-modify

[Files]
Source: "help.ico"; DestDir: "{app}" ;
Source: "{#TargetDir}\*"; DestDir: "{app}"; Flags: recursesubdirs

; ----- During beta phase only: --------
;Source: "Conga*.dll"; DestDir: "{app}";
; -------- (For a Ride!) ---------------

; NOTE: Don't use "Flags: ignoreversion" on any shared system files!

[Icons]
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\{#MyAppIcoName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch RegExHelp"; Flags: postinstall skipifsilent nowait

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Code]