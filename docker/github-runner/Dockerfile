FROM renovate/buildpack:2-focal@sha256:f48b35f84292254b3988a8f7af9517944aeca8db7e3e11071f9266a2008b5ec4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
  org.opencontainers.image.url="https://github.com/VisualOn/docker-images"



# install python and the packages the your code depends on along with jq so we can parse JSON
# add additional packages as necessary
RUN install-apt \
  curl \
  jq \
  libc6 \
  libgcc1 \
  libgssapi-krb5-2 \
  libicu66 \
  libssl1.1 \
  libstdc++6 \
  zlib1g \
  ;

# renovate: datasource=docker versioning=docker
RUN install-tool docker 19.03.13

COPY src/ /usr/local/
RUN sed -i 's+TOOLNAME=${1}+TOOLNAME=${1//-/_}+' /usr/local/bin/install-tool

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.27.4

COPY --from=hashicorp/terraform:0.14.2@sha256:fb74c7a3a4b21e1a4044174413872e4225dfe85c287174c00b4a6bc66382d5fe /bin/terraform   /usr/local/bin/terraform
RUN set -x \
    && terraform version

# renovate: datasource=github-releases lookupName=actions/runner
RUN install-tool actions-runner 2.274.2

WORKDIR /home/ubuntu/actions-runner

# set the entrypoint to the start.sh script
CMD ["start-runner.sh"]

ENV GITHUB_ACCESS_TOKEN=
ENV GITHUB_REPO=
ENV RUNNER_LABELS=
ENV RUNNER_NAME=

USER 1000
