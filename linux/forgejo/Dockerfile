FROM codeberg.org/forgejo-experimental/forgejo:13.0.4-rootless@sha256:5ebd7bb1f81fd9948e63d810ebd40830a00f8ca29165ca227105b3f5e4ec40bd

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
