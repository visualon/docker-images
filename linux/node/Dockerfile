FROM ghcr.io/containerbase/buildpack:4.16.0@sha256:71afbe270fcdef75eb363bdeb9191c961c29263bb394fa01723e7df6d45b463d
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 16.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.14.2
