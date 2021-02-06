FROM renovate/renovate:24.42.0-slim@sha256:7954ee178ddc1090bd5ea1617a2a7e486dae6a3d488aa447847d451fbbe8b17e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000