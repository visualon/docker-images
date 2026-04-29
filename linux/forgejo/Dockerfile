FROM codeberg.org/forgejo-experimental/forgejo:15.0.1-rootless@sha256:4f4d168b4e792d0f73e5f4da0548f3b54b9c9d03fb85f277c97eb985cb9a290a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
