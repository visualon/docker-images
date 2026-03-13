FROM code.forgejo.org/forgejo/runner:12.7.2@sha256:5be962a66390e54f0e56c89aafee48f521538d996df7c4e61af77915a4c2bd86

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
