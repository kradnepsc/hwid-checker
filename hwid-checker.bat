@echo off

title hwid checker
:hwidcheck
cls
wmic diskdrive get model, serialnumber
wmic cpu get serialnumber
wmic bios get serialnumber
wmic baseboard get serialnumber
wmic path win32_computersystemproduct get uuid
getmac
echo.
echo press any key to restart
pause >nul
cls
goto hwidcheck
