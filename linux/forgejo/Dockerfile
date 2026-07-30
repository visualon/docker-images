FROM codeberg.org/forgejo-experimental/forgejo:16.0.2-rootless@sha256:23ccc146e6dc2cd1f5c5435909baae64db873201717f1726490dae649283e6cd

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
