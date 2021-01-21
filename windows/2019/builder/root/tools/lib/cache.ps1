#Requires -Version 5.1

function Remove-Cache {
  Write-Debug "Cleanup cache"
  Get-ChildItem $Env:TEMP | Remove-Item -Force -Recurse
  Remove-Item $tmp -Force -Recurse
  Write-Debug "Cleanup cache done"
}
