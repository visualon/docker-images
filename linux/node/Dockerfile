FROM ghcr.io/containerbase/base:10.11.2@sha256:96d88c92cd58d250b444f94fa1797d22c2999378f941c27265463a4ebb68c690
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.14.0

# renovate: datasource=npm
RUN install-tool corepack 0.28.2
