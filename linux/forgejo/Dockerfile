FROM codeberg.org/forgejo-experimental/forgejo:11.0.0-rootless@sha256:cb08d7d68b208fd88d6d7cc55f782da98446ee4a302dfaea239f4701a42ba68d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
