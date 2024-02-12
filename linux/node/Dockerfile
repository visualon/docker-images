FROM ghcr.io/containerbase/base:9.33.8@sha256:6def053e3b358b900d377affdbd0d64fad0e5b0ecbedc0773545a432a5fc5e26
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.11.0

# renovate: datasource=npm
RUN install-tool corepack 0.24.1
