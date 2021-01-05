FROM renovate/renovate:24.11.4-slim@sha256:8525657c0bff3d020bae246c613e5ce484a35cfd331fd2adc9aea95d2cb62cce

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000