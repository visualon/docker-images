FROM codeberg.org/forgejo-experimental/forgejo:10.0.2-rootless@sha256:d6d7d209e68c507bf561ee5838bc62df0747c57c9ab6deb2848f93ae06bdb49f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
