#Requires -Version 5.1

if ( -not ($Version -match '^(\d+\.\d+(\.\d+)?)$') ) {
  throw "Invalid $Name version"
}


$file = "$tmp\$Name.zip"
$app = "$apps\$Name"
$url = "https://github.com/kiennq/scoop-better-shimexe/releases/download/$Version/shimexe-$Version.zip"

Invoke-WebRequest $url -OutFile $file

New-Item -Path $app -ItemType "directory" | Out-Null
Expand-Archive -Path $file -DestinationPath $app
