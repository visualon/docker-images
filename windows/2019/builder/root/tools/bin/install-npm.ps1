#Requires -Version 7

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

if (-not $Version) {
  Throw "Missing version for npm $Name"
}

"Installing npm " | Write-Host -ForegroundColor DarkGray -NoNewline
"$Name"  | Write-Host -ForegroundColor Green -NoNewline
" v$Version" | Write-Host -ForegroundColor Yellow -NoNewline
" ... "  | Write-Host -ForegroundColor DarkGray

npm i -g ${Name}@${Version}

Remove-Cache

" done." | Write-Host -ForegroundColor DarkGray
