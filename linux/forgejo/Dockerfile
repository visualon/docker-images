FROM codeberg.org/forgejo/forgejo:1.21.2-1-rootless@sha256:05996cda03897755b5d9b55d1422160f40b720eb789f1fcf305cb4a8515caba8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
