FROM codeberg.org/forgejo-experimental/forgejo:14.0.1-rootless@sha256:7e34fc406137419569712ec3c7223ec3195f10cd25c15552571998a43f358eb6

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
