FROM renovate/renovate:24.27.3-slim@sha256:78dc1f9a1935893a68617142b5c9979d5866b5babc6af8c89f160b3b7e8e7712

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000