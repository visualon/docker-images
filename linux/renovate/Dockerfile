FROM renovate/renovate:24.49.7-slim@sha256:b58a49652a83738d3debb5900e3a79003ee314a18ecda64c1e9e56d5e124da7f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000