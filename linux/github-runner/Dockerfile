FROM ghcr.io/visualon/buildpack:5.1.0@sha256:20d75da62a5a4fb7feab52367ff41994f6962843c4a373af964023132a49aa2c

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
RUN install-tool docker v26.0.0

COPY src/ /

# fix permissions after copy
RUN set -ex; \
  mkdir /home/${USER_NAME}/.ssh; \
  chown ${USER_ID} /home/${USER_NAME}/.ssh; \
  chmod g+w /usr/local/bin

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.26.0

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
RUN install-tool terraform 1.7.5

# renovate: datasource=github-releases packageName=actions/runner
RUN install-tool actions-runner v2.315.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.29.3

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.2.3

# renovate: datasource=github-releases depName=sops packageName=getsops/sops
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
