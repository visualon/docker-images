FROM code.forgejo.org/forgejo/runner:12.5.2@sha256:6617b2c22b3369b18bc2017f97c28026e87e8a5217058e9c08d1ae4091b3a357

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
