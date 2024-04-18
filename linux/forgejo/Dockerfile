FROM codeberg.org/forgejo/forgejo:1.21.11-0-rootless@sha256:8589e2f7436d0b267f5f00348912207c55703a26faf9ae7b335100458d2ca321

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
