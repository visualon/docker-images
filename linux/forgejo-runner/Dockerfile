FROM code.forgejo.org/forgejo/runner:12.10.2@sha256:379b324d6942824b7487706c0a06be4d63e546c17b62bece4ae18c74364a8fae

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
