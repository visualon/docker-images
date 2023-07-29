FROM ghcr.io/containerbase/base:9.8.2@sha256:f41dc51323ab4839fa7e1242750363497fa45aec9d08f93ce2b42c5b10a581e7
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.19.0
