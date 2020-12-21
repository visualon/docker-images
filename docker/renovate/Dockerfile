FROM renovate/renovate:24.10.1-slim@sha256:8b24f23cb948ff07375720d9d037e7b92d079519edfd0232af51b3e7bf62ce6d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000