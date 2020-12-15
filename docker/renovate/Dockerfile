FROM renovate/renovate:24.4.0-slim@sha256:117e0bc5cfa6aa9ca65d37462029a4005e123848e1afcc4a9ab5c5154911c0a8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000