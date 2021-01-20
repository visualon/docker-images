@echo off
echo Installing pwsh v%PWSH_VERSION% ...

mkdir c:\tools\pwsh

curl -sSfLo pwsh.zip https://github.com/PowerShell/PowerShell/releases/download/v%PWSH_VERSION%/PowerShell-%PWSH_VERSION%-win-x64.zip
tar -zxf pwsh.zip -C c:\tools\pwsh
del pwsh.zip

setx /M PATH "c:\tools\pwsh;%PATH%"

echo Installing done.
