#Requires -Version 7

Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression

scoop config shim kiennq

# Cleanup
Get-ChildItem ~\scoop\cache | Remove-Item
