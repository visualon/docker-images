FROM ghcr.io/containerbase/base:9.24.1@sha256:fb36bb5f67c7c70c5682c3f3e5bde7b13f6f9e482a0e4a231312fc60e3d7aa10
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.10.0

# renovate: datasource=npm
RUN install-tool corepack 0.23.0
