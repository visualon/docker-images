FROM ghcr.io/visualon/buildpack:8.1.3@sha256:f97e0ae6dc11a060390ddf7d1352e232f7532a70736b914be4d8add0e0309bd5

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
RUN install-tool docker v27.4.1

COPY src/ /

# fix permissions after copy
RUN set -ex; \
  mkdir /home/${USER_NAME}/.ssh; \
  chown ${USER_ID} /home/${USER_NAME}/.ssh; \
  true

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.32.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
RUN install-tool terraform 1.10.3

# renovate: datasource=github-releases packageName=actions/runner
RUN install-tool actions-runner v2.321.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.32.0

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.4.0

# renovate: datasource=github-releases packageName=getsops/sops
RUN install-tool sops v3.9.2

WORKDIR /actions-runner

# set the entrypoint to the start.sh script
CMD ["start-runner.sh"]

ENV GITHUB_ACCESS_TOKEN=
ENV GITHUB_REPO=
ENV RUNNER_LABELS=
ENV RUNNER_NAME=
ENV RUNNER_GROUP=

USER 12021
