# escape=`
# renovate: datasource=github-tags depName=meltwater/drone-cache
ARG CACHE_VERSION=1.1.0

FROM mcr.microsoft.com/windows/servercore:ltsc2019@sha256:6dfc9ed8c6048a7a45fba93fdfc0b5c4cf1215392e74dfa674003ccfb99061fa AS installer

ARG CACHE_VERSION

RUN `
  mkdir tmp && cd tmp`
	&& curl -sSfLo cache.zip https://github.com/meltwater/drone-cache/releases/download/v%CACHE_VERSION%/drone-cache_%CACHE_VERSION%_Windows_x86_64.zip `
  && tar -oxzf cache.zip `
  && move drone-cache_%CACHE_VERSION%_Windows_x86_64 c:\bin `
  && /bin/drone-cache --version

FROM mcr.microsoft.com/windows/nanoserver:1809-amd64@sha256:502ecb75e37ada29fa102f92437a0b55504290a715a607d83a2b371811b00d44

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.licenses="MIT" `
    org.opencontainers.image.source="https://github.com/visualon/docker-images" `
    org.opencontainers.image.url="https://github.com/visualon/docker-images"


ARG CACHE_VERSION
LABEL org.opencontainers.image.version="${CACHE_VERSION}"

COPY --from=installer ["/bin", "/bin"]

ENTRYPOINT ["/bin/drone-cache"]
