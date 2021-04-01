FROM renovate/renovate:24.98.4-slim@sha256:59b265ace721e10926c99743056c8745011985c8a787068afdb27496c3579c94

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000