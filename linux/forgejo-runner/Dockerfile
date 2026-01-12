FROM code.forgejo.org/forgejo/runner:12.5.1@sha256:88830fccef884ac8af5f858122f4e057ebd2bd4f01079824fa8dbcf62a38290a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
