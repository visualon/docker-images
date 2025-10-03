FROM code.forgejo.org/forgejo/runner:11.1.2@sha256:b39a6d5cea3f2a70ceca16c026789d566e11795ff112e699df6af7c12386df0e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
