FROM renovate/renovate:19.168.14-slim@sha256:80f55c2d7a84295b8e5e7d80c5e30640c837e75bfa2f82a67ba5061768b6bcc7 as base

#----------------------------
# fetch tini
FROM busybox:1.31.1@sha256:afe605d272837ce1732f390966166c2afff5391208ddd57de10942748694049d as tini

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
