FROM code.forgejo.org/forgejo/runner:12.13.0@sha256:d85b420efea6f0137fe03f285b05df73e0c34cfbfc2c6a96d22cc52f38106d8c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
