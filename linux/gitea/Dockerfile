FROM gitea/gitea:1.18.0-rootless@sha256:5f3e0863c13990fe32676d1acaa1fc85ed27c1c5360d81d742266794796f6e56

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="gitea" \
    org.opencontainers.image.source="https://github.com/go-gitea/gitea" \
    org.opencontainers.image.url="https://github.com/go-gitea/gitea"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
