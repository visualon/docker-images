FROM code.forgejo.org/forgejo/runner:4.0.0@sha256:978387b5ea3f37d0a325f6013525f769029144b0cd788d219cb200fd45e80281

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner" \
    org.opencontainers.image.source="https://code.forgejo.org/forgejo/runner" \
    org.opencontainers.image.url="https://code.forgejo.org/forgejo/runner"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
