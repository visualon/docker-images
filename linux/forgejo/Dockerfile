FROM codeberg.org/forgejo-experimental/forgejo:15.0.5-rootless@sha256:c040958a31ef83643cc2f615150eda5992fb682d06084dc99b2211c9d357fc7e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
