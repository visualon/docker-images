FROM alpine:3.13.1@sha256:08d6ca16c60fe7490c03d10dc339d9fd8ea67c6466dea8d558526b1330a85930


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
    rsync \
    openssl \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh


# renovate: datasource=github-releases depName=moby/moby versioning=docker
ENV DOCKER_VERSION=20.10.3

RUN set -x \
    && DISTRO=linux/static/stable/x86_64 \
    && URL=https://download.docker.com/${DISTRO}/docker-${DOCKER_VERSION}.tgz \
    && curl -sL $URL -o docker.tgz \
    && tar -xzvf docker.tgz --strip 1 -C /usr/local/bin docker/docker \
    && rm docker.tgz \
    && docker --version


COPY --from=docker/compose:alpine-1.28.2@sha256:4b83c11b3ac83a2e96c90b490d5b269b048671e58989d9fe96369818499c2521 /usr/local/bin/docker-compose   /usr/local/bin/docker-compose
RUN set -x \
    && docker-compose version


# renovate: datasource=github-releases depName=docker/buildx
ENV BUILDX_VERSION=0.5.1

RUN set -x \
    && mkdir -p ${HOME}/.docker/cli-plugins \
    && DISTRO=linux-amd64 \
    && URL=https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.${DISTRO} \
    && TARGET=${HOME}/.docker/cli-plugins/docker-buildx \
    && curl -sL ${URL} -o ${TARGET} \
    && chmod +x ${TARGET} \
    && docker buildx version


# renovate: datasource=github-tags depName=kubernetes/kubectl
ENV KUBECTL_VERSION=1.20.1

RUN set -x \
    && DISTRO=linux/amd64 \
    && URL=https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/${DISTRO}/kubectl \
    && TARGET=/usr/local/bin/kubectl \
    && curl -sL ${URL} -o ${TARGET} \
    && chmod +x ${TARGET} \
    && kubectl version --client=true


# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
ENV KUSTOMIZE_VERSION=3.9.4

RUN set -x \
    && DISTRO=linux_amd64 \
    && URL=https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_${DISTRO}.tar.gz \
    && curl -sL ${URL} -o kustomize.tgz \
    && tar -C /usr/local/bin -xzf kustomize.tgz \
    && rm kustomize.tgz \
    && kustomize version

COPY --from=hashicorp/terraform:0.14.6@sha256:2c56a1e1d8b10f665e9fa49bc477e66b9afdde12659c90463d4b3f6672663a00 /bin/terraform   /usr/local/bin/terraform
RUN set -x \
    && terraform version

SHELL [ "/bin/bash" ]
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD [ "bash" ]
