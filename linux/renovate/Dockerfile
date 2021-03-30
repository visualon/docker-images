FROM renovate/renovate:24.97.3-slim@sha256:762ed7fb15a01e0aa7d2b45c9a2f6695645a473387e9b278ddb7a97f5a2ac630

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000