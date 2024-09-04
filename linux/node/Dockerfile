FROM ghcr.io/containerbase/base:11.11.10@sha256:275a5a4af8f25305c86881e756b9f69e994bf4d5ec5548731573f654cceef1fe
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.29.3
