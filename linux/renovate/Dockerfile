FROM renovate/renovate:24.28.1-slim@sha256:c0bc33a1970887d622669231efc5bc71f8b56352e8e4cf1d8120d6a489cf5ec5

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000