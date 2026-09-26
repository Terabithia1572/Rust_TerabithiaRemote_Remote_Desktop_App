; TerabithiaRemote - Setup Script
; AppId preserved for seamless update over previous installations

[Setup]
AppId={{8E1D9D5B-1234-4BEE-9C21-TERABITHIA-REMOTE}}
AppName=Terabithia Remote
AppVerName=Terabithia Remote 1.5.0
AppVersion=1.5.0
AppPublisher=Yunus İNAN
AppPublisherURL=https://github.com/terabithia1572
AppSupportURL=https://github.com/terabithia1572
AppUpdatesURL=https://github.com/terabithia1572

; Denetim masası açıklaması
AppComments=Copyright © 2026 Yunus İNAN tarafından geliştirilmiştir tüm hakları saklıdır..!

DefaultDirName={pf}\Terabithia Remote
DefaultGroupName=Terabithia Remote
DisableDirPage=no
DisableProgramGroupPage=no

; Çıktı klasörü (Setup dosyasının oluşacağı yer)
OutputDir=C:\Users\Yunus\Desktop\Rust_TerabithiaRemote_Remote_Desktop_App\target\installer
OutputBaseFilename=TerabithiaRemote-Setup
SetupIconFile=C:\Users\Yunus\Desktop\Rust_TerabithiaRemote_Remote_Desktop_App\res\icon.ico

Compression=lzma2
SolidCompression=yes
WizardStyle=modern

ArchitecturesInstallIn64BitMode=x64

AppCopyright=Copyright © 2026 Yunus İNAN tarafından geliştirilmiştir tüm hakları saklıdır..!

[Languages]
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"

[Messages]
WelcomeLabel1=Terabithia Remote Kurulumuna Hoş Geldiniz
WelcomeLabel2=Copyright © 2026 Yunus İNAN tarafından geliştirilmiştir tüm hakları saklıdır..!%n%nKod tabanı: RustDesk (AGPL-3.0).%n%nDevam etmek için İleri düğmesine tıklayınız.

[Files]
; Real Release Build files from Flutter 3.24.5 build output
Source: "C:\Users\Yunus\Desktop\Rust_TerabithiaRemote_Remote_Desktop_App\flutter\build\windows\x64\runner\Release\TerabithiaRemote.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Yunus\Desktop\Rust_TerabithiaRemote_Remote_Desktop_App\flutter\build\windows\x64\runner\Release\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Yunus\Desktop\Rust_TerabithiaRemote_Remote_Desktop_App\flutter\build\windows\x64\runner\Release\data\*"; DestDir: "{app}\data"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Terabithia Remote"; Filename: "{app}\TerabithiaRemote.exe"; WorkingDir: "{app}"
Name: "{commondesktop}\Terabithia Remote"; Filename: "{app}\TerabithiaRemote.exe"; Tasks: desktopicon; WorkingDir: "{app}"

[Tasks]
Name: "desktopicon"; Description: "Masaüstüne kısayol oluştur"; GroupDescription: "Ek görevler:"; Flags: unchecked

[Run]
Filename: "{app}\TerabithiaRemote.exe"; Description: "Terabithia Remote'u çalıştır"; Flags: nowait postinstall skipifsilent

[Code]
function InitializeSetup(): Boolean;
begin
  MsgBox('Copyright © 2026 Yunus İNAN tarafından geliştirilmiştir tüm hakları saklıdır..!', mbInformation, MB_OK);
  Result := True;
end;
