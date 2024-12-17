FROM code.forgejo.org/forgejo/runner:5.0.4@sha256:21a408ab5f5a5bda9f664cf249893efe42d8b36f16fdc7d2a5db50e6ac4c7620

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner" \
    org.opencontainers.image.source="https://code.forgejo.org/forgejo/runner" \
    org.opencontainers.image.url="https://code.forgejo.org/forgejo/runner"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
