FROM renovate/renovate:24.12.3-slim@sha256:6ec3adc9e7f568ba2af4b3b0ac8fe7d5be38dc124cef48da55503f6ded45bf83

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000