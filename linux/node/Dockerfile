FROM ghcr.io/containerbase/base:9.20.4@sha256:a69989e173279e39a579f771c2cb925065488225399c96183ff4ac4bb3d09d2f
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.18.0

# renovate: datasource=npm
RUN install-tool corepack 0.20.0
