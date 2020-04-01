FROM renovate/renovate:19.189.3-slim@sha256:ee9436cb59225a8aa59c32ff10bea269f2247999ef688c0b569ac1e4af035a4b

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
