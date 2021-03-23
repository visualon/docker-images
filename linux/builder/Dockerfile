FROM renovate/buildpack:4@sha256:f3fe218e40f2326588bd9057e3917eae5cc92fb3ee43b3a7d8c9c006e63ebd3c


LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/visualon/docker-images" \
  org.opencontainers.image.url="https://github.com/visualon/docker-images"

RUN install-apt \
  jq \
  libgcc1 \
  libicu66 \
  rsync \
  && mkdir -p ~/.ssh \
  && chmod 700 ~/.ssh


# renovate: datasource=docker versioning=docker
RUN install-tool docker 20.10.5

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.1.3

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.201

# renovate: datasource=docker versioning=docker
RUN install-tool node 14.16.0

# renovate: datasource=npm versioning=npm
RUN install-tool yarn 1.22.10

COPY src/ /

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.28.5

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags depName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases depName=docker/buildx
#RUN install-tool buildx 0.5.1

# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases depName=containers/skopeo
RUN install-tool skopeo v1.2.2
