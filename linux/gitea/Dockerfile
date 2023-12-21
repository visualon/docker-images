FROM gitea/gitea:1.21.3-rootless@sha256:00677d8d32eddb4c9c61ef2834ee89d9b269036c6918081c3971a6009e7ed2c0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="gitea" \
    org.opencontainers.image.source="https://github.com/go-gitea/gitea" \
    org.opencontainers.image.url="https://github.com/go-gitea/gitea"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
