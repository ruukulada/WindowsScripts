:: start bubbles screensaver every 30 seconds

timeout /t 1
:start
%SystemRoot%\System32\bubbles.scr -start
timeout /t 30 /nobreak >NUL
goto start
