@echo off

mkdir c:\temp

set PATH=c:\tools\bin;%PATH%
setx /M PATH "%PATH%" > nul

echo Installing shim v%SHIM_VERSION% ...
mkdir c:\tools\apps\shim
curl -sSfLo c:\temp\shim.zip https://github.com/kiennq/scoop-better-shimexe/releases/download/%SHIM_VERSION%/shimexe-%SHIM_VERSION%.zip
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%
tar -zxf c:\temp\shim.zip -C c:\tools\apps\shim
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%


echo Installing pwsh v%PWSH_VERSION% ...
curl -sSfLo c:\temp\pwsh.zip https://github.com/PowerShell/PowerShell/releases/download/v%PWSH_VERSION%/PowerShell-%PWSH_VERSION%-win-x64.zip
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%
tar -zxf c:\temp\pwsh.zip -C c:\tools\apps\pwsh
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%

call install-shim pwsh pwsh.exe
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%

echo Cleanup ...
rmdir /S /Q c:\TEMP

echo Installing done.
