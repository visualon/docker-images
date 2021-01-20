#Requires -Version 7

Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression

scoop config shim kiennq

scoop install git nodejs-lts

git config --system --unset credential.helper
git config --global --unset credential.helper

npm i -g yarn@${env:YARN_VERSION}

# Cleanup
Get-ChildItem ~\scoop\cache | Remove-Item
Get-ChildItem $Env:TEMP | Remove-Item -Force -Recurse
