FROM renovate/renovate:24.54.0-slim@sha256:6a6dc371881579f6628018737c773ae21b6528048d7442b1fb907f2602b1b1ec

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000