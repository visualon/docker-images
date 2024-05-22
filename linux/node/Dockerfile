FROM ghcr.io/containerbase/base:10.6.14@sha256:b6002ebc28117d34b49322955d2cff49745363012d36930ab739f3ec7575947a
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.13.1

# renovate: datasource=npm
RUN install-tool corepack 0.28.1
