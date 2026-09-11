FROM codeberg.org/forgejo-experimental/forgejo:16.0.4-rootless@sha256:a263a1298e89e0bdf019005ce1927e9aadaa8f1bd2a94a3e66ad94e2a89e19ce

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
