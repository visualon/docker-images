FROM code.forgejo.org/forgejo/runner:13.1.0@sha256:c4af85fd9f0dd03788676a534781a87c71aa2c6a37737143e017eb94d4312952

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
