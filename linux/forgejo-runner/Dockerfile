FROM code.forgejo.org/forgejo/runner:12.9.0@sha256:2860af6a7fa5521b2cdb26a14545c083ffd06b2528dbfc470cfec39a0b6bde39

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
