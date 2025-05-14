:: start borderline.exe to bring all windows to target monitor

@echo off
set /p monitorNumber=Enter monitor number: 
start "" "%ProgramFiles%\Borderline\Borderline.exe" %monitorNumber%
