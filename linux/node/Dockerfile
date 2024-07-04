FROM ghcr.io/containerbase/base:10.15.2@sha256:0d11770eb8dadf082bfcec1a0e151f4993fb088808d42c83913e1080997a327f
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
