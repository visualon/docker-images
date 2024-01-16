FROM codeberg.org/forgejo/forgejo:1.21.4-0-rootless@sha256:901c75b6ded9d0b5e4b5876d5217a3b1fd40fb6ca1f224879e598c7313551e02

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
