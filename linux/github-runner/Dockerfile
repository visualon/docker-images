FROM renovate/buildpack:4@sha256:fdeb1049fbce5cf7ff3c340546bab022beddccc6e694309a48f9b6a9c5f1e116

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
  org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

# install python and the packages the your code depends on along with jq so we can parse JSON
# add additional packages as necessary
RUN install-apt \
  jq \
  libgcc1 \
  libicu66 \
  rsync \
  ;

# renovate: datasource=docker versioning=docker
RUN install-tool docker 20.10.3

COPY src/ /

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.28.2

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
RUN install-tool terraform 0.14.7

# renovate: datasource=docker lookupName=rancher/cli versioning=docker
RUN install-tool rancher-cli 0.6.14

# renovate: datasource=github-releases lookupName=actions/runner
RUN install-tool actions-runner 2.277.1


# renovate: datasource=github-tags depName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

WORKDIR /home/ubuntu/actions-runner

# set the entrypoint to the start.sh script
CMD ["start-runner.sh"]

ENV GITHUB_ACCESS_TOKEN=
ENV GITHUB_REPO=
ENV RUNNER_LABELS=
ENV RUNNER_NAME=

USER 1000
