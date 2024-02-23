FROM codeberg.org/forgejo/forgejo:1.21.6-0-rootless@sha256:c7d14d404ffb896c1d3c99120aacc6991776f727039bb74d44c4497c4c4bac3b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
