# escape=`

# Use the latest Windows Server Core image with .NET Framework 4.8.
#FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019@sha256:88d62c8de6bb570e3c9fff100121afb1f400371de546418b56ccceb967d6910d
FROM mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-ltsc2019@sha256:8a3e3cac97f04de4683e0f54f9a2be97c1fd4f92f76ac30449f34d18eafb4f28

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.licenses="MIT" `
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" `
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

ENV `
  POWERSHELL_TELEMETRY_OPTOUT=1 `
  DOTNET_CLI_TELEMETRY_OPTOUT=1 `
  DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1

COPY root\ c:\

# renovate: datasource=github-releases depName=PowerShell/PowerShell
ARG PWSH_VERSION=7.1.1
RUN c:\tools\installer\pwsh.bat

SHELL ["pwsh", "-NoLogo", "-NoProfile", "-NoExit", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN c:\tools\installer\vs-tools.bat

# renovate: datasource=npm depName=yarn
ARG YARN_VERSION=1.22.10
RUN c:\tools\installer\scoop.ps1

# Define the entry point for the docker container.
ENTRYPOINT ["pwsh", "-NoLogo", "-NoProfile", "-NoExit", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
