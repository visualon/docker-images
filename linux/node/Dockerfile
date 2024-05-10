FROM ghcr.io/containerbase/base:10.6.7@sha256:22999ddc3c1ae02ec2c12d15500063dfb9b008ce2d819a2ac22b8cb866e5cd73
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
