FROM code.forgejo.org/forgejo/runner:12.10.1@sha256:3d49075f9115054ae2485d8cea2819296a904dfd4f00017285168028615d8533

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
