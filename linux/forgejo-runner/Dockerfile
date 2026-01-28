FROM code.forgejo.org/forgejo/runner:12.6.3@sha256:a17c8c46fd69a30024620bf934ab0b791d0f364f02b10771ba2befdeb3c3dea0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
