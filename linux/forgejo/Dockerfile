FROM codeberg.org/forgejo-experimental/forgejo:16.0.0-rootless@sha256:33a27fad6fab44e585e86ab185ba882cbf9fd6ed28b368863474a580c526f75c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
