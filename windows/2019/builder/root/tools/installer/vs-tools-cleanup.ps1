#Requires -Version 7

$vsi = "${env:ProgramFiles(X86)}\Microsoft Visual Studio\Installer"

$vsi | Get-ChildItem

$vsi | Get-ChildItem -Directory | Remove-Item -Force -Recurse
$vsi | Get-ChildItem -File | Where-Object { $_.Name -ne 'vswhere.exe' } | Remove-Item -Force -Recurse

Get-ChildItem $Env:TEMP | Remove-Item -Force -Recurse
