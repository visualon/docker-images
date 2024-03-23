FROM codeberg.org/forgejo/forgejo:1.21.8-0-rootless@sha256:278cf3148be12825ab65855a973ccc4206e39a4030db01ca84307448f8659c8a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
