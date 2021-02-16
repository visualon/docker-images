FROM renovate/renovate:24.52.0-slim@sha256:092180dac3b5b4143f97a75cef45208c44cfcc127c06e69b15039959d4f96937

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000