FROM code.forgejo.org/forgejo/forgejo:8.0.2-rootless@sha256:e12be1b77969e9b3bd16cf217b51c1bdff4b4555565edca5d4e8648a6335cd4e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
