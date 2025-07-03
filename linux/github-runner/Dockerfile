FROM ghcr.io/visualon/buildpack:9.0.35@sha256:8b1bc9bce32c3b566e3c0a8c1291bf2de73487ea033fad9e4905055a0c3ab79d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/visualon/docker-images" \
  org.opencontainers.image.url="https://github.com/visualon/docker-images"

# install python and the packages the your code depends on along with jq so we can parse JSON
# add additional packages as necessary
RUN install-apt \
  jq \
  rsync \
  ;

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v28.3.1

COPY src/ /

# fix permissions after copy
RUN set -ex; \
  mkdir /home/${USER_NAME}/.ssh; \
  chown ${USER_ID} /home/${USER_NAME}/.ssh; \
  true

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.38.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
RUN install-tool terraform 1.12.2

# renovate: datasource=github-releases packageName=actions/runner
RUN install-tool actions-runner v2.325.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.33.2

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.6.3

# renovate: datasource=github-releases packageName=getsops/sops
RUN install-tool sops v3.10.2

WORKDIR /actions-runner

# set the entrypoint to the start.sh script
CMD ["start-runner.sh"]

ENV GITHUB_ACCESS_TOKEN=
ENV GITHUB_REPO=
ENV RUNNER_LABELS=
ENV RUNNER_NAME=
ENV RUNNER_GROUP=

USER 12021
