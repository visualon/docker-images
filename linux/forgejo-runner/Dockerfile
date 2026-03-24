FROM code.forgejo.org/forgejo/runner:12.7.3@sha256:48b0539854bfc769fbf629725e089e35cfa1227ddedc7e45436b83bb9502ae27

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
