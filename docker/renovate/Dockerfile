FROM renovate/renovate:19.179.0-slim@sha256:1d52386bbd5c9a173dbfb4f30c75f7653e0b31e6fc0af1881bafa42f5ab99192 as base

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

COPY --from=tini /tini /tini
COPY renovate /usr/bin/

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="renovate" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/renovatebot/renovate"


ENTRYPOINT ["/tini", "--"]
