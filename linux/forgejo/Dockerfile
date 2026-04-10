FROM codeberg.org/forgejo-experimental/forgejo:14.0.4-rootless@sha256:bca6943cdd8a50f5befaf1d654bec32c9a3b6da400d23a77a829bd41f88a7263

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
