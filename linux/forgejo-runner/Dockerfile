FROM code.forgejo.org/forgejo/runner:4.0.1@sha256:f1bd3f3a699a8ec248612a52efcea492ecef42c6e201f58b27e5d5cea1725261

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner" \
    org.opencontainers.image.source="https://code.forgejo.org/forgejo/runner" \
    org.opencontainers.image.url="https://code.forgejo.org/forgejo/runner"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
