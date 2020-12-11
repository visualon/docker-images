FROM alpine:3.12.2@sha256:25f5332d060da2c7ea2c8a85d2eac623bd0b5f97d508b165f846c7d172897438


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

# renovate: datasource=github-releases depName=kubernetes/kubernetes
ENV KUBECTL_VERSION=1.20.0

RUN set -x \
    && KUBECTL_LINUX_URL=https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && curl -sL $KUBECTL_LINUX_URL -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && kubectl version --client=true

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
