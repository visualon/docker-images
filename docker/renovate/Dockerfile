FROM renovate/renovate:24.22.2-slim@sha256:659c07aecb92c1d3d9d2313e4ffb3e9330f5217ece3dcfc90cf28e0c3ba43d40

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000