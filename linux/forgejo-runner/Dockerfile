FROM code.forgejo.org/forgejo/runner:12.1.2@sha256:b7fae149ae1964e126d69e3fd83b472edc0a30d35ffa208c877f20c4a20d38c8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
