FROM renovate/renovate:24.15.1-slim@sha256:04627fe4fa304571039d09a82758fd93752c6b8f8ce874aee031e499c2e8b7af

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000