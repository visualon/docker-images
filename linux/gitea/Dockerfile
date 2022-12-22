FROM gitea/gitea:1.17.4-rootless@sha256:bf917eb46a3195f60022a0d38018a64782777481279724b819f57703d9585184

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="gitea" \
    org.opencontainers.image.source="https://github.com/go-gitea/gitea" \
    org.opencontainers.image.url="https://github.com/go-gitea/gitea"

USER root

RUN apk --no-cache add \
 dumb-init \
 ;

USER 1000:1000

ENTRYPOINT ["/usr/bin/dumb-init", "--", "/usr/local/bin/docker-entrypoint.sh"]

