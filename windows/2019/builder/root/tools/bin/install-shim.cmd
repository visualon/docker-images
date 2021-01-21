SET mypath=%~dp0
PowerShell -noni -nop -c ". %mypath%..\lib\index.ps1; Install-Shim -Name %1 -Path %2"
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%
