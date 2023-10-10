FROM ghcr.io/containerbase/base:9.20.9@sha256:1ecfbadfd199c724e5b795260a996991f9d1e269f0fe57252461a8cb7a6798e1
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.18.0

# renovate: datasource=npm
RUN install-tool corepack 0.20.0
