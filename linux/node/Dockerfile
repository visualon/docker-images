FROM ghcr.io/containerbase/base:10.1.2@sha256:4c64cb0c47d75836e0b34ac61e1d108a4035b3abe2b5490db172d9599d0ee023
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.11.1

# renovate: datasource=npm
RUN install-tool corepack 0.24.1
