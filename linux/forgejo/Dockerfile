FROM code.forgejo.org/forgejo/forgejo:8.0.0-rootless@sha256:474c9ca0635f1f5a806dd360d0308a88faf3e386f79659cc58a74632e6d29c03

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
