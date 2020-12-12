FROM renovate/renovate:24.0.3-slim@sha256:b9c38dc57f60a4820fc4b44121b22380ca65a71b70493de59cd26c2abb327f4d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000