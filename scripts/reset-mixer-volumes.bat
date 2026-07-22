:: reset mixer application volumes to max

@if not defined e (set e=1 & call "%~dp0uac.bat" "%~f0" %* & exit /b)

net stop Audiosrv /y
net stop AudioEndpointBuilder /y

reg delete "HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore" /F
reg add "HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore"

net start Audiosrv
