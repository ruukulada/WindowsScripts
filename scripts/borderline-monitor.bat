:: start borderline.exe to bring all windows to target monitor

@echo off
if "%~1"=="" (
    set /p monitorNumber=Enter monitor number: 
) else (
    set monitorNumber=%~1
)
start "" "%ProgramFiles%\Borderline\Borderline.exe" %monitorNumber%
