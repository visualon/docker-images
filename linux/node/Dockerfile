FROM ghcr.io/containerbase/base:10.12.1@sha256:a40f3d9e8d46afb1e4dd200329b5a663b2e796f772748f67d1f53d4fa18e5ff8
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
