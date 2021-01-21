#Requires -Version 5.1

if ( -not ($Version -match '^(\d+\.\d+\.\d+)$') ) {
  throw "Invalid $Name version"
}


$file = "$tmp\$Name.zip"
$app = "$apps\$Name"
$url = "https://github.com/PowerShell/PowerShell/releases/download/v$Version/PowerShell-$Version-win-x64.zip"

Invoke-WebRequest $url -OutFile $file

Expand-Archive -Path $file -DestinationPath $app

Install-Shim -Name pwsh -Path pwsh.exe
