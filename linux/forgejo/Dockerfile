FROM codeberg.org/forgejo/forgejo:1.21.3-0-rootless@sha256:c2510342c618ff294d12c56086c537082718833ae3ea5a60030deaa33dfcdb5d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
