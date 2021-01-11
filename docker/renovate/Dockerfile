FROM renovate/renovate:24.14.1-slim@sha256:36a3676c79ef6a0d0ecccc58e8a8699a76b96f7901a319da0e1d37a3e60b7d73

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000