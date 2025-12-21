FROM code.forgejo.org/forgejo/runner:12.3.0@sha256:fc01289e42aa2c0594f643b80ad8075c7106d9a6912a693b50c8b656f34242be

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
