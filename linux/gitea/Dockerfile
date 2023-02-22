FROM gitea/gitea:1.18.5-rootless@sha256:40d4a630fd90cb41bea245034a1a86e3ba7220e8f6d7e5e0d0a50583df2e1a16

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="gitea" \
    org.opencontainers.image.source="https://github.com/go-gitea/gitea" \
    org.opencontainers.image.url="https://github.com/go-gitea/gitea"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
