FROM renovate/renovate:24.79.3-slim@sha256:b9e7d157674cbc9be61cb399e6a76238c8effc5de0ae96ee61d1fa4f7cf3f7fd

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000