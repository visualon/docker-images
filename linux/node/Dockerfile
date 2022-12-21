FROM ghcr.io/containerbase/buildpack:5.6.0@sha256:9793825e71fb29de5ca77b3205e070c54ca8ee6f628fca70439d122994141f2a
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.12.1

# renovate: datasource=npm
RUN install-tool corepack 0.15.2
