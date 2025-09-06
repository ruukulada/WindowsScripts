:: open komorebi if it is closed, close it if is open

@echo off
set EXE_NAME=komorebi.exe

tasklist /FI "IMAGENAME eq %EXE_NAME%" 2>NUL | find /I "%EXE_NAME%" >NUL
if %ERRORLEVEL%==0 (
  "%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" stop --whkd
) else (
  "%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" start --whkd
)
