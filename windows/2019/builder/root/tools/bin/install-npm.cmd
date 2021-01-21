@echo off
PowerShell -noni -nop -c "$ErrorActionPreference = 'Stop'; install-npm.ps1 %*"
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%
