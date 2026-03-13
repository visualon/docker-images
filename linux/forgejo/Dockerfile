FROM codeberg.org/forgejo-experimental/forgejo:14.0.3-rootless@sha256:3bde16a366e57f37c09599b77ceb83ed05b1934f8224072f8140bc66cf243608

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
