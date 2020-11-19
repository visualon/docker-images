FROM alpine:3.12.1@sha256:d7342993700f8cd7aba8496c2d0e57be0666e80b4c441925fc6f9361fa81d10e


LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/kubernetes-sigs/kustomize" \
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


# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
ENV KUSTOMIZE_VERSION=v3.8.7

RUN set -x \
    && KUSTOMIZE_LINUX_URL=https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz \
    && curl -sL $KUSTOMIZE_LINUX_URL -o /tmp/kustomize.tgz \
    && tar -C /usr/local/bin -xzf /tmp/kustomize.tgz \
    && kustomize version

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
