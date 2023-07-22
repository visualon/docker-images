FROM gitea/gitea:1.20.1-rootless@sha256:164ed10d48324891a9d2ead090c33ecd5f64016cec50f45f27085171b4248526

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="gitea" \
    org.opencontainers.image.source="https://github.com/go-gitea/gitea" \
    org.opencontainers.image.url="https://github.com/go-gitea/gitea"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
