FROM alpine:3.13.1@sha256:08d6ca16c60fe7490c03d10dc339d9fd8ea67c6466dea8d558526b1330a85930


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
