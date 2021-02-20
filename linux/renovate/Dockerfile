FROM renovate/renovate:24.57.0-slim@sha256:e14449f8d1efe4766a3989423e7d339662ccf6d93f20fd6f5c11ad29e16fd247

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000