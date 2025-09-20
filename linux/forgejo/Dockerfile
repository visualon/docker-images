FROM codeberg.org/forgejo-experimental/forgejo:12.0.4-rootless@sha256:ee7f9392f5ea0b12466269a51116f83a923baea0ec86989d6feb5857f9591a33

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
