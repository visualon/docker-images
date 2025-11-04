FROM code.forgejo.org/forgejo/runner:11.3.0@sha256:0ecefa4fcea33ab6bbf348a285530dd4aa842f218ef3cd090b6e5f2d66299ebc

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
