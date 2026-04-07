FROM code.forgejo.org/forgejo/runner:12.8.1@sha256:6bb40b2b8809bcfb8c1cf3866a39b79c6a275aab56092598860d519a5c4085b6

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
