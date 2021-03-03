FROM renovate/renovate:24.71.5-slim@sha256:5771103cb6427b5494c1b434f9841e81332eee8f9fc479af6eef2061c5ad1e66

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000