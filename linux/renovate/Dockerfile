FROM renovate/renovate:24.74.0-slim@sha256:d17445e6f3b3966def0cd2d9d457f1b04429f7f3894d4d5f9e90643639bb6959

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000