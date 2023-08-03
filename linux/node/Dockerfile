FROM ghcr.io/containerbase/base:9.8.5@sha256:d5249b286ac9e15ac8ab334cf84297fef28663eb7c5c60b30450b62b8b37d07e
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.19.0
