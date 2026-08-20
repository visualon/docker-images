FROM codeberg.org/forgejo-experimental/forgejo:16.0.3-rootless@sha256:214f4ae63ee78be1e445e58573c88dc7215e72091210852e0df94eaac1a25685

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
