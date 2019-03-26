$ErrorActionPreference = 'Stop';

Write-Host Starting build
docker build -t renovate ./docker/renovate
