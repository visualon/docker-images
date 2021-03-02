FROM renovate/renovate:24.71.2-slim@sha256:1bfe3d1d8bbbd82f51c8440d6d638f37469d5e3e0f0c14e3833d36271b5e445a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000