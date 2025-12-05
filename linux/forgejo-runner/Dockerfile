FROM code.forgejo.org/forgejo/runner:12.1.1@sha256:24e1f1472d252058e8938c769e5b0e62207688cf6a82952b32dbd82046533ce9

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
