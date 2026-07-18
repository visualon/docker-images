FROM code.forgejo.org/forgejo/runner:12.13.1@sha256:e070b166b921f12a2abef432cf6108e63519d0183722c2a14ecbb8d0b0621652

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
