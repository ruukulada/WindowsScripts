:: automatically close ea services after closing any battlefield game
:: syntax for steam launch option:
:: "%UserProfile%\Documents\GitHub\WindowsScripts\scripts\battlefield-ea-closer.bat" %COMMAND%

@echo off
setlocal enabledelayedexpansion

echo Input string: %1

set "INPUT=%~1"
set "INPUT=!INPUT:*theme=!"
set "INPUT=!INPUT:~1!"
set "PROGRAM=!INPUT!.exe"

echo Detected program: !PROGRAM!

start "" %1
timeout /t 60 /nobreak >NUL

:LOOP
tasklist /FI "IMAGENAME eq %PROGRAM%" 2>NUL | find /I "%PROGRAM%" >NUL
if %ERRORLEVEL%==0 (
    echo %PROGRAM% is running.
    timeout /t 10 /nobreak >NUL
    goto LOOP
) else (
    echo %PROGRAM% is not running.
    taskkill/im EADesktop.exe
    timeout /t 2 /nobreak >NUL
    net stop EABackgroundService
)
