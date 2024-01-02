FROM ghcr.io/containerbase/base:9.30.10@sha256:8e666ee10834c70f7c854eaf062f0992604ce851f9a6bb63cbbc12fdd8fa7a29
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.10.0

# renovate: datasource=npm
RUN install-tool corepack 0.23.0
