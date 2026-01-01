FROM code.forgejo.org/forgejo/runner:12.4.0@sha256:24fae8e5bff99daa96c7c11a44d82091f04551e69072e673660ca5e35798e0f1

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
