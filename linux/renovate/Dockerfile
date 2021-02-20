FROM renovate/renovate:24.58.0-slim@sha256:ceec92f16fc65b1d5b33cf6881f23a201e401b67214a12cb6857781b10da24a4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000