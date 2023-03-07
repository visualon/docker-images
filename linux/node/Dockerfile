FROM ghcr.io/containerbase/buildpack:6.3.6@sha256:35e2f15c28984e853631e6259cf780b0565ad307e6fa032ce18c510b7f6aead8
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
