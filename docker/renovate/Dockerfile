FROM renovate/renovate:19.65.2-slim@sha256:afb669d2e0f74bd7964af05cb7aa3a1571988193de6cb09d839a8ea5175ba217

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
