FROM ghcr.io/containerbase/base:10.15.3@sha256:37567978df0d946a1d9fd355bc9cc2317bea3f8158c637c8e8d4ef42a9d34af9
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
