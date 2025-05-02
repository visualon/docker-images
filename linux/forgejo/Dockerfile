FROM codeberg.org/forgejo-experimental/forgejo:11.0.1-rootless@sha256:97b544c9bf4ff13c034a6a8319feffe822ff4f5f73d5bd03dbca3fdeaae0c2ac

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
