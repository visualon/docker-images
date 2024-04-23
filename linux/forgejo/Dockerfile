FROM codeberg.org/forgejo/forgejo:7.0.0-rootless@sha256:3569aa096885f7c413248d978a339266a545f0cbbfb2fdc83484e141ba8f4424

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
