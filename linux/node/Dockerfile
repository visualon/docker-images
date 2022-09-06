FROM ghcr.io/containerbase/buildpack:4.13.6@sha256:33fee2ad705800885bda60022df5c6961d053a5373ec4f286db856e8d16ba5fd
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 16.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.14.0
