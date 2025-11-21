FROM codeberg.org/forgejo-experimental/forgejo:13.0.3-rootless@sha256:d47936012f3bd7beca375af625d8c65580f9b781fde63893579a258d5c18f966

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
