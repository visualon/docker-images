FROM renovate/renovate:24.103.1-slim@sha256:bbba19c328faf2aa6c38e6855f328f94d4cf961c63f2c57ed89265990e04cecb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000