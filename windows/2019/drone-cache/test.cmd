@echo off

docker run --rm %IMAGE% --help
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%
