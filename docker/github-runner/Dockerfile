FROM renovate/buildpack:2-focal

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
  org.opencontainers.image.url="https://github.com/VisualOn/docker-images"



# install python and the packages the your code depends on along with jq so we can parse JSON
# add additional packages as necessary
RUN install-apt -y \
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
ENV DOCKER_VERSION=19.03.13

RUN set -x \
    && DISTRO=linux/static/stable/x86_64 \
    && URL=https://download.docker.com/${DISTRO}/docker-${DOCKER_VERSION}.tgz \
    && curl -sL $URL -o docker.tgz \
    && tar -xzvf docker.tgz --strip 1 -C /usr/local/bin docker/docker \
    && rm docker.tgz \
    && docker --version

# renovate: datasource=github-releases depName=docker/compose
ENV DOCKER_COMPOSE_VERSION=19.03.13
RUN set -x \
    && DISTRO=Linux-x86_64 \
    && URL=https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-${DISTRO} \
    && TARGET=/usr/local/bin/docker-compose \
    && curl -sL $URL -o $TARGET \
    && tar -xzvf docker.tgz --strip 1 -C /usr/local/bin docker/docker \
    && chmod +x ${TARGET} \
    && docker-compose version

COPY --from=hashicorp/terraform:0.14.2@sha256:fb74c7a3a4b21e1a4044174413872e4225dfe85c287174c00b4a6bc66382d5fe /bin/terraform   /usr/local/bin/terraform

RUN set -x \
    && terraform version

# add a non-sudo user
RUN useradd -m docker

# set the github runner version
# renovate: datasource=github-releases depName=actions/runner
ARG RUNNER_VERSION="2.274.2"

# cd into the user directory, download and unzip the github actions runner
RUN cd /home/docker && mkdir actions-runner && cd actions-runner \
  && curl -O -L https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz \
  && tar xzf ./actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz

# install some additional dependencies
RUN chown -R docker ~docker && /home/docker/actions-runner/bin/installdependencies.sh

# copy over the start.sh script
COPY start.sh /start.sh

# make the script executable
RUN chmod +x /start.sh

# since the config and run script for actions are not allowed to be run by root,
# set the user to "docker" so all subsequent commands are run as the docker user
USER docker

# set the entrypoint to the start.sh script
CMD ["/start.sh"]
