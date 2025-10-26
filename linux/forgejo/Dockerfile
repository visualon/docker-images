FROM codeberg.org/forgejo-experimental/forgejo:13.0.2-rootless@sha256:a704cc203d78a854e0887e08fcbd7a45f9bc2b5fd8551c88b914b044792c4b1b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
