FROM renovate/renovate:19.219.3-slim@sha256:1aa1cbda786932bb045709fc71dd02aa98c0570e0970aba7aa9fb68daa0be43a

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
