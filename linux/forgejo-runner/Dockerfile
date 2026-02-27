FROM code.forgejo.org/forgejo/runner:12.7.1@sha256:5699199f389299e529867e88deec61d5619987d088cc9e120e2145d4afda8b3e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
