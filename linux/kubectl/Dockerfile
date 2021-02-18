FROM alpine:3.13.2@sha256:a75afd8b57e7f34e4dad8d65e2c7ba2e1975c795ce1ee22fa34f8cf46f96a3be


LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/kubernetes/kubernetes" \
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

RUN set -x \
    && apk add --no-cache \
        openssh-client \
        curl \
        ca-certificates \
        dumb-init \
        bash \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh

# renovate: datasource=github-tags depName=kubernetes/kubectl
ENV KUBECTL_VERSION=1.20.1

RUN set -x \
    && KUBECTL_LINUX_URL=https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && curl -sL $KUBECTL_LINUX_URL -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && kubectl version --client=true

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
