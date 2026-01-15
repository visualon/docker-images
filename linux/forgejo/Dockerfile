FROM codeberg.org/forgejo-experimental/forgejo:14.0.0-rootless@sha256:1a56fc4eeebb2908e422d5447c07fa9c5fd099ab68edf9907723ef3a4546e01c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
