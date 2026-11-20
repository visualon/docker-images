FROM code.forgejo.org/forgejo/runner:13.2.2@sha256:a8543a45fe62bebef0534d5c223cf485d3294e6dd2e42a82dbcbfd40c54a6a22

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
