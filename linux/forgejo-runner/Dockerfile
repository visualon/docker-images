FROM code.forgejo.org/forgejo/runner:12.6.4@sha256:2b65f3ba4345026d66de34dc8eddabb7b0f64c0e14905193ae81746f2728caa0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
