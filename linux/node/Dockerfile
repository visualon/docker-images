FROM ghcr.io/containerbase/base:9.23.12@sha256:7200ea0cc7bb19a9d33881a14da2bc0208daf7553cadc0fff084ad158e372c50
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.9.0

# renovate: datasource=npm
RUN install-tool corepack 0.22.0
