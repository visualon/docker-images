FROM code.forgejo.org/forgejo/runner:9.0.1@sha256:06cce8d13144b02738c4b5aacd441c12d8b2d861770913f93f5383c6eebfbf7f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
