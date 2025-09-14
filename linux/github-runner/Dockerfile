FROM ghcr.io/visualon/buildpack:9.0.72@sha256:b1b4992a0a8d4a111fc019541dcb33f62bcae6fc016cfc90ca0d59857ccf1dbc

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
RUN install-tool docker v28.4.0

COPY src/ /

# fix permissions after copy
RUN set -ex; \
  mkdir /home/${USER_NAME}/.ssh; \
  chown ${USER_ID} /home/${USER_NAME}/.ssh; \
  true

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.39.3

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
RUN install-tool terraform 1.13.2

# renovate: datasource=github-releases packageName=actions/runner
RUN install-tool actions-runner v2.328.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.34.1

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.6.4

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
