#Requires -Version 5.1

# 2.29.2.windows.1
if ( -not ($Version -match '^(\d+\.\d+\.\d+)\.windows(\.\d+)$') ) {
  throw "Invalid git version"
}

$v = $Matches.1
$r = $Matches.2

if ($r -eq ".1") {
  $r = ''
}

$file = "$tmp\$Name.zip"
$app = "$apps\$Name"
$url = "https://github.com/git-for-windows/git/releases/download/v$Version/MinGit-${v}${r}-busybox-64-bit.zip"

Invoke-WebRequest $url -OutFile $file

New-Item -Path $app -ItemType "directory" | Out-Null
Expand-Archive -Path $file -DestinationPath $app

Install-Shim -Name git -Path cmd\git.exe

exec {
  git --version

  git config --system --unset credential.helper
  git config --system core.autocrlf input
  git config --system core.fscache true
  git config --system core.longpaths true
  git config --system http.sslbackend schannel
}
