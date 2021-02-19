FROM renovate/renovate:24.55.0-slim@sha256:87c8298720034dcf6fd2ba6f2a6c9be3876f1b71f908bd5ad2365c3c3cdcc4ca

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000