# escape=`

FROM mcr.microsoft.com/windows/servercore:ltsc2019@sha256:acae9dedd8ce6fbc624e8c4b52555a9d3201eb47aacd45b4a00e0d81083b4cab AS installer

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.licenses="MIT" `
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" `
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

# renovate: datasource=github-tags depName=meltwater/drone-cache
ARG CACHE_VERSION=1.1.0

RUN `
  mkdir tmp && cd tmp`
	&& curl -sSfLo cache.zip https://github.com/meltwater/drone-cache/releases/download/v%CACHE_VERSION%/drone-cache_%CACHE_VERSION%_Windows_x86_64.zip `
  && tar -oxzf cache.zip `
  && move drone-cache_%CACHE_VERSION%_Windows_x86_64 c:\bin `
  && /bin/drone-cache --version

FROM mcr.microsoft.com/windows/nanoserver:1809-amd64@sha256:7685897de0f0a74e7c911e0d55d0efd7e25438c59c3b685fe78b05fc5aa94fe4

COPY --from=installer ["/bin", "/bin"]

ENTRYPOINT ["/bin/drone-cache"]
