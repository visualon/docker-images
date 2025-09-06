FROM codeberg.org/forgejo-experimental/forgejo:12.0.3-rootless@sha256:bfdf541ed2ae0e873aaadc37e897d29b9f40f87d3f9c807c183c380289c26802

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
