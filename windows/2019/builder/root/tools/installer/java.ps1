$ErrorActionPreference = 'Stop'

. \tools\lib\index.ps1

$tag = $Version.Replace('+', '%2B')
$v = $Version.Replace('+', '_')


$file = "$tmp\$Name.zip"
$app = "$apps\$Name"
$url = "https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-${tag}/OpenJDK11U-jre_x64_windows_hotspot_${v}.zip"

Invoke-WebRequest $url -OutFile $file

New-Item -Path $app -ItemType "directory" | Out-Null

exec { tar -xzf $file -C $app --strip-components=1 }

Install-Shim -Name java -Path bin\java.exe
