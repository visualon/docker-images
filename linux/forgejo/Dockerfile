FROM codeberg.org/forgejo-experimental/forgejo:13.0.1-rootless@sha256:fe7e2562e1d499dca8b58ba2d91c38f5354b8237eca6a82be32c4cadcb183786

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
