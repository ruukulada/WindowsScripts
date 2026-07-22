:: kill EA, UPlay, Battle.net

@if not defined e (set e=1 & call "%~dp0uac.bat" "%~f0" %* & exit /b)

taskkill/im EpicGamesLauncher.exe
taskkill/im EADesktop.exe
timeout /t 2 /nobreak >NUL
net stop EABackgroundService
net stop PnkBstrA
taskkill/im upc.exe
taskkill/im Battle.net.exe
