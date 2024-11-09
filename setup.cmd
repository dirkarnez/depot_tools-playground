@REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

SET PATH=^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
%DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
%DOWNLOADS_DIR%\cmake-3.26.1-windows-x86_64\bin;

if not exist "%USERPROFILE%\Downloads\depot_tools" (
cd /d "%TEMP%" && ^
%SystemRoot%\System32\curl.exe https://storage.googleapis.com/chrome-infra/depot_tools.zip -L -O -J  && ^
C:\PROGRA~1\7-Zip\7z.exe x depot_tools.zip -o"%USERPROFILE%\Downloads\depot_tools"  && ^
del depot_tools.zip
)

git config core.autocrlf false
git config core.filemode false

pause
