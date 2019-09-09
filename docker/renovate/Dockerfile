FROM renovate/renovate:19.40.2-slim@sha256:1bfbd2488ccdc78fbe8519af8d5817bcc36d33ec2301f7943902c73b2b45a86b

ARG SOURCE_COMMIT

COPY renovate /usr/bin/

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="renovate" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.revision="$SOURCE_COMMIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/renovatebot/renovate"

ENTRYPOINT []
