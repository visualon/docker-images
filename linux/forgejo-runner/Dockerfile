FROM code.forgejo.org/forgejo/runner:3.3.0@sha256:428bb16ba87ed690e3db92b1f2a2f2208c0eff9b1ce28142a2aa059ca57ba40e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner" \
    org.opencontainers.image.source="https://code.forgejo.org/forgejo/runner" \
    org.opencontainers.image.url="https://code.forgejo.org/forgejo/runner"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
