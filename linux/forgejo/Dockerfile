FROM codeberg.org/forgejo/forgejo:7.0.1-rootless@sha256:fa5d44d8e1bef23ef9c607347b0966d32e8be8e9f566e03b27b366d9c2d6f2a2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
