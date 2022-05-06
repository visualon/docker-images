FROM ghcr.io/containerbase/buildpack:3.17.2@sha256:7481fa8425a57912a40c20068d930414713f4e9deb76957b0a92a637b6355ac5
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
# renovate: datasource=node
RUN install-tool node 16.15.0

# renovate: datasource=npm
RUN install-tool corepack 0.10.0
