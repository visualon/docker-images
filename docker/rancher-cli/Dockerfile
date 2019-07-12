FROM rancher/cli:v0.6.13@sha256:bebabb1c137117ba708598c3e1babea9667bb58090ba35d65d52af3785847124

FROM alpine:3.10.1@sha256:6a92cd1fcdc8d8cdec60f33dda4db2cb1fcdcacf3410a8e05b3741f44a9b5998

ENV CATTLE_RANCHER_CLI_VERSION v0.6.13

ENV DEFAULT_CATTLE_RANCHER_CLI_LINUX_URL https://releases.rancher.com/cli/${CATTLE_RANCHER_CLI_VERSION}/rancher-linux-amd64-${CATTLE_RANCHER_CLI_VERSION}.tar.gz

RUN set -x \
    && apk add --no-cache \
        openssh-client \
        curl \
        ca-certificates \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh \
    && curl -sL $DEFAULT_CATTLE_RANCHER_CLI_LINUX_URL | tar xvzf - -C /usr/bin/ --strip-components=2 \
    && rancher --version


COPY VisualOnRoot.pem /usr/local/share/ca-certificates/

RUN update-ca-certificates 2>/dev/null || true
