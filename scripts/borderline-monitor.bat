:: start borderline.exe to bring all windows to target monitor

set /p monitorNumber=Enter monitor number: 
start "" "%ProgramFiles%\Borderline\Borderline.exe" %monitorNumber%
