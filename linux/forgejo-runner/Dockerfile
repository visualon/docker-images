FROM code.forgejo.org/forgejo/runner:5.0.3@sha256:8e6e0e62adba92e08902a95afb50e9b95ce0e0e903dc2e6915bd2c40c5493594

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner" \
    org.opencontainers.image.source="https://code.forgejo.org/forgejo/runner" \
    org.opencontainers.image.url="https://code.forgejo.org/forgejo/runner"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
