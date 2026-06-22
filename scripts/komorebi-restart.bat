:: close and re-open komorebi, run as admin (sudo)

call uac.bat

"%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" stop --whkd
"%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" start --whkd
