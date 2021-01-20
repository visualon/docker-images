@echo Install VS Build Tools
@echo on

mkdir c:\TEMP

curl -sSfLo c:\TEMP\vs_BuildTools.exe https://aka.ms/vs/16/release/vs_buildtools.exe
curl -sSfLo c:\TEMP\collect.exe https://aka.ms/vscollect.exe

c:\TEMP\vs_buildtools.exe --quiet --wait --norestart --nocache ^
  --installPath C:\BuildTools ^
  --add Microsoft.VisualStudio.Workload.WebBuildTools ^
  --add Microsoft.VisualStudio.Workload.OfficeBuildTools ^
  --add Microsoft.VisualStudio.Workload.NetCoreBuildTools

del c:\TEMP\vs_BuildTools.exe
del c:\TEMP\collect.exe

pwsh -noni -nop -c "if ($err = Get-ChildItem $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }"

@echo Cleanup

pwsh -noni -nop -f c:\tools\installer\vs-tools-cleanup.ps1
rmdir /S /Q c:\TEMP

@dir "%TEMP%"
@dir "%ProgramFiles(x86)%\Microsoft Visual Studio\Installer"


setx /M PATH "C:\BuildTools\MSBuild\Current\Bin;%PATH%"

dotnet nuget list source > nul

@echo Installing done.
