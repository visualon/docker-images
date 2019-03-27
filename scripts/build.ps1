$ErrorActionPreference = 'Stop';

Write-Host Starting build

$images = @('renovate', 'rancher-cli', 'dotnet-sdk', 'dotnet-aspnet')

$images | ForEach-Object {
    Write-Host Building $_ -ForegroundColor Green
    docker build -t $_ ./docker/$_
}
