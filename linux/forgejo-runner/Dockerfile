FROM code.forgejo.org/forgejo/runner:12.8.0@sha256:c1d8edf7ed81119152ee4d9ff750ba3c2eb250cad0803c5ddea8c36078824c11

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
