FROM renovate/renovate:24.106.0-slim@sha256:2d78112a2d51cb1ad1dd0d96bb8e6f4bdca2ed4be3d3192abac41930cd70b865

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000