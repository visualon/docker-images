FROM renovate/renovate:19.148.2-slim@sha256:e73396dce65830d55b7bb781a18bcb00cdd8e46c3fa02b64af53de1cf9688488 as base

#----------------------------
# fetch tini
FROM busybox:1.31.1@sha256:edafc0a0fb057813850d1ba44014914ca02d671ae247107ca70c94db686e7de6 as tini

USER root

ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini

RUN chmod +x /tini

#----------------------------
# build final image
FROM base as final

ARG SOURCE_COMMIT

COPY --from=tini /tini /tini
COPY renovate /usr/bin/

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="renovate" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.revision="$SOURCE_COMMIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/renovatebot/renovate"


ENTRYPOINT ["/tini", "--"]
