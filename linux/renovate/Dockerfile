FROM renovate/renovate:24.75.1-slim@sha256:7853edc75d785d98f0d9a0988cbe1b1a8fe55902f3c62ce16e88055b49f24a87

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000