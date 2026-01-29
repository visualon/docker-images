FROM codeberg.org/forgejo-experimental/forgejo:14.0.2-rootless@sha256:5552c9e25f353760420b8ac7a7f0f0a788ff571bbfd8e2c1e93503d3e2e1b87a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
