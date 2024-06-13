FROM code.forgejo.org/forgejo/forgejo:7.0.4-rootless@sha256:7179bdb31b3691f38f3fd52395963cfd7ef31a353d1df2fe73a2117c79b15173

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
