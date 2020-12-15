FROM renovate/renovate:24.2.7-slim@sha256:369d443a1f2194cc4757704d23285f41e74fbd5d6fbdd95e9bb2360f33b1b1a0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000