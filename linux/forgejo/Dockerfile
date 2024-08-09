FROM code.forgejo.org/forgejo/forgejo:8.0.1-rootless@sha256:4c92fde89807b1ccb879ecc5e23bbd2d71b790b6380832a3cbd2b839fdac9250

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
