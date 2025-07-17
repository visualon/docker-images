FROM codeberg.org/forgejo-experimental/forgejo:12.0.0-rootless@sha256:e264d4da0ea025e560de49c5b83f145e997e4b7e024b7a442be7fd275b1ed758

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
