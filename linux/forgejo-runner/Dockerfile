FROM code.forgejo.org/forgejo/runner:12.10.0@sha256:d708348726d2358236ada4f134c721e7f9925c511d807ff9332a12c68e55a323

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
