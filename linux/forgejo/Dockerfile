FROM codeberg.org/forgejo-experimental/forgejo:10.0.2-rootless@sha256:dd46097d6076bb0ef04dc5db2c1d6716fa8cfaaad10951b67d7ab9428e424d68

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
