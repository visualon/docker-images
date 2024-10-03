FROM ghcr.io/containerbase/base:12.0.1@sha256:e11c4e4eadde9eac5a2e49be9d16e2d3596f3d5e0f6e742f887e91375d922961
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.18.0

# renovate: datasource=npm
RUN install-tool corepack 0.29.4
