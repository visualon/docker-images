FROM renovate/renovate:19.97.2-slim@sha256:3205beb4aad484e4669b6187e0200421957b91f13c6c0756847a45a80571441b

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
