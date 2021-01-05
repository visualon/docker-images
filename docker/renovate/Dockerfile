FROM renovate/renovate:24.11.4-slim@sha256:2cb4a06b951c6a95f551110db79d77e0449824471bea4a72f593a09dc680aeb7

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000