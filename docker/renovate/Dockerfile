FROM renovate/renovate:24.0.1-slim@sha256:e4c6b9511f0f55cf4970e046d2840e51b78646ce5ebe7475d106ea08a3c34813

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000