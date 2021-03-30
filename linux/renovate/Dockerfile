FROM renovate/renovate:24.98.1-slim@sha256:8b5c542ef4b96f70875fdc3f6e1610ecb97c300e0eaca9c172c3dd408d2c29e5

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000