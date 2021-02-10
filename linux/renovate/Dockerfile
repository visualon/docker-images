FROM renovate/renovate:24.44.0-slim@sha256:90b0fd72bee6a1cd60dd1f06a8d8545dc4a814f40d91d0879f880ecbd8ba686b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000