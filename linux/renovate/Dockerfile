FROM renovate/renovate:24.44.2-slim@sha256:2c29077b9b6a677684c7e63de25d56b3deda1e0b10cbcda5a2a1b1cdb8cd4b74

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000