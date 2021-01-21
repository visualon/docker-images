#Requires -Version 5.1

function Install-Shim {
  [CmdletBinding()]
  param (
    [Parameter()]
    [string]
    $Name,

    [Parameter()]
    [string]
    $Path
  )

  Write-Debug "Install shim $Name <> $Path"

  cmd /c mklink ${bin}\${Name}.exe $apps\shim\shim.exe | Out-Null

  if ($false -eq [System.IO.Path]::IsPathRooted($Path)) {
    $Path = "$apps\$Name\$Path"
  }

  Set-Content -Value "path = ${Path}" -Path "${bin}\${Name}.shim" -Encoding utf8


  Write-Debug "Install shim done"
}
