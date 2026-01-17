FROM code.forgejo.org/forgejo/runner:12.5.3@sha256:f81b095e785a9b09f7765b24382ec11fd884ceffc058b5eeecd111703a118bc0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
