# escape=`

# Use the latest Windows Server Core image with .NET Framework 4.7.2.
FROM mcr.microsoft.com/windows/servercore:ltsc2019@sha256:acae9dedd8ce6fbc624e8c4b52555a9d3201eb47aacd45b4a00e0d81083b4cab

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" `
  org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" `
  org.opencontainers.image.source="https://github.com/VisualOn/docker-images" `
  org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

ENV `
  POWERSHELL_TELEMETRY_OPTOUT=1 `
  DOTNET_CLI_TELEMETRY_OPTOUT=1 `
  DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1

COPY root\ c:\

SHELL ["cmd", "/C"]

RUN c:\tools\init.cmd

# renovate: datasource=github-releases lookupName=kiennq/scoop-better-shimexe versioning=gradle
RUN install-tool shim 2.2.1

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool pwsh 7.1.3

# renovate: datasource=github-releases lookupName=git-for-windows/git
RUN install-tool git v2.31.0.windows.1

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 14.16.0

# renovate: datasource=npm
RUN install-npm yarn 1.22.10

# install last to get latest vs updates
RUN install-tool vs-tools

# Define the entry point for the docker container.
ENTRYPOINT ["pwsh", "-NoLogo", "-Command"]

CMD ["pwsh", "-NoLogo", "-NoExit"]
