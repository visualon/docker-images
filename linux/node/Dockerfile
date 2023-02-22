FROM ghcr.io/containerbase/buildpack:6.2.1@sha256:d226b4796e5e9b38f7b0c2ceff4d0fcf43f5a1cc19a0bd3ca918df9d0b870566
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.14.2

# renovate: datasource=npm
RUN install-tool corepack 0.16.0
