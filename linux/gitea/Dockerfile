FROM gitea/gitea:1.21.1-rootless@sha256:00486bc884e745209e8246b3d070761310d0e4334e4cacea52b3ce8b7c2a065a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="gitea" \
    org.opencontainers.image.source="https://github.com/go-gitea/gitea" \
    org.opencontainers.image.url="https://github.com/go-gitea/gitea"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
