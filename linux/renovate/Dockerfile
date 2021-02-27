FROM renovate/renovate:24.66.3-slim@sha256:10d3e681b5f8a2a75ecea958369ee29e8e0c67c420f68971d8ec5504606a8e9a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000