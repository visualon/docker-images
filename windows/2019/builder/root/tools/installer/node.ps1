#Requires -Version 5.1

# 1.14.5
if ( -not $Version -match '^(\d+\.\d+\.\d+)$' ) {
  throw "Invalid $Name version"
}

$file = "$tmp\$Name.zip"
$app = "$apps\$Name"
$url = "https://nodejs.org/dist/v$Version/node-v$Version-win-x64.zip"

Invoke-WebRequest $url -OutFile $file

Expand-Archive -Path $file -DestinationPath c:\TEMP

Move-Item -Path "$tmp\node-v$Version-win-x64" -Destination $app

Install-Shim -Name node -Path node.exe
Set-Content -Value "@`"%~dp0..\apps\$Name\npm.cmd`" %*" -Path "$bin\npm.cmd"
Set-Content -Value "@`"%~dp0..\apps\$Name\npx.cmd`" %*" -Path "$bin\npx.cmd"

Set-Content -Value "prefix=$bin`ncache=c:\\TEMP\\cache`nscripts-prepend-node-path=auto" -Path "$app\node_modules\npm\npmrc" -Encoding UTF8

exec {
  node --version
  npm --version
}
