FROM codeberg.org/forgejo/forgejo:1.21.7-0-rootless@sha256:0723ab1b88f0b268094d899c80c3370834a5f5ff9ea29f3c014c608db897881a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
