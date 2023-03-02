FROM ghcr.io/containerbase/buildpack:6.3.4@sha256:31dbe48cde0308c1adfdd2c5820522c15a863c9d49ebcd210f118addcffe1a01
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.14.2

# renovate: datasource=npm
RUN install-tool corepack 0.17.0
