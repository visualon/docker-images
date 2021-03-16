FROM renovate/renovate:24.87.1-slim@sha256:6826390fc98034ab46ce61e1f095a452d425092258ef2b4da238b116467287d9

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000