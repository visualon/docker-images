FROM codeberg.org/forgejo-experimental/forgejo:17.0.0-rootless@sha256:6554520f7574602100b7d6620c6ac5b18cec30325f823777497eac36234f5cf8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
