FROM code.forgejo.org/forgejo/runner:12.3.1@sha256:eb7035e2d8343bb4cbd242821a39472cf5b128729d69855754b345d5d08a284a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
