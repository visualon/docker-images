FROM renovate/renovate:24.55.1-slim@sha256:740767f05d0786deb6351d2a86a25b4d9597734fc4de260f30a216b84710fc52

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000