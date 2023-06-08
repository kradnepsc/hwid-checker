@echo off
setlocal enabledelayedexpansion

set hwid=
for /f "skip=1" %%i in ('wmic csproduct get uuid') do if not defined hwid set hwid=%%i

rem Remove any leading or trailing spaces from the actual HWID
set hwid=%hwid: =%

echo Your HWID: %hwid%
pause
endlocal
