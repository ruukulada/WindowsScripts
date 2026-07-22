@echo off
setlocal
net session >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
  sudo "%~f0" %*
) else (
  cd /d "%~dp1"
  call "%~1"
)
exit /b
