FROM renovate/renovate:24.97.1-slim@sha256:c821e3af651992c6988de68daa72c34f9d7e709b306e7b6deb83553cb731a0e7

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000