FROM renovate/renovate:24.11.6-slim@sha256:235fbf5d82a2df9b1775f08b5fb140189f1bd8256eb7764991fb061c523c8d65

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000