FROM code.forgejo.org/forgejo/forgejo:9.0.2-rootless@sha256:52e7a379761680dcb505cf4db21b6cf0e02c2b0fc53065de105074f1f8d143fb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
