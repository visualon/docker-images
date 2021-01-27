FROM renovate/renovate:24.28.3-slim@sha256:ac8de8ae8653d5b3112e426eb1d95e22a0226999e3a5d3a399906e3b58d0a0b4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000