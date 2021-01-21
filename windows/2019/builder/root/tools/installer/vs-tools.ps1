#Requires -Version 5.1

Write-Debug "Fetching installer"
Invoke-WebRequest -OutFile c:\TEMP\vs_BuildTools.exe https://aka.ms/vs/16/release/vs_buildtools.exe

#curl -sSfLo c:\TEMP\collect.exe https://aka.ms/vscollect.exe

Write-Debug "Installing vs build tools"
exec {
  c:\TEMP\vs_buildtools.exe --quiet --wait --norestart --nocache `
    --installPath C:\BuildTools  `
    --add Microsoft.VisualStudio.Workload.WebBuildTools  `
    --add Microsoft.VisualStudio.Workload.OfficeBuildTools  `
    --add Microsoft.VisualStudio.Workload.NetCoreBuildTools | Out-Null
}  -AllowedExitCodes  @(0, 3010)

Write-Debug "Installing vs done"

if ($err = Get-ChildItem $Env:TEMP -Filter dd_setup_*_errors.log | Where-Object Length -gt 0 | Get-Content) {
  throw $err
}

install-shim msbuild C:\BuildTools\MSBuild\Current\Bin\msbuild.exe

Write-Debug "VS Test ..."
# Path not yet updated
Set-Alias dotnet ${env:ProgramFiles}\dotnet\dotnet.exe;

exec { dotnet nuget list source } | Out-Null
Write-Debug "VS Test done"

Write-Debug "VS Cleanup ..."

$vsi = "${env:ProgramFiles(X86)}\Microsoft Visual Studio\Installer"
$vsi | Get-ChildItem -Directory | Remove-Item -Force -Recurse
$vsi | Get-ChildItem -File | Where-Object { $_.Name -ne 'vswhere.exe' } | Remove-Item -Force -Recurse

Write-Debug "VS Cleanup done"
