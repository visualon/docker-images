FROM code.forgejo.org/forgejo/runner:12.6.2@sha256:befa09f0b86f3faf06fe6a90edceb749ebcef40b39032a30b7529fb3ff394ed0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
