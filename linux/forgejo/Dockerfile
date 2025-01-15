FROM codeberg.org/forgejo-experimental/forgejo:10.0.0-rootless@sha256:16b5bad823c1bd85151842c919313a541194208f46c161d67188d78fa9e215ea

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
