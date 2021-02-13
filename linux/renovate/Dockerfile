FROM renovate/renovate:24.49.6-slim@sha256:be2285a2e6bf79cdd3a716cfe6a1fdbbe95725281edbd3b5013acc72dc35c2d3

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000