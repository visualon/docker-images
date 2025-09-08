FROM code.forgejo.org/forgejo/runner:11.0.0@sha256:6e1cb83e64476a015c1182c39d5f9c0a5a62b22b826104a1b5ada5971246a6af

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
