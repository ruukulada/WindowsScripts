:: open komorebi if it is closed, close it if is open, run as admin (sudo)

@echo off
setlocal
net session >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
  sudo "%~f0" %*
  exit /b
)

set EXE_NAME=komorebi.exe
tasklist /FI "IMAGENAME eq %EXE_NAME%" 2>NUL | find /I "%EXE_NAME%" >NUL
if %ERRORLEVEL%==0 (
  "%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" stop --whkd
) else (
  "%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" start --whkd
)
