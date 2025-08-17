FROM code.forgejo.org/forgejo/runner:9.1.0@sha256:36acfdfd386c0eda3b4abecbcc9449fc47dcaef45d5930d8db2b11ddb7cd0b67

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
