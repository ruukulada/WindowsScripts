:: close and re-open komorebi, run as admin (sudo)

@echo off
setlocal
net session >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
  sudo "%~f0" %*
  exit /b
)

"%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" stop --whkd
"%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" start --whkd
