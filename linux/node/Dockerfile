FROM ghcr.io/containerbase/buildpack:5.0.0@sha256:8a8ef4739fc702d6b6cd6c39c79b6ec18ab4c18a9b3eddcafc4c916f85c9a17b
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
RUN install-tool corepack 0.15.1
