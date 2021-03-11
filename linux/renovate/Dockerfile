FROM renovate/renovate:24.78.4-slim@sha256:cea553e289ba4d3330ae700f6131a22e18547dbbd0b85eba4ff1f57be0387144

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000