FROM alpine:3.12.3@sha256:074d3636ebda6dd446d0d00304c4454f468237fdacf08fb0eeac90bdbfa1bac7


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
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh


# renovate: datasource=docker versioning=docker
ENV DOCKER_VERSION=19.03.13

RUN set -x \
    && DISTRO=linux/static/stable/x86_64 \
    && URL=https://download.docker.com/${DISTRO}/docker-${DOCKER_VERSION}.tgz \
    && curl -sL $URL -o docker.tgz \
    && tar -xzvf docker.tgz --strip 1 -C /usr/local/bin docker/docker \
    && rm docker.tgz \
    && docker --version


COPY --from=docker/compose:alpine-1.27.4@sha256:4479af5256e02c3e7710051706a7abbcd39b0b31b0e306b2c18a0cbc88aee705 /usr/local/bin/docker-compose   /usr/local/bin/docker-compose
RUN set -x \
    && docker-compose version


# renovate: datasource=github-releases depName=docker/buildx
ENV BUILDX_VERSION=0.4.2

RUN set -x \
    && mkdir -p ${HOME}/.docker/cli-plugins \
    && DISTRO=linux-amd64 \
    && URL=https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.${DISTRO} \
    && TARGET=${HOME}/.docker/cli-plugins/docker-buildx \
    && curl -sL ${URL} -o ${TARGET} \
    && chmod +x ${TARGET} \
    && docker buildx version


# renovate: datasource=github-releases depName=kubernetes/kubernetes
ENV KUBECTL_VERSION=1.20.0

RUN set -x \
    && DISTRO=linux/amd64 \
    && URL=https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/${DISTRO}/kubectl \
    && TARGET=/usr/local/bin/kubectl \
    && curl -sL ${URL} -o ${TARGET} \
    && chmod +x ${TARGET} \
    && kubectl version --client=true


# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
ENV KUSTOMIZE_VERSION=3.8.8

RUN set -x \
    && DISTRO=linux_amd64 \
    && URL=https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_${DISTRO}.tar.gz \
    && curl -sL ${URL} -o kustomize.tgz \
    && tar -C /usr/local/bin -xzf kustomize.tgz \
    && rm kustomize.tgz \
    && kustomize version

COPY --from=hashicorp/terraform:0.14.3@sha256:7b1e232f564132b949b812ee138249b5398bedf3c6fab42b468d4ec8acf5343c /bin/terraform   /usr/local/bin/terraform
RUN set -x \
    && terraform version

SHELL [ "/bin/bash" ]
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD [ "bash" ]