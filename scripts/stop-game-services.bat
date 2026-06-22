:: kill EA, UPlay, Battle.net

call uac.bat

taskkill/im EpicGamesLauncher.exe
taskkill/im EADesktop.exe
timeout /t 2 /nobreak >NUL
net stop EABackgroundService
net stop PnkBstrA
taskkill/im upc.exe
taskkill/im Battle.net.exe
