FROM codeberg.org/forgejo-experimental/forgejo:17.0.2-rootless@sha256:39362ab93a94c0c9b8b330d2a877ddbb3f02fa8c0cba1b8d686d437b39f36a04

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
