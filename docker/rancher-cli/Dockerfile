FROM rancher/cli:v0.6.14@sha256:575d61644635853463dfa31f91f9232843e300e79e17cdc905b87807d986cbbd

FROM alpine:3.11.5@sha256:cb8a924afdf0229ef7515d9e5b3024e23b3eb03ddbba287f4a19c6ac90b8d221

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
