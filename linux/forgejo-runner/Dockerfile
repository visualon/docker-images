FROM code.forgejo.org/forgejo/runner:11.1.1@sha256:e435bb347f07ae0d1ed580afd993105e2470af83b3e9af3495ac6dcce7972f28

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
