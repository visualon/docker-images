FROM renovate/renovate:24.104.0-slim@sha256:b7c62d9a34e24fa15cbf74e51c275faadd6012986fc03e0f36aee1f6252b3304

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000