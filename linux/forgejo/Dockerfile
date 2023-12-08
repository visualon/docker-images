FROM codeberg.org/forgejo/forgejo:1.21.1-0-rootless@sha256:165eeb412cc38a9f9caae1fa833231091601e5c70f4c0752d3020fe124002bd8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
