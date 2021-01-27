FROM renovate/renovate:24.29.0-slim@sha256:d50a3ab4eb541a5b1bdaca03b8b632eaf3479df8a04d59bd4a09b9ba53bd672e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000