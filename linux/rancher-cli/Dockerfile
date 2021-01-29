FROM alpine:3.13.1@sha256:08d6ca16c60fe7490c03d10dc339d9fd8ea67c6466dea8d558526b1330a85930


LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/rancher/cli" \
    org.opencontainers.image.url="http://rancher.com"

# renovate: datasource=docker depName=rancher/cli versioning=docker
ENV CATTLE_RANCHER_CLI_VERSION=0.6.14

RUN set -x \
    && apk add --no-cache \
        openssh-client \
        curl \
        ca-certificates \
        dumb-init \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh \
    && DEFAULT_CATTLE_RANCHER_CLI_LINUX_URL=https://releases.rancher.com/cli/v${CATTLE_RANCHER_CLI_VERSION}/rancher-linux-amd64-v${CATTLE_RANCHER_CLI_VERSION}.tar.gz \
    && curl -sL $DEFAULT_CATTLE_RANCHER_CLI_LINUX_URL | tar xvzf - -C /usr/bin/ --strip-components=2 \
    && rancher --version


COPY VisualOnRoot.pem /usr/local/share/ca-certificates/

RUN update-ca-certificates 2>/dev/null || true

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
