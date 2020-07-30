FROM alpine:3.12.0@sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65


LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/kubernetes/kubernetes" \
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

# renovate: datasource=github-releases depName=kubernetes/kubernetes
ENV KUBECTL_CLI_VERSION=v1.18.6

ENV KUBECTL_CLI_LINUX_URL https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_CLI_VERSION}/bin/linux/amd64/kubectl

RUN set -x \
    && apk add --no-cache \
        openssh-client \
        curl \
        ca-certificates \
        dumb-init \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh \
    && curl -sL $KUBECTL_CLI_LINUX_URL -o /usr/local/bin/kubectl \
    && kubectl version --client=true

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
