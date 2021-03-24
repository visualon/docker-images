# escape=`

# Use the latest Windows Server Core image with .NET Framework 4.7.2.
FROM ghcr.io/visualon/buildpack:latest@sha256:914190d13124fc8d51bbb83df368774bf78664d3b217038679035091c72f4673

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" `
  org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" `
  org.opencontainers.image.source="https://github.com/VisualOn/docker-images" `
  org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool pwsh 7.1.3

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 14.16.0

# renovate: datasource=npm
RUN install-npm yarn 1.22.10

# install last to get latest vs updates
RUN install-tool vs-tools
