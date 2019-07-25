$ErrorActionPreference = 'Stop'

Write-Host Starting build

$images = @('node', 'rancher-cli', 'dotnet-sdk', 'dotnet-aspnet', 'renovate')

$images | ForEach-Object {
    Write-Host Building $_ -ForegroundColor Green
    docker build --progress=plain -t $_ --build-arg APPVEYOR_REPO_COMMIT --build-arg APPVEYOR_BUILD_VERSION ./docker/$_
    if ($LastExitCode -ne 0) { $host.SetShouldExit($LastExitCode); throw "build error"  }
}
