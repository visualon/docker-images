# escape=`

# * disable renovate digest pinning
# * reuse cached docker images on github-actions
# * allow registry override
ARG REPO=mcr.microsoft.com/windows

FROM ${REPO}/servercore:ltsc2019 AS installer

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
  && tar xzf cache.zip -C c:\ `
  && del cache.zip `
  && ren c:\drone-cache_%CACHE_VERSION%_Windows_x86_64 bin

FROM ${REPO}/nanoserver:1809-amd64

COPY --from=installer ["/bin", "/bin"]

ENTRYPOINT ["/bin/drone-cache"]
