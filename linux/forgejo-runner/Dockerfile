FROM code.forgejo.org/forgejo/runner:9.0.3@sha256:9ae7e65c14e7d49549432cbbbb2ed95e5e04ede234feb28bfd70a2dc04385263

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
