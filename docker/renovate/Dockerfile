FROM renovate/renovate:24.14.0-slim@sha256:158ea18b2a44d54a3367704952181dae01fb400e36b0139f5b697c49dc3f6731

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000