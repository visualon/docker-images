FROM ghcr.io/visualon/buildpack:2.4.36@sha256:45e4456ac33d15694522d9eebf90fe9cf5c098995e6f46a09166b123f4a14f4a

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
RUN install-tool docker v20.10.21

COPY src/ /

# fix permissions after copy
RUN chown -R ${USER_ID} /home/${USER_NAME}/{,.ssh}; chmod g+w /usr/local/bin

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose v2.12.2

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
RUN install-tool terraform 1.3.4

# renovate: datasource=github-releases lookupName=actions/runner
RUN install-tool actions-runner v2.299.1

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

WORKDIR /actions-runner

# set the entrypoint to the start.sh script
CMD ["start-runner.sh"]

ENV GITHUB_ACCESS_TOKEN=
ENV GITHUB_REPO=
ENV RUNNER_LABELS=
ENV RUNNER_NAME=

USER 1000
