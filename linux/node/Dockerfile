FROM ghcr.io/containerbase/base:10.11.8@sha256:f5a6e43f69f66bfe29e0a55e10f7211676e5afd2948ab68943851cfca234d58d
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.15.0

# renovate: datasource=npm
RUN install-tool corepack 0.28.2
