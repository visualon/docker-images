FROM renovate/renovate:24.21.0-slim@sha256:b8c91e645e34c0da26ebe461245bff6f228d7cdc9853c7228d4e59c6d266060e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000