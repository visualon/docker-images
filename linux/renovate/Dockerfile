FROM renovate/renovate:24.89.3-slim@sha256:b0beeec79a52ad4d6787b21b2b90e92055f36d655e90abfba1dc48426418a3ef

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000