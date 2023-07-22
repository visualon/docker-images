FROM ghcr.io/containerbase/base:9.7.0@sha256:4b412a3024971f5fa3690727f4b112a6b47ffbab845344d031b2245fd7188b7c
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
