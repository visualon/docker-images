FROM codeberg.org/forgejo/forgejo:1.21.11-1-rootless@sha256:a3699aefd720f26abf13bd5f8579e1cd4172f214326511899f3592c89e382189

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
