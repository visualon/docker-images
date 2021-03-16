FROM renovate/renovate:24.87.0-slim@sha256:b8b5da53ac8620ab4a391c30ce4b5313cb09c4dba8c42bfaebf1e56f10a8ab40

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000