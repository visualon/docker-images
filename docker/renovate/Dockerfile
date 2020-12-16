FROM renovate/renovate:24.5.2-slim@sha256:d4c292c589fda3257877f6ef06ec0d46459398842d51bbfd439d9e105af8b2d3

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000