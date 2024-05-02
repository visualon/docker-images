FROM ghcr.io/visualon/buildpack:5.1.17@sha256:8800d44d98e8d808327fb50469aaf24e41487e32bff4d9443c66b17d3889c620

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
RUN install-tool docker v26.1.1

COPY src/ /

# fix permissions after copy
RUN set -ex; \
  mkdir /home/${USER_NAME}/.ssh; \
  chown ${USER_ID} /home/${USER_NAME}/.ssh; \
  chmod g+w /usr/local/bin

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.27.0

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
RUN install-tool terraform 1.8.2

# renovate: datasource=github-releases packageName=actions/runner
RUN install-tool actions-runner v2.316.1

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.30.0

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.2.3

# renovate: datasource=github-releases packageName=getsops/sops
RUN install-tool sops v3.8.1

WORKDIR /actions-runner

# set the entrypoint to the start.sh script
CMD ["start-runner.sh"]

ENV GITHUB_ACCESS_TOKEN=
ENV GITHUB_REPO=
ENV RUNNER_LABELS=
ENV RUNNER_NAME=
ENV RUNNER_GROUP=

USER 1000
