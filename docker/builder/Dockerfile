FROM alpine:3.12.1@sha256:d7342993700f8cd7aba8496c2d0e57be0666e80b4c441925fc6f9361fa81d10e


LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

RUN set -x \
    && apk add --no-cache \
    openssh-client \
    curl \
    ca-certificates \
    dumb-init \
    bash \
    jq \
    skopeo \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh


# renovate: datasource=docker versioning=docker
ENV DOCKER_VERSION=19.03.13

RUN set -x \
    && DOCKER_LINUX_URL=https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz \
    && curl -sL $DOCKER_LINUX_URL -o docker.tgz \
    && tar -xzvf docker.tgz --strip 1 -C /usr/local/bin docker/docker \
    && rm docker.tgz \
    && docker --version

# renovate: datasource=github-releases depName=docker/buildx
ENV BUILDX_VERSION=v0.4.2

RUN set -x \
    && mkdir -p $HOME/.docker/cli-plugins \
    && BUILDX_DISTRO=linux-amd64 \
    && BUILDX_URL=https://github.com/docker/buildx/releases/download/${BUILDX_VERSION}/buildx-${BUILDX_VERSION}.${BUILDX_DISTRO} \
    && TARGET=$HOME/.docker/cli-plugins/docker-buildx \
    && curl -sL ${BUILDX_URL} -o $TARGET \
    && chmod +x $TARGET

# renovate: datasource=github-releases depName=kubernetes/kubernetes
ENV KUBECTL_VERSION=v1.19.4

RUN set -x \
    && KUBECTL_LINUX_URL=https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && curl -sL $KUBECTL_LINUX_URL -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && kubectl version --client=true


# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
ENV KUSTOMIZE_VERSION=v3.8.7

RUN set -x \
    && KUSTOMIZE_LINUX_URL=https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz \
    && curl -sL $KUSTOMIZE_LINUX_URL -o kustomize.tgz \
    && tar -C /usr/local/bin -xzf kustomize.tgz \
    && rm kustomize.tgz \
    && kustomize version

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
