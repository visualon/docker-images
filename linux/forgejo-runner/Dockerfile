FROM code.forgejo.org/forgejo/runner:12.1.0@sha256:2658c9e2f81df2786e5c99141a820b98e80baf821070928b8fd694306d812b05

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
