:: invoke script again with sudo if not elevated

@echo off
setlocal
net session >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
  sudo "%~f0" %*
  exit /b
)
