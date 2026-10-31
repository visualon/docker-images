FROM code.forgejo.org/forgejo/runner:13.2.1@sha256:568cea8c15ddc01fc8f330124892f572af7db37fa28344a2c1914405793bf61d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
