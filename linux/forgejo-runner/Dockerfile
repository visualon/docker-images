FROM code.forgejo.org/forgejo/runner:6.0.1@sha256:fe7b189b95ea5ce5e72d2776207e6d08ce67b61bfdbfcd06fd767be44930e10f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner" \
    org.opencontainers.image.source="https://code.forgejo.org/forgejo/runner" \
    org.opencontainers.image.url="https://code.forgejo.org/forgejo/runner"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
