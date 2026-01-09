FROM code.forgejo.org/forgejo/runner:12.5.0@sha256:d1fa548c336febeb314afb06da8564e06b66b9514ccd06177cce997830233f31

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
