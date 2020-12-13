FROM renovate/renovate:24.2.4-slim@sha256:29f78c9092e0f5690f109a88e56ddbf78c3984e07119a89d1dff674ffdd9169d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000