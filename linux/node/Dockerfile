FROM ghcr.io/containerbase/base:9.2.5@sha256:fbdb0d65f9357e3fcc29c246655fcffc768def47c10425bc64c33b91d213d505
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
RUN install-tool corepack 0.19.0
