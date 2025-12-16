FROM code.forgejo.org/forgejo/runner:12.2.0@sha256:718d177df65d4b43f783ce06fa3d7b77d18f3533c1238fef71ccfa79b5f34cf3

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
