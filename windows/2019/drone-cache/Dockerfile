# escape=`

# renovate: datasource=github-releases depName=meltwater/drone-cache
ARG CACHE_VERSION=1.2.1

FROM mcr.microsoft.com/windows/nanoserver:1809-amd64@sha256:d0932f4f07d670f2224f8a2056cc0779b281d3de25f4058e0e26f69c0c95e551

USER ContainerAdministrator

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.licenses="MIT" `
    org.opencontainers.image.source="https://github.com/visualon/docker-images" `
    org.opencontainers.image.url="https://github.com/visualon/docker-images"

ENTRYPOINT ["/bin/drone-cache"]

ARG CACHE_VERSION
LABEL org.opencontainers.image.version="${CACHE_VERSION}"

RUN `
  mkdir tmp && mkdir bin`
	&& curl -sSfLo tmp/file.zip https://github.com/meltwater/drone-cache/releases/download/v%CACHE_VERSION%/drone-cache_%CACHE_VERSION%_Windows_x86_64.zip `
  && tar -C bin -oxzf tmp/file.zip --strip 1 drone-cache_%CACHE_VERSION%_Windows_x86_64/drone-cache.exe`
  && rmdir /Q /S tmp `
  && /bin/drone-cache --version
