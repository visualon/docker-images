FROM renovate/renovate:24.64.3-slim@sha256:37c8a0cbbe6c3d89c8a7b8c8577867af63d187d96fe7a6fcbe33aec8901087bb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000