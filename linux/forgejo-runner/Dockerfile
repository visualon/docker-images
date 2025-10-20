FROM code.forgejo.org/forgejo/runner:11.2.0@sha256:85709f74716b64bf46f753676cec5299dd15010a4517fe4efdb2f84d31f4bbdd

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
