[Setup]
AppName=Magiczna Arena
AppVersion=1.2
WizardStyle=modern
DefaultDirName={userdesktop}\Projekt Zaliczeniowy - Magiczna Arena
DefaultGroupName=Zaliczenie
UninstallDisplayIcon={app}\ProjectIDdBD.exe
Compression=lzma2
SolidCompression=yes
OutputDir=userdocs:Inno Setup Examples Output
UninstallDisplayName=Magiczna Arena
Uninstallable=WizardIsComponentSelected('full')

[Types]
Name: "full"; Description: "Pe³na instalacja"
Name: "portable"; Description: "Wersja Portable"

[Components]
Name: "full"; Description: "Pe³na instalacja"; Types: full

[Tasks]
Name: "desktopicon"; Description: "Utwórz skrót na pulpicie"; Components: full
Name: "startmenu"; Description: "Utwórz skrót w Menu Start"; Components: full


[Files]
Source: "ProjectIDdBD.exe"; DestDir: "{app}"
Source: "BazaDanych\BazaDanychMagicznaArena.mdb"; DestDir: "{app}\BazaDanych"
Source: "Grafika\Avatar\Lotrzyk.png"; DestDir: "{app}\Grafika\Avatar"
Source: "Grafika\Avatar\Wojownik.png"; DestDir: "{app}\Grafika\Avatar"
Source: "Grafika\Avatar\Mag.png"; DestDir: "{app}\Grafika\Avatar"
Source: "Grafika\Ikony\LewaPochodnia.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\Magiczna Arena Ikona Na G³ównej Stronie.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\Magiczna Arena Ikona.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\Magiczna Arena.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\MagicznaArena_PrzyciskWalka.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\Oprogramie.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\Pasek.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\Pochodnia.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\PoddajSie.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\PrawaPochodnia.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\PRZEGRANE.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\PrzyciskPoddajSie.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\PrzyciskWalcz.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\STATYSTYKI.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\WALCZ PRZYCISK.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\Walcz.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Ikony\WYGRANE.png"; DestDir: "{app}\Grafika\Ikony"
Source: "Grafika\Kostka\KOSTKA DO GRY WROGA.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\KOSTKA DO GRY.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\Kostka1.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\Kostka2.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\Kostka3.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\Kostka4.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\Kostka5.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\Kostka6.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\KostkaW1.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\KostkaW2.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\KostkaW3.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\KostkaW4.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\KostkaW5.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Kostka\KostkaW6.png"; DestDir: "{app}\Grafika\Kostka"
Source: "Grafika\Wrog\Krasnolud.png"; DestDir: "{app}\Grafika\Wrog"
Source: "Grafika\Wrog\Ork.png"; DestDir: "{app}\Grafika\Wrog"
Source: "Grafika\Wrog\Smok.png"; DestDir: "{app}\Grafika\Wrog"
Source: "Grafika\Wrog\Szkielet.png"; DestDir: "{app}\Grafika\Wrog"
Source: "Grafika\Wrog\Wilkolak.png"; DestDir: "{app}\Grafika\Wrog"
Source: "Grafika\BrakIkony.png"; DestDir: "{app}\Grafika"
Source: "Pomoc\Pomoc.chm"; DestDir: "{app}\Pomoc"
Source: "Zapisy\Przyk³adowy zapis.txt"; DestDir: "{app}\Zapis"
Source: "MagicznaArenaIDdBD.dcu"; DestDir: "{app}"
Source: "u_Arena.dcu"; DestDir: "{app}"
Source: "u_MagicznaArena.dcu"; DestDir: "{app}"
Source: "u_OProgramie.dcu"; DestDir: "{app}"
Source: "u_SplashScreen.dcu"; DestDir: "{app}"
Source: "u_Statystyki.dcu"; DestDir: "{app}"

