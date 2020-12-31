FROM renovate/renovate:24.11.2-slim@sha256:2401f64d9c1195180035bcb7e12627d4d5c9822474718c6762821ecc2bcc747e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000