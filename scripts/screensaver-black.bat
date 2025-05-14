:: start black screensaver every 30 seconds
:: useful for keeping all monitors black

timeout /t 1
:start
%SystemRoot%\System32\scrnsave.scr -start
timeout /t 30 /nobreak >NUL
goto start
