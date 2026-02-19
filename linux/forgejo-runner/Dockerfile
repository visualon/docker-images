FROM code.forgejo.org/forgejo/runner:12.7.0@sha256:8d12845540f005ce12cd25bb3cc229b9eded4c30778a1e9a2e4918ba668489a8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
