FROM renovate/renovate:24.81.0-slim@sha256:97572d7261e7ab584885d62611c87c842c98d469e1b6c74a8819e2cb3aec46ee

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000