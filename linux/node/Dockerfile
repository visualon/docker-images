FROM ghcr.io/containerbase/buildpack:4.16.7@sha256:243e922d833c32129231a0fc30c0f1d152a8cb568d4f89a8ce6391b551090047
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 16.18.0

# renovate: datasource=npm
RUN install-tool corepack 0.14.2
