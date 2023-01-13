FROM ghcr.io/visualon/buildpack:3.0.24@sha256:20b77a02a0bbb504e2d9a33473b9e6c1eac59ad3108c12001384bea43a2ea7bc

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

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker v20.10.22

COPY src/ /

# fix permissions after copy
RUN set -ex; \
  mkdir /home/${USER_NAME}/.ssh; \
  chown ${USER_ID} /home/${USER_NAME}/.ssh; \
  chmod g+w /usr/local/bin

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose v2.15.1

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
RUN install-tool terraform 1.3.7

# renovate: datasource=github-releases lookupName=actions/runner
RUN install-tool actions-runner v2.300.2

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

WORKDIR /actions-runner

# set the entrypoint to the start.sh script
CMD ["start-runner.sh"]

ENV GITHUB_ACCESS_TOKEN=
ENV GITHUB_REPO=
ENV RUNNER_LABELS=
ENV RUNNER_NAME=
ENV RUNNER_GROUP=

USER 1000
