FROM renovate/renovate:24.32.2-slim@sha256:3d625e3a7a1ef11c18ff2e06b9f54f789808ba95992a49e1d5db0c6c7bea0bbe

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000