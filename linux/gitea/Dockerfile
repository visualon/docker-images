FROM gitea/gitea:1.20.3-rootless@sha256:58495fb9d1eab613e1fd3d4274a32567dea0c56fcd2fa99e21a0751c56182dd4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="gitea" \
    org.opencontainers.image.source="https://github.com/go-gitea/gitea" \
    org.opencontainers.image.url="https://github.com/go-gitea/gitea"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
