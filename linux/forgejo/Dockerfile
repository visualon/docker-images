FROM codeberg.org/forgejo/forgejo:1.21.10-0-rootless@sha256:5aed3d4a1c3067c888e7d81d852d984c356f512205d4349e15fa63f83cac5d68

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
