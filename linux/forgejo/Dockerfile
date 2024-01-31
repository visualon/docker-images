FROM codeberg.org/forgejo/forgejo:1.21.5-0-rootless@sha256:f23f56a0a1f53fa9f3ffbbb19aad3afef180fad7f8d4250174363ecab80d5166

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
