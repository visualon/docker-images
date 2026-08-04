FROM code.forgejo.org/forgejo/runner:13.0.0@sha256:7fb853bfe73c229be6349398359c0a7bd01fadfd17c106607b2221150b799ed2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
