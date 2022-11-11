FROM gitea/gitea:1.17.3-rootless@sha256:b4f96878434173c43b4a702af683dd29c9072484f3ee27f7c2d2fe7799678a9d

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

