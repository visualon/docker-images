FROM renovate/renovate:19.219.4-slim@sha256:0a0e4be2151894d233ee1b6bf2e4e291cfe0721961e3340616794661c69c9d86

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="renovate" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/renovatebot/renovate"

USER root
RUN apt-get update && \
    apt-get install -y dumb-init && \
    rm -rf /var/lib/apt/lists/*

COPY renovate /usr/bin/

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
USER 1000
