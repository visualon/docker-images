FROM renovate/renovate:24.39.3-slim@sha256:6dad62f993d0d004e302c7b8d278ee956fa6170c8529e64f9c5f306c68f699f7

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000