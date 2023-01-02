FROM codeberg.org/forgejo/forgejo:1.18.0-1-rootless@sha256:cf4bfe9118dbdd7551fa370d14cbc8ee0f8c9825bfa91ebfc0e36cda174ba4af

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
