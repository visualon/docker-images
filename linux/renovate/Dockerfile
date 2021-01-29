FROM renovate/renovate:24.29.1-slim@sha256:203d88eb7310be51724b745c629ebd1ccb0958db4961daa6538317ecad8b0a3e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000