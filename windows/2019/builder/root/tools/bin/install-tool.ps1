#Requires -Version 5.1

[CmdletBinding()]
param (
  [Parameter(Mandatory = $true)]
  [string]
  $Name,

  [Parameter()]
  [string]
  $Version
)

. $PSScriptRoot\..\lib\index.ps1

if (-not $Version -and (Test-Path "env:\${Name}_version")) {
  $Version = Get-Content "env:\${Name}_version"
}

"Installing Name " | Write-Host -ForegroundColor DarkGray -NoNewline
"$Name"  | Write-Host -ForegroundColor Green -NoNewline
if ($Version) {
  " v$Version" | Write-Host -ForegroundColor Yellow -NoNewline
}
" ... "  | Write-Host -ForegroundColor DarkGray

New-Item -Path $tmp -ItemType "directory" | Out-Null

if (Test-Path "${installer}\${Name}.ps1") {
  . "${installer}\${Name}.ps1"
}
elseif (Test-Path "${installer}\${Name}.cmd") {
  exec { & "${installer}\${Name}.cmd" }
}
elseif (Test-Path "${installer}\${Name}.bat") {
  exec { & "${installer}\${Name}.bat" }
}
else {
  throw "Missing Name installer"
}

Remove-Cache

" done." | Write-Host -ForegroundColor DarkGray
