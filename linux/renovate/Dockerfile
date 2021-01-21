FROM renovate/renovate:24.27.1-slim@sha256:0a4a07a935ed5cd30ad824cc13348a4ce4f48d1b033e20ea98ec1c12204bbd27

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000