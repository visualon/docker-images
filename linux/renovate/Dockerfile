FROM renovate/renovate:24.77.3-slim@sha256:e9f615a2c4fc3f49ca042a656512eb9570d45288b578d22d73d2e889b3eafa27

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000