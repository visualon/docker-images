FROM ghcr.io/containerbase/base:10.1.3@sha256:956a9b8b629a75fc6b6b4105adaf919d8e4cf0e260eb04bdef970f352c3fce57
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.11.1

# renovate: datasource=npm
RUN install-tool corepack 0.24.1
