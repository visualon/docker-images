FROM renovate/renovate:19.225.2-slim@sha256:6a8ddf74b4635d1dd2d0d237e65eb10901cfc54ee458decb917c3c14d30e0137

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
