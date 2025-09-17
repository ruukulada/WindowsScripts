:: disable and re-enable network interfaces, run as admin (sudo)

@echo off
setlocal
net session >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
  sudo "%~f0" %*
  exit /b
)

@echo off
for /f "tokens=3,* delims= " %%A in ('netsh interface show interface ^| find /i "connected"') do (
  echo Resetting: %%B
  netsh interface set interface %%B DISABLED
  timeout /t 2
  netsh interface set interface %%B ENABLED
)
