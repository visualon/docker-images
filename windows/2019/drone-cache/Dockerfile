# escape=`

FROM mcr.microsoft.com/windows/servercore:ltsc2019

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.licenses="MIT" `
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" `
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

# renovate: datasource=github-tags depName=meltwater/drone-cache
ARG CACHE_VERSION=1.1.0

RUN `
	# Install VS Build Tools
	curl -fSLo cache.zip https://github.com/meltwater/drone-cache/releases/download/v%CACHE_VERSION%/drone-cache_%CACHE_VERSION%_Windows_x86_64.zip `
  && powershell -command Expand-Archive -Path cache.zip -DestinationPath c:\ `
  && del cache.zip `
  && ren c:\drone-cache_%CACHE_VERSION%_Windows_x86_64 bin

ENTRYPOINT ["/bin/drone-cache"]
