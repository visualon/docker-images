FROM renovate/renovate:24.49.2-slim@sha256:5b02890c04b544a46e5cfe0998dfe979ec4867f5e5de6d27a7e65dcaa86e2abf

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000