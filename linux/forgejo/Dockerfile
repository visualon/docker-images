FROM codeberg.org/forgejo-experimental/forgejo:16.0.6-rootless@sha256:51b47921660e1ec7127f094208fe06901ba57df4fe6d59fcccc3a2419514a77f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
