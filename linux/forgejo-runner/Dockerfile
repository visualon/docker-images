FROM code.forgejo.org/forgejo/runner:12.13.2@sha256:eb6e7bc21973382d261e6eb883dbd27b8cb56939d33a3bfd79a1352b7f9a33a0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
