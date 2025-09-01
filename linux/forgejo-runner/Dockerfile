FROM code.forgejo.org/forgejo/runner:10.0.1@sha256:78b5c645b3c37e68f55e64760245a945f1b43d6d73bf9010bbf744a2fd4460bb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
