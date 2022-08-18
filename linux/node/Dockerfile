FROM ghcr.io/containerbase/buildpack:4.11.1@sha256:9663ce347d5caf29f1855b6eae3e55e4195d912d5bcf75415d756153379dc3b6
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 16.16.0

# renovate: datasource=npm
RUN install-tool corepack 0.12.3
