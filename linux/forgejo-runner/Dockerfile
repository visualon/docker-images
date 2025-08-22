FROM code.forgejo.org/forgejo/runner:9.1.1@sha256:fb38cf65183f935821b930de7bd27c303aa188d297be709c762dae564f838402

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
