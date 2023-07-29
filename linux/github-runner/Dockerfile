FROM ghcr.io/visualon/buildpack:4.1.37@sha256:cdf5a0be52bce5bfc609303d44d54f22ff1d76cff3f8db728aa1354e8f742cdb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/visualon/docker-images" \
  org.opencontainers.image.url="https://github.com/visualon/docker-images"

# install python and the packages the your code depends on along with jq so we can parse JSON
# add additional packages as necessary
RUN install-apt \
  jq \
  libgcc1 \
  libicu66 \
  rsync \
  ;

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v24.0.2

COPY src/ /

# fix permissions after copy
RUN set -ex; \
  mkdir /home/${USER_NAME}/.ssh; \
  chown ${USER_ID} /home/${USER_NAME}/.ssh; \
  chmod g+w /usr/local/bin

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.19.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
RUN install-tool terraform 1.5.4

# renovate: datasource=github-releases packageName=actions/runner
RUN install-tool actions-runner v2.307.1

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.27.4

WORKDIR /actions-runner

# set the entrypoint to the start.sh script
CMD ["start-runner.sh"]

ENV GITHUB_ACCESS_TOKEN=
ENV GITHUB_REPO=
ENV RUNNER_LABELS=
ENV RUNNER_NAME=
ENV RUNNER_GROUP=

USER 1000
