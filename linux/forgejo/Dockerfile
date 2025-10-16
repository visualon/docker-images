FROM codeberg.org/forgejo-experimental/forgejo:13.0.0-rootless@sha256:c4dc04d0dfbb21701a045900a1d177047ebb8fb0f0ee75f2be9233616a3160ae

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
