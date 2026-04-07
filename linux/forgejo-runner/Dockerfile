FROM code.forgejo.org/forgejo/runner:12.8.2@sha256:afeaf4c2bd52d9cc2c42090ce559c1f4b7061ded7afd7023c089a5b3b7109025

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
