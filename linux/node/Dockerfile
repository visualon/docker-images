FROM ghcr.io/containerbase/base:9.23.13@sha256:d14b5f27fae55a2a016a2ddd116508d95fbb4269d85f845a6ede57f342265014
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
RUN install-tool corepack 0.23.0
