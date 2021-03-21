FROM renovate/renovate:24.91.2-slim@sha256:9b505f6ea44b694d344d5dac151360c6cc4dab9b1cdb2808975fa3877d3ece05

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000