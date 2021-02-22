FROM renovate/renovate:24.60.5-slim@sha256:f57e1f4c600550e7f2ad9a17e497e5121ff3db5ed0e1abe7b36bebec3cc262b8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000