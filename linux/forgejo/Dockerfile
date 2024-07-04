FROM code.forgejo.org/forgejo/forgejo:7.0.5-rootless@sha256:dcb1a67b14ed3bfd84d53b9a64676debb3589914636400cb20b01c73cd2a8a93

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
