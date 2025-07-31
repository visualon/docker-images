FROM code.forgejo.org/forgejo/runner:9.0.0@sha256:7e45b1d978fe4213148ac5316d0cf4acbfa0febfb7ba051bdaef954213b3e976

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
