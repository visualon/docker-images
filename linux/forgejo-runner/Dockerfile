FROM code.forgejo.org/forgejo/runner:8.0.1@sha256:ad993b4f89b70b4205942835c00bf90c4535d56660ad5aff717cc9a91939b65b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner" \
    org.opencontainers.image.source="https://code.forgejo.org/forgejo/runner" \
    org.opencontainers.image.url="https://code.forgejo.org/forgejo/runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
