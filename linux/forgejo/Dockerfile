FROM codeberg.org/forgejo-experimental/forgejo:11.0.0-rootless@sha256:c619d1846b6b4cb82db71cf0c93b1bb1f9024fca762c6789eff57e5377b67cd2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
