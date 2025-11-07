FROM code.forgejo.org/forgejo/runner:11.3.1@sha256:287433414b987b89896399683034818db198079053d84ca473aadb06ebad8b9f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
