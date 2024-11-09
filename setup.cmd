@REM run as Administrator
@echo off

if not exist "%USERPROFILE%\Downloads\depot_tools" (
cd /d "%TEMP%" && ^
%SystemRoot%\System32\curl.exe https://storage.googleapis.com/chrome-infra/depot_tools.zip -L -O -J  && ^
C:\PROGRA~1\7-Zip\7z.exe x depot_tools.zip -o"%USERPROFILE%\Downloads\depot_tools"  && ^
del depot_tools.zip
)

pause
