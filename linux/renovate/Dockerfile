FROM renovate/renovate:24.33.0-slim@sha256:cfd4c8b1a8d1706813b9af5007e942d6b6447581012d1c869ca0786697ef1852

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000