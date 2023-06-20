FROM ghcr.io/containerbase/base:9.0.3@sha256:20a90aa24e9f6a70ccbb5274553001201cabd42437f4412cb9c5d6f1bde05906
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.16.1

# renovate: datasource=npm
RUN install-tool corepack 0.18.1
