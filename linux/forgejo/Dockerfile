FROM code.forgejo.org/forgejo/forgejo:9.0.0-rootless@sha256:62412f42d99c527046a68139764634802ec3200bbc7d03950fa0dfa7b2c636b2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
