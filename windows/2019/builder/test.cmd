@echo off

docker run --rm %IMAGE% msbuild -version
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%
