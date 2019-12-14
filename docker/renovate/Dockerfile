FROM renovate/renovate:19.82.7-slim@sha256:45c76e83f932dadc8328f4b0b3121d94937e9e8c852bca60c388645aaae2f2a8

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
