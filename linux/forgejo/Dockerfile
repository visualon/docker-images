FROM code.forgejo.org/forgejo/forgejo:8.0.3-rootless@sha256:7d975df8aaf046f7e090789dde18a9af7cad54ad2e35f6d066cb6c8d715e5032

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
