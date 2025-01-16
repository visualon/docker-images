FROM codeberg.org/forgejo-experimental/forgejo:10.0.0-rootless@sha256:d07a623ff4da1a78baab6f3ba0b3273268efd305c73cbc597e1ebe735b77e6b1

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
