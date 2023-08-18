FROM ghcr.io/containerbase/base:9.12.1@sha256:4c7f058d9707c1c259c74e0765977c6dc4d9d0bc36aab31c3257f23b74d20f98
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.17.1

# renovate: datasource=npm
RUN install-tool corepack 0.19.0
