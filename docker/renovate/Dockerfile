FROM renovate/renovate:24.9.0-slim@sha256:1f43c4caa9514f0a645b56c9397f0513ebbd2d971f86f2b2a88750804e0f21f3

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000