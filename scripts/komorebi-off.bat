:: close komorebi, run as admin (sudo)

@if not defined e (set e=1 & call "%~dp0uac.bat" "%~f0" %* & exit /b)

"%ProgramFiles%\komorebi\bin\komorebic-no-console.exe" stop --whkd
