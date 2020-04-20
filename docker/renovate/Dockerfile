FROM renovate/renovate:19.214.0-slim@sha256:ff7616a0df633d56040a170c9af07a9d84e6eb347fdefb356658ca346cce5364

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
