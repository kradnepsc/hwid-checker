@echo off
setlocal enabledelayedexpansion

rem Get the actual HWID of the system
set hwid=
for /f "skip=1" %%i in ('wmic csproduct get uuid') do if not defined hwid set hwid=%%i

rem Remove any leading or trailing spaces from the actual HWID
set hwid=%hwid: =%

rem Display the HWID
echo Your HWID: %hwid%
pause
endlocal