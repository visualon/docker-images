FROM renovate/renovate:24.98.0-slim@sha256:6a46f83ff34e2b276ee61d56757efc21477629e19d5b55d4418f9af377d1e3a1

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000