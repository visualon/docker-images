$global:ErrorActionPreference = 'Stop';

$image = "visualon/images"

Write-Host Starting deploy

if (!(Test-Path ~/.docker)) { mkdir ~/.docker }
# "$env:DOCKER_PASS" | docker login --username "$env:DOCKER_USER" --password-stdin
# docker login with the old config.json style that is needed for manifest-tool
$auth = [System.Text.Encoding]::UTF8.GetBytes("$($env:DOCKER_USER):$($env:DOCKER_PASS)")
$auth64 = [Convert]::ToBase64String($auth)
@"
{
  "auths": {
    "https://index.docker.io/v1/": {
      "auth": "$auth64"
    }
  },
  "experimental": "enabled"
}
"@ | Out-File -Encoding Ascii ~/.docker/config.json


$images = @('node', 'rancher-cli', 'dotnet-sdk', 'dotnet-aspnet')

$images | ForEach-Object {

    Write-Host Deploying $_ -ForegroundColor Green

    docker tag $_ "$($image):$($_)"
    docker push "$($image):$($_)"
}

# if ($env:APPVEYOR_REPO_TAG -ne "true") {
#   Write-Host "No version tag detected. Skip publishing."
#   exit 0
# }

# docker tag jira "$($image):${env:APPVEYOR_BUILD_VERSION}"
# docker push "$($image):${env:APPVEYOR_BUILD_VERSION}"
