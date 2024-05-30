FROM code.forgejo.org/forgejo/forgejo:7.0.3-rootless@sha256:841b2694942ae0014e17648571a8906c7424021a5fa515b2a90b59aa23056d6f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
