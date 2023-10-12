FROM ghcr.io/containerbase/base:9.23.1@sha256:0f43b97350b7151ac7b396d8f4a6e4e8387de185764c602343c2b20a5879cb6d
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.18.1

# renovate: datasource=npm
RUN install-tool corepack 0.21.0
