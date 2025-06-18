FROM codeberg.org/forgejo-experimental/forgejo:11.0.2-rootless@sha256:040cda466b6e8b067a9eb7dd88b090333d69ca51d6ac80c0dc964c1ef12f1810

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
