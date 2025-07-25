FROM codeberg.org/forgejo-experimental/forgejo:12.0.1-rootless@sha256:d3cf45e6fa7cda0c329a02ce4d5c57cd5fae67f6d39bb5057b77c081938594df

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
